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
  private
    { Private declarations }
  public
    { Public declarations }
  end;
// прописываем процедуры и функции


function HexStrToInt(const str: string): Integer;
function ArrayToString(var inArray: array of Byte): string;
function ArrayToString_MAC(var inArray: array of Byte): string;


procedure IncArrayOne(var inArray: array of Byte);
procedure Print_mac_id (const s1,s2 : string; const k1,k2 : Integer; fdtbl : TFDMemTable);
var
  dbmPrintLabel: TdbmPrintLabel;

implementation

uses
  FMain , IdGlobal;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

// преобразование тип строки в целочисленный тип шестнадцатиричный - $
function HexStrToInt(const str: string): Integer;
begin
  Result := StrToIntDef('$' + str, 0);

end;


// работа с массивом байт - для mac-адреса
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
      raise Exception.Create('Недопустимое значение массива');
  end;
  inArray[2] := T0;
  inArray[1] := T1;
  inArray[0] := T2;
end;


// функции работы с mac-адрессом
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
   Result := '68:EB:C5:' + s + '|';
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

// процедура вычисления mac-адреса с серийным номером и запись, конвертация в штрих код
// и qr-код и запись в таблицу для формирования отчета печати этикетки.
procedure Print_mac_id(const s1, s2: string; const k1, k2: Integer; fdtbl: TFDMemTable);
var
  f_mac, f_id, f_id_long, f_id_small: string;
  f_id_small_all, f_id_long_all : string;
  fstep, fcount: Integer;
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
  f_id_long := '';
  f_id_small := '';
  f_id := s1;
  f_mac := s2;
  fstep := k1;
  fcount := k2;
// отделяем последнюю триаду для работы с ней
  for i := 0 to 2 do
  begin
    tmp_id_1 := Trim(Fetch(f_id, '_'));
    f_id_long := f_id_long + tmp_id_1 + ' ';
    f_id_small := f_id_small + tmp_id_1;
  end;
// берем последнюю триаду проверяем на выход из диапазона 999
  f_id_num := StrToIntDef(f_id, -1000);
  if ((f_id_num + fcount) > 999) or ((f_id_num + fcount) < 0) then
  begin
    raise EIntOverflow.Create('Нарушение диапазона ввода числа устройств' + #10#13 + 'Или ошибка ввода серийного номера');
  end;
// работаем с mac-адресом
//  f_mac := Trim(Fetch(f_mac, cnMAC));
    Delete(f_mac, 1, 9);
  for i := 0 to 1 do
  begin
    fbit[i] := HexStrToInt(Trim(Fetch(f_mac, ':')));
  end;
  fbit[2] := HexStrToInt(f_mac);
// настраиваем таблицу
  fdtbl.Close;
  fdtbl.Open;
  fdtbl.First;
// организация цикла - по количеству устройств
  for i := 0 to fcount - 1 do
  begin
    fdtbl.Append;
// серийные номера
    f_id_num := f_id_num + i;
    f_id_small_all := f_id_small + f_id_num.ToString;
    f_id_long_all := f_id_long + f_id_num.ToString;
    fdtbl.Fields[0].AsString := f_id_small_all;
    fdtbl.Fields[3].AsString := f_id_long_all;
// создаем поток и трансформируем в barcode
    // большой штрих-код
    dbmPrintLabel.brcdPrintLabel.InputText := f_id_small_all;
    dbmPrintLabel.brcdPrintLabel.Height := 15;
    dbmPrintLabel.brcdPrintLabel.Symbology := syCode128;
    dbmPrintLabel.brcdPrintLabel.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdtbl.Fields[2] as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;

    // малый штрих-код
    dbmPrintLabel.brcdPrintLabel.InputText := f_id_long_all;
    dbmPrintLabel.brcdPrintLabel.Height := 25;
    dbmPrintLabel.brcdPrintLabel.Scale := 0.5;
    dbmPrintLabel.brcdPrintLabel.Symbology := syCode128;
    dbmPrintLabel.brcdPrintLabel.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdtbl.Fields[1] as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
// mac-адреса для записи в таблицу fdtbl

  end;

end;




end.

