unit unit_ini;

interface
uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSectionPathPrint = 'SectionPathPrint';  //секция для хранения пути к принтерам
  csIniSectionAccess = 'SectionAcess';        // секция доступа
  csIniSectionMAC_Last = 'SectionMAC_Last';        // секция хранения последнего mac-адреса

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
  f_print_576 : string;

  f_access : string;         // переменная доступа

  f_LastMAC_atlanta : string;      // переменная mac-адреса  семейство Атланта
  f_LastMAC_topaz : string;        // переменная mac-адреса  семейство Топаз
  f_LastMAC_ksk : string;          // переменная mac-адреса  семейство КСК
  f_LastMAC_corundum : string;     // переменная mac-адреса  семейство Корунд

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
    f_print_924 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_924', '\\PrintServer\TE200_924');
    f_print_940 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_940', '\\PrintServer\TE200_940');
    f_print_908 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_908', '\\PrintServer\TE200_908');
    f_print_576 := Ini.ReadString(csIniSectionPathPrint, 'Print_TE200_576', '\\PrintServer\TE200_576');
    f_print_2824 := Ini.ReadString(csIniSectionPathPrint, 'Print_TLP 2824', '\\PrintServer\TLP 2824');
// защита приложения
    f_access := Ini.ReadString(csIniSectionAccess, 'Library_access', '000000000000');
// mac-адрес
    f_LastMAC_atlanta := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_atlanta', '00:4C:1B');
    f_LastMAC_topaz := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_topaz', '28:67:C0');
    f_LastMAC_ksk := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_ksk', '30:62:A8');
    f_LastMAC_corundum := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_corundum', '38:00:00');
  end;
end;

procedure TIniOptions.SaveSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
  // принтеры
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_924', f_print_924);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_940', f_print_940);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_908', f_print_908);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TE200_576', f_print_576);
    Ini.WriteString(csIniSectionPathPrint, 'Print_TLP 2824', f_print_2824);
  // mac-адрес
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_atlanta', f_LastMAC_atlanta);
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_topaz', f_LastMAC_topaz);
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_ksk', f_LastMAC_ksk);
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_corundum', f_LastMAC_corundum);
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

