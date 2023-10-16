unit FdbmPrintLabel;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Barcode;

type
  TdbmPrintLabel = class(TDataModule)
    fdmtblPrint: TFDMemTable;
    brcdPrintLabel: TBarcode;
    ssPrintid: TStringField;
    blPrintid_blob: TBlobField;
    blPrintid_blob_scale: TBlobField;
    ssPrintid_space: TStringField;
    ssPrintmac: TStringField;
    ssPrintmac_extended: TStringField;
    ssPrintid_mac: TStringField;
    blid_mac_blob: TBlobField;
    fdmtblReport: TFDMemTable;
    fdmtblReportf0: TStringField;
    fdmtblReportf1: TStringField;
    fdmtblReportf2: TStringField;
    fdmtblReportf3: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
// ����������� ��������� � �������


function HexStrToInt(const str: string): Integer;
function ArrayToString(var inArray: array of Byte): string;
function ArrayToString_MAC(var inArray: array of Byte): string;
{-------------------------------------------------------------------------------
  �������: ReciveDate
  �����:    igor
  ����:  2023.10.16
  ������� ���������: var v_date : string
  ���������:    string
-------------------------------------------------------------------------------}
function ReciveDate(var v_date : string) : string;

procedure IncArrayOne(var inArray: array of Byte);
procedure Print_mac_id (const s1,s2 : string; const k1,k2 : Integer; fdtbl : TFDMemTable);
procedure ClearArr(var f_arr : array of string);
var
  dbmPrintLabel: TdbmPrintLabel;

implementation

uses
  FMain , FTest, IdGlobal;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

// �������������� ��� ������ � ������������� ��� ����������������� - $
function HexStrToInt(const str: string): Integer;
begin
  Result := StrToIntDef('$' + str, 0);

end;


// ������ � �������� ���� - ��� mac-������
  procedure IncArrayOne(var inArray: array of Byte);
const
  arrByte = 256;
var
  T0, T1, T2: Integer;
begin
  T0 := inArray[2];
  T1 := inArray[1];
  T2 := inArray[0];

  Inc(T0);
  if T0 = arrByte then
  begin
    Inc(T1);
    T0 := 0;
    if T1 = arrByte then
    begin
      Inc(T2);
      T1 := 0;
    end;
    if T2 = arrByte then
      raise Exception.Create('������������ �������� �������');
  end;
  inArray[2] := T0;
  inArray[1] := T1;
  inArray[0] := T2;
end;


// ������� ������ � mac-��������
function ArrayToString(var inArray: array of Byte): string;
var
s : string;
i : Integer;
begin
s := '';
   for I := 0 to 2 do
   begin
     s :=s + inArray[i].ToHexString + ':';

   end;
        Delete(s, 9, 1);
   Result := '68:EB:C5:' + s;
end;

function ArrayToString_MAC(var inArray: array of Byte): string;
var
s : string;
i : Integer;
begin
s := '';
   for I := 0 to 2 do
   begin
     s :=s + inArray[i].ToHexString + ':';

   end;
        Delete(s, 9, 1);
   Result := '--mac ' + '68:EB:C5:' + s;
end;

// ��������� ���������� mac-������ � �������� ������� � ������, ����������� � ����� ���
// � qr-��� � ������ � ������� ��� ������������ ������ ������ ��������.
procedure Print_mac_id(const s1, s2: string; const k1, k2: Integer; fdtbl: TFDMemTable);
var
  f_mac, f_id, f_id_long, f_id_small: string;
  f_id_small_all, f_id_long_all : string;
  rangeLast, f_id_string : string;
  fstep, fcount: Integer;
  fstep_flag : Boolean;
  f_id_num: Integer;
  fbit: array[0..2] of Byte;
  fd_tblPrint: TFDMemTable;
  i, j, k: Integer;
  tmp_id_1, tmp_id_2, tmp_mac_1, tmp_mac_2: string;
  barCodeStream : TMemoryStream;
const
  cnMAC = '68:EB:C5:';
  mac = ' --mac ';
  serial = ' --serial ';
begin
// ������� �����         !!!! �������� ������ � �������� BARCODE ��������� ����������
     // ����������� FastReport
//  barCodeStream := TMemoryStream.Create;

  f_id_long := '';
  f_id_small := '';
  rangeLast := '';
  f_id := s1;
  f_mac := s2;
  fstep := k1;
  fcount := k2;
  if fstep = 1 then
    fstep_flag := False
  else
    fstep_flag := True;

// �������� ��������� ������ ��� ������ � ���
  for i := 0 to 2 do
  begin
    tmp_id_1 := Trim(Fetch(f_id, '_'));
    f_id_long := f_id_long + tmp_id_1 + ' ';
    f_id_small := f_id_small + tmp_id_1;
  end;
