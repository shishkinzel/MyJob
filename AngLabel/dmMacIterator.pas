unit dmMacIterator;

interface

uses
   System.StrUtils, System.SysUtils, System.Classes;

type
  TDataModuleMacIterator = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }

    function HexStrToInt(const str: string): Integer;
    procedure IncArrayOne(var inArray: array of Byte);
    function ArrayToString(var inArray: array of Byte): string;
    function ArrayToStringShort(var inArray: array of Byte): string;
    function ArrayToStringLong(var inArray: array of Byte): string;
    function ArrayToStringLongMAC(var inArray: array of Byte): string;
    {-------------------------------------------------------------------------------
  Функция: ReverseDate   - переворачивает дату в формате dd.mm.yyyy -> yyyy.mm.dd
  Автор:    igor
  Дата:  2023.10.13
  Входные параметры: var v_date : string
  Результат:    string
-------------------------------------------------------------------------------}
    function ReverseDate(var v_date : string) : string;
  end;



var
  DataModuleMacIterator: TDataModuleMacIterator;

implementation

uses
  MacAdressIterator, IdGlobal;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}


function TDataModuleMacIterator.HexStrToInt(const str: string): Integer;
begin
  Result := StrToIntDef('$' + str, 0);
end;

function TDataModuleMacIterator.ArrayToString(var inArray: array of Byte): string;
var
s : string;
i : Integer;
begin
s := ' | 68 : EB : C5 : ';
   for I := 0 to 2 do
   begin
     s := s  + inArray[i].ToHexString + ' : ';

   end;
        Delete(s, 32, 5);
   Result :=s + ' | ';
end;

function TDataModuleMacIterator.ArrayToStringShort(var inArray: array of Byte): string;
var
s : string;
i : Integer;
begin
s := '';
   for I := 0 to 2 do
   begin
     s :=s + inArray[i].ToHexString + ':';

   end;
//        Delete(s, 16, 5);
         Delete(s, 9, 1);
   Result := s;
end;

function TDataModuleMacIterator.ArrayToStringLong(var inArray: array of Byte): string;
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

function TDataModuleMacIterator.ArrayToStringLongMAC(var inArray: array of Byte): string;
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

 procedure TDataModuleMacIterator.IncArrayOne(var inArray: array of Byte);
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

function TDataModuleMacIterator.ReverseDate(var v_date: string): string;
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

