unit unit_ini;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSectionPathPrint = 'SectionPathPrint';  //секция для хранения пути к принтерам

  {Section : csIniSectionPathPrint}


type
  TIniOptions = class(TObject)
  private
  public
  // опишем переменные
  f_print_924 : string;
  f_print_940 : string;
  f_print_2824 : string;
  f_print_908 : string;

    procedure LoadSettings(Ini: TMemIniFile);
    procedure SaveSettings(Ini: TMemIniFile);
    
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

  end;

var
  IniOptions: TIniOptions = nil;

implementation

uses
  MacAdressIterator;

procedure TIniOptions.LoadSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
  f_print_924 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_924','\\AngWork_print\TE200_924');
  f_print_940 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_940','\\AngWork_print\TE200_940');
  f_print_908 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_908','\\AngWork_print\TE200_908');
  f_print_2824 := Ini.ReadString(csIniSectionPathPrint, 'Print_TLP 2824','\\AngWork_print\TLP 2824');
  end;
end;

procedure TIniOptions.SaveSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
  end;
end;

procedure TIniOptions.LoadFromFile(const FileName: string);
var
  Ini: TMemIniFile;
begin
  Ini := TMemIniFile.Create(FileName);
  try
    LoadSettings(Ini);
  finally
    Ini.Free;
  end;
end;

procedure TIniOptions.SaveToFile(const FileName: string);
var
  Ini: TMemIniFile;
begin
  Ini := TMemIniFile.Create(FileName);
  try
    SaveSettings(Ini);
    Ini.UpdateFile;
  finally
    Ini.Free;
  end;
end;

initialization
  IniOptions := TIniOptions.Create;

finalization
  IniOptions.Free;

end.

