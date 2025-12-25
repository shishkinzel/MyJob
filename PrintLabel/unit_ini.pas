unit unit_ini;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSectionPathPrint = 'SectionPathPrint';  //секция для хранения пути к принтерам
    csIniSectionVersion = 'SectionVersion';     // секция хранения номера версии
  {Section : csIniSectionPathPrint}


type
  TIniOptions = class(TObject)
  private
  public
  // опишем переменные
    f_print_924: string;
    f_print_940: string;
    f_print_908: string;
    f_print_2824: string;
    f_print_576: string;
    f_print_160: string;

    f_vesrion : string;        // переменная версии устройств

    procedure LoadSettings(Ini: TMemIniFile);
    procedure SaveSettings(Ini: TMemIniFile);

    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

  end;

var
  IniOptions: TIniOptions = nil;

implementation

uses
  FPrintSection;



procedure TIniOptions.LoadSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
    f_print_924  := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_924', '\\PrintServer\TE200_924');
    f_print_940  := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_940', '\\PrintServer\TE200_940');
    f_print_908  := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_908', '\\PrintServert\TE200_908');
    f_print_576  := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_576', '\\PrintServer\TE200_576');
    f_print_160  := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_160', '\\PrintServer\TE200_160');
    f_print_2824 := Ini.ReadString(csIniSectionPathPrint, 'Print_TLP 2824', '\\PrintServer\TLP 2824');
    // версия устройства
    f_vesrion    := Ini.ReadString(csIniSectionVersion, 'Actual version', 'v 3.9.10');

  end;
end;

procedure TIniOptions.SaveSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
    // принтеры
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_160', f_print_160);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_924', f_print_924);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_940', f_print_940);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_908', f_print_908);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_576', f_print_576);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TLP 2824', f_print_2824);
//  // mac-адрес
//    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_atlanta', f_LastMAC_atlanta);
//    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_topaz', f_LastMAC_topaz);
//    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_ksk', f_LastMAC_ksk);
//    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_corundum', f_LastMAC_corundum);

  // версия устройства
    Ini.WriteString(csIniSectionVersion, 'Actual version', f_vesrion);
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
