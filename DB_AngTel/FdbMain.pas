unit FdbMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Win.ADODB;

type
  TdbMain = class(TDataModule)
    db_memTab_Clobal: TFDMemTable;
    ss_memTab_Clobal_name_dev: TStringField;
    db_memTab_Clobal_date_dev: TDateField;
    db_memTab_Clobal_id_dev: TLargeintField;
    db_memTab_Clobal_mac_dev: TStringField;
    db_memTab_Working: TFDMemTable;
    dm_memTab_Working_name_dev: TStringField;
    dm_memTab_Working_date_dev: TDateField;
    dm_memTab_Working_id_dev: TLargeintField;
    dm_memTab_Working_mac_dev: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
// ����������� ��������� � �������


function HexStrToInt(const str: string): Integer;
function ArrayToString(var inArray: array of Byte): string;
//function ArrayToString_MAC(var inArray: array of Byte): string;


procedure IncArrayOne(var inArray: array of Byte);
procedure Print_mac_id (const s1,s2,s3 : string; const k1,k2 : Integer; const f_date : TDate;
fdtbl : TFDMemTable; out arr_Dev : array of string);
procedure Fill_Tab(arr_Dev : array of string; f_fill_tab : TADOTable);
procedure ClearArr(var f_arr : array of string);
var
  dbMain: TdbMain;

implementation

uses
IdGlobal, FMain, FGrid, FTest;

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

// ������ ��������� ������

procedure ClearArr(var f_arr: array of string);
var
  i: Integer;
begin
  for i := 0 to Length(f_arr) - 1 do
    f_arr[i] := '';
end;

// ��������� ���������� mac-������ � �������� ������� � ������, ����������� � ����� ���
// � qr-��� � ������ � ������� ��� ������������ ������ ������ ��������.
procedure Print_mac_id(const s1, s2, s3 : string; const k1, k2: Integer; const f_date : TDate;
 fdtbl: TFDMemTable; out arr_Dev : array of string);
var
  arr_DB : array[0 .. 5] of string ;
  fs_date : TDate;

  f_mac, f_id, f_id_long, f_id_small, f_mac_adv : string;
  f_id_small_all, f_id_long_all : string;
  rangeLast, f_id_string : string;
  fstep, fcount: Integer;
  fstep_flag : Boolean;
  f_id_num: Integer;
  fbit: array[0..2] of Byte;
  fd_tblPrint: TFDMemTable;
  i, j, k: Integer;
  tmp_id_1, tmp_id_2, tmp_mac_1, tmp_mac_2: string;

const
  cnMAC = '68:EB:C5:';
begin
//  for i := 0 to Length(arr_DB) - 1 do
//    arr_DB[i] := '';
  fs_date := f_date;


  f_id_long := '';
  f_id_small := '';
  rangeLast := '';

  f_id := s1;
  f_mac := s2;
  fstep := k1;
  fcount := k2;
// ��������� ���� ���� mac-������
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
    raise EIntOverflow.Create('��������� ��������� ����� ����� ���������!' + #10#13 + '��� ������ ����� ��������� ������!');
  end;
// �������� � mac-�������
    Delete(f_mac, 1, 9);  // ������� ������ 9 ��������  <68:EB:C5:>
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
// ������������ ����������
    fdtbl.Fields[0].AsString := s3;  // ������ � ������� ������������ ����������
// �������� ������
    f_id_string := Format('%.3d', [f_id_num]);
    f_id_small_all := f_id_small + f_id_string;  // �������� ����� ��� �������� �� ������
    f_id_long_all := f_id_long + f_id_string;    // �������� ����� � ��������� �� ������
    fdtbl.Fields[1].AsString := f_id_small_all;  // ������ � �������
//    fdtbl.Fields[3].AsString := f_id_long_all;

// ����������� �������� ����� �� ������� - ��������� ������
    Inc(f_id_num);
// mac-������ ��� ������ � ������� fdtbl
    f_mac_adv := ArrayToString(fbit);
    if fstep_flag then
    begin
      while fstep > 0 do
      begin
        IncArrayOne(fbit);
        Dec(fstep);
        if fstep = 1 then
        begin
          rangeLast := '-' + IntToHex(fbit[2]);
          fdtbl.Fields[2].AsString := f_mac_adv + rangeLast;
        end;
      end;

      fstep := k1;
    end
    else
    begin
      fdtbl.Fields[2].AsString := f_mac_adv;
      IncArrayOne(fbit);
    end;

// ������������ �� ������� �� ���
    fdtbl.Next;
  end;

// ��������� ������ ��� ����� ������� arr_Dev

// ������� ������
  ClearArr(arr_DB);
// ��������� ������
  arr_DB[0] := s3;
  fdtbl.First;
  arr_DB[1] := fdtbl.Fields[1].AsString;
  arr_DB[3] := fdtbl.Fields[2].AsString;
  fdtbl.Last;
  arr_DB[2] := fdtbl.Fields[1].AsString;
  arr_DB[4] := fdtbl.Fields[2].AsString;

  arr_DB[5] := DateToStr(fs_date);

  for i := 0 to 5 do
    arr_Dev[i] := arr_DB[i];

end;

procedure Fill_Tab(arr_Dev: array of string; f_fill_tab : TADOTable);
var
  i: Integer;
  arr_DB: array[0..5] of string;
begin
  with f_fill_tab do
  begin
    Close;
    ReadOnly := False;
    Open;
    Last;

    Append;
  end;

  for i := 0 to 5 do
  begin
    f_fill_tab.Fields[i + 1].AsString := arr_Dev[i];
  end;

  f_fill_tab.Post;
//  f_fill_tab.Close;
//  f_fill_tab.ReadOnly := True;
end;

end.



