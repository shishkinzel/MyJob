unit storage_mac_ini;

interface
uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSectionMAC_Last = 'SectionMAC_Last';        // секция хранения последнего mac-адреса
  csIniSectionMAC_Date = 'SectionMAC_Date';        // секция хранения валидной даты
  {Section : csIniSectionPathPrint}

type
  TIniOptions = class(TObject)
  private
  public
    f_LastMAC_atlanta: string;      // переменная mac-адреса  семейство Атланта
    f_LastMAC_topaz: string;        // переменная mac-адреса  семейство Топаз
    f_LastMAC_ksk: string;          // переменная mac-адреса  семейство КСК
    f_LastMAC_corundum: string;     // переменная mac-адреса  семейство Корунд

  // переменные времени валидации
    f_date_valid: string;
    f_time_valid: string;

    procedure LoadSettings(Ini: TMemIniFile);
    procedure SaveSettings(Ini: TMemIniFile);

    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

  end;

var
  IniOptions_mac: TIniOptions = nil;

implementation

uses
  MacAdressIterator;

procedure TIniOptions.LoadSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
// mac-адрес
    f_LastMAC_atlanta := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_atlanta', '00:4C:1B');
    f_LastMAC_topaz := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_topaz', '28:67:C0');
    f_LastMAC_ksk := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_ksk', '30:62:A8');
    f_LastMAC_corundum := Ini.ReadString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_corundum', '38:00:00');
//  секция даты
    f_date_valid := Ini.ReadString(csIniSectionMAC_Date, 'Дата последней валидации', '01.01.2000');
    f_date_valid := Ini.ReadString(csIniSectionMAC_Date, 'Время последней валидации', '00:00:00');
  end;
end;

procedure TIniOptions.SaveSettings(Ini: TMemIniFile);
begin
  if Ini <> nil then
  begin
  // mac-адрес
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_atlanta', f_LastMAC_atlanta);
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_topaz', f_LastMAC_topaz);
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_ksk', f_LastMAC_ksk);
    Ini.WriteString(csIniSectionMAC_Last, 'MAC_LastOneIncrement_corundum', f_LastMAC_corundum);
//  секция даты
    Ini.WriteString(csIniSectionMAC_Date, 'Дата последней валидации', f_date_valid);
    Ini.WriteString(csIniSectionMAC_Date, 'Время последней валидации', f_date_valid);
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
  IniOptions_mac := TIniOptions.Create;


finalization
  IniOptions_mac.Free;

end.