// ����� ��������� ������ ��������� �� ����� �� ��������� 999
  f_id_num := StrToIntDef(f_id, -1000);
  if ((f_id_num + fcount) > 999) or ((f_id_num + fcount) < 0) then
  begin
    barCodeStream.Free;
    raise EIntOverflow.Create('��������� ��������� ����� ����� ���������!' + #10#13 + '��� ������ ����� ��������� ������!');

  end;
// �������� � mac-�������
    Delete(f_mac, 1, 9);
  for i := 0 to 1 do
  begin
    fbit[i] := HexStrToInt(Trim(Fetch(f_mac, ':')));
  end;
  fbit[2] := HexStrToInt(f_mac);
// ����������� �������
  fdtbl.Close;
  fdtbl.Open;
  fdtbl.First;
// ����������� ����� - �� ���������� ���������
  for i := 0 to fcount - 1 do
  begin
    f_id_small_all := '';
    f_id_long_all := '';
    fdtbl.Append;
// �������� ������
     f_id_string := Format('%.3d', [f_id_num]);
    f_id_small_all := f_id_small + f_id_string;
    f_id_long_all := f_id_long + f_id_string;
    fdtbl.Fields[0].AsString := f_id_small_all;
    fdtbl.Fields[3].AsString := f_id_long_all;
// ������� ����� � �������������� � barcode
    // ������� �����-���
//    dbmPrintLabel.brcdPrintLabel.InputText := f_id_small_all;
//    dbmPrintLabel.brcdPrintLabel.Height := 15;
//    dbmPrintLabel.brcdPrintLabel.Symbology := syCode128;
//    dbmPrintLabel.brcdPrintLabel.Bitmap.SaveToStream(barCodeStream);
//    barCodeStream.Position := 0;
//    (fdtbl.Fields[2] as TBlobField).LoadFromStream(barCodeStream);
//    barCodeStream.Clear;

    // ����� �����-���
//    dbmPrintLabel.brcdPrintLabel.InputText := f_id_long_all;
//    dbmPrintLabel.brcdPrintLabel.Height := 25;
//    dbmPrintLabel.brcdPrintLabel.Scale := 0.5;
//    dbmPrintLabel.brcdPrintLabel.Symbology := syCode128;
//    dbmPrintLabel.brcdPrintLabel.Bitmap.SaveToStream(barCodeStream);
//    barCodeStream.Position := 0;
//    (fdtbl.Fields[1] as TBlobField).LoadFromStream(barCodeStream);
//    barCodeStream.Clear;
// ����������� �������� ����� �� ������� - ��������� ������
    Inc(f_id_num);
// mac-������ ��� ������ � ������� fdtbl
    fdtbl.Fields[4].AsString := ArrayToString(fbit);
    if fstep_flag then
    begin
      while fstep > 0 do
      begin
        IncArrayOne(fbit);
        Dec(fstep);
        if fstep = 1 then
        begin
          rangeLast := '-' + IntToHex(fbit[2]);
          fdtbl.Fields[5].AsString := fdtbl.Fields[4].AsString + rangeLast;
        end;
      end;

      fstep := k1;
    end
    else
    begin
      fdtbl.Fields[5].AsString := ArrayToString(fbit);
      IncArrayOne(fbit);
    end;

    fdtbl.Fields[6].AsString := mac + fdtbl.Fields[4].AsString + serial + fdtbl.Fields[0].AsString;
      // qr-code ��� ������� �����
//    dbmPrintLabel.brcdPrintLabel.InputText := fdtbl.Fields[6].AsString;
//    dbmPrintLabel.brcdPrintLabel.Height := 50;
//    dbmPrintLabel.brcdPrintLabel.Scale := 1;
//    dbmPrintLabel.brcdPrintLabel.Symbology := syQRCode;
//    dbmPrintLabel.brcdPrintLabel.Bitmap.SaveToStream(barCodeStream);
//    barCodeStream.Position := 0;
//    (fdtbl.Fields[7] as TBlobField).LoadFromStream(barCodeStream);
//    barCodeStream.Clear;
// ������������ �� ������� �� ���
    fdtbl.Next;
  end;
//  barCodeStream.Free;
end;
// ������ ��������� ������

procedure ClearArr(var f_arr: array of string);
var
  i: Integer;
begin
  for i := 0 to Length(f_arr) - 1 do
    f_arr[i] := '';
end;

function ReciveDate(var v_date: string): string;
var
  f_arr: array[0..2] of string;
  tmp: string;
  i: Integer;
begin
  tmp := v_date;
  for i := 0 to 2 do
  begin
    f_arr[i] := Trim(Fetch(tmp, '.'))
  end;

  tmp := '';

  for i := 2 downto 0 do
  begin
    tmp := tmp + f_arr[i] + '.';
  end;

  Delete(tmp, System.Length(tmp), 1);

  Result := tmp;

end;


end.



