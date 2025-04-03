unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator, FShild,
  frmFastReportMac, FFRBigLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, System.ImageList, Vcl.ImgList,
  Data.DB, Barcode, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus,
  FFRSmallLabel, FListDevece, frmFReportIDandMAC, frmFReportBarCodeLong,
  FShowSoft, frmFReportGen_QR, FfrAdvacedLabel, FStickCheck, FFamile_mac,
  FMessage, Vcl.ComCtrls, FMarking, FireDAC.Stan.StorageJSON, frmFastReportList,
  fTest, Vcl.DBCtrls;

type
  TfrmMAC = class(TForm)
    lblTitle: TLabel;
    lblMAC: TLabel;
    lblID: TLabel;
    lblDevice: TLabel;
    edtDevice: TEdit;
    lblModule: TLabel;
    medtModule: TMaskEdit;
    medtDate: TMaskEdit;
    lblDate: TLabel;
    medtGroup: TMaskEdit;
    lblNumber: TLabel;
    medtNumber: TMaskEdit;
    lblGruop: TLabel;
    lblHighOrderBit: TLabel;
    medtBit_4: TMaskEdit;
    lblColon_1: TLabel;
    medtBit_5: TMaskEdit;
    Label1: TLabel;
    medtBit_6: TMaskEdit;
    lblStepIterator: TLabel;
    lblQuantity: TLabel;
    btnStart: TButton;
    btnApply: TButton;
    seStepIterator: TSpinEdit;
    seQuantity: TSpinEdit;
    btnRestart: TButton;
    mmMAC: TMainMenu;
    mniChoice: TMenuItem;
    mniPrintMac: TMenuItem;
    mniIterator: TMenuItem;
    mniReset: TMenuItem;
    mniExit: TMenuItem;
    mniReport: TMenuItem;
    mnifrView: TMenuItem;
    mniExport: TMenuItem;
    mnifrPrint: TMenuItem;
    mniSeparator3: TMenuItem;
    mniQuit: TMenuItem;
    mniSeparator2: TMenuItem;
    mniSeparator1: TMenuItem;
    mniApply: TMenuItem;
    fdmtblMac: TFDMemTable;
    fdmtblMacNumber: TStringField;
    fdmtblMacMACadress: TStringField;
    fdmtblMacidnumber: TStringField;
    pdf1: TMenuItem;
    xml1: TMenuItem;
    doc1: TMenuItem;
    fdmtblTitle: TFDMemTable;
    fdmtblTitlenameDevice: TStringField;
    fdmtblTitlefirstOrderBit: TStringField;
    fdmtblTitlestepIterator: TStringField;
    fdmtblTitlefirstIdDevice: TStringField;
    fdmtblTitlequantityDevice: TStringField;
    lblPrintMac: TLabel;
    brcdMAC: TBarcode;
    fdmtblBarCode: TFDMemTable;
    fdmtblBarCodeBarCodeMAC: TBlobField;
    fdmtblBarCodeBarCodeId: TBlobField;
    smlntfldBarCodeNumber: TSmallintField;
    intgrfldTitleStepPrintBarCode: TIntegerField;
    fdBarCodeLong: TFDMemTable;
    fdBarCodeLongnumber: TIntegerField;
    fdBarCodeLongBarCodeLong: TBlobField;
    mniBarCodeLong: TMenuItem;
    mniApplyBarCodeLong: TMenuItem;
    mniPreviewLong: TMenuItem;
    mniSeparator4: TMenuItem;
    mniExportBarCodeLong: TMenuItem;
    mniPrintBarCodeLong: TMenuItem;
    mniiDOCBarCodeLong: TMenuItem;
    mniPDFBarCodeLong: TMenuItem;
    mniXMLBarCodeLong: TMenuItem;
    strngfldBarCodeLongMacAndId: TStringField;
    fdmtblLoadSoft: TFDMemTable;
    fdmtblLoadSoftnumber: TIntegerField;
    fdmtblLoadSoftLoadSoft: TBlobField;
    fdmtblLoadSoftMacAndId: TStringField;
    mniFrReset: TMenuItem;
    mniResetBarCodeLong: TMenuItem;
    mniQRIDMAC: TMenuItem;
    mniApplay_IDandMAC: TMenuItem;
    mniIDandMAC: TMenuItem;
    mniShow_IDandMAC: TMenuItem;
    mniExport_IDandMAC: TMenuItem;
    mniPrint_IDandMAC: TMenuItem;
    mniReset_IDandMAC: TMenuItem;
    fdIDandMAC: TFDMemTable;
    fdIDandMACnumber: TIntegerField;
    fdIDandMACQR_ID: TBlobField;
    fdIDandMACQR_MAC: TBlobField;
    fdIDandMACText_IDMAC: TStringField;
    blbfldTitlehardWare: TBlobField;
    mniDOC_IDandMAC: TMenuItem;
    mniXML_IDandMAC: TMenuItem;
    mniPDF_IDandMAC: TMenuItem;
    mniGen_QR: TMenuItem;
    mniShow_OR: TMenuItem;
    mniSeparatorGen_QR: TMenuItem;
    mniGen_QR_Apply: TMenuItem;
    mniGen_QR_ShowPrev: TMenuItem;
    mniSeparatorGen_QR2: TMenuItem;
    mniGen_QR_Print: TMenuItem;
    mniGen_QR_Export: TMenuItem;
    mniGen_QR_Reset: TMenuItem;
    fmTab_Gen_OR: TFDMemTable;
    fmTab_Gen_ORnumber: TIntegerField;
    fmTab_Gen_ORQR_Text_string: TStringField;
    fmTab_Gen_ORQR_Text_Blob: TBlobField;
    fmTab_Gen_OROther: TStringField;
    blbfldTab_Gen_ORusb: TBlobField;
    blbfldTab_Gen_ORpyton: TBlobField;
    mniGen_QR_PDF: TMenuItem;
    mniGen_QR_DOC: TMenuItem;
    mniGen_QR_XML: TMenuItem;
    chkAdvanceSetting: TCheckBox;
    chkPrintTab: TCheckBox;
    edtMod: TEdit;
    mniLabel: TMenuItem;
    mni_LabelBig_TE200_160: TMenuItem;
    mniLabelSmall: TMenuItem;
    mniShowBig: TMenuItem;
    mniPrintBig: TMenuItem;
    mniShowSmall: TMenuItem;
    mniPrintSmall: TMenuItem;
    fdmtbLabel: TFDMemTable;
    strngfldLabelsn: TStringField;
    tbLabelbcBig: TBlobField;
    tbLabelbcSmall: TBlobField;
    mniShild: TMenuItem;
    mniShowShild: TMenuItem;
    mniPrintShild: TMenuItem;
    lblSGP: TLabel;
    mniListDevice: TMenuItem;
    tbLabellmac: TStringField;
    mniLabelAdvance: TMenuItem;
    mniLb58_60: TMenuItem;
    mniLb100_72: TMenuItem;
    mniLb100_150: TMenuItem;
    mniLbSep1: TMenuItem;
    mniLbReset1: TMenuItem;
    mniLbSep2: TMenuItem;
    mniLbReset2: TMenuItem;
    mniLbShow_58_60: TMenuItem;
    mniLbShow_100_72: TMenuItem;
    mniLbShow_100_150: TMenuItem;
    mniLbPrint58_50: TMenuItem;
    mniLbPrint100_72: TMenuItem;
    mniLbPrint100_150: TMenuItem;
    pmMacAddress: TPopupMenu;
    pmmiClose: TMenuItem;
    mniNStick: TMenuItem;
    mniNLabel30x10: TMenuItem;
    mniNSeparator_stick: TMenuItem;
    mniNStick_reset: TMenuItem;
    mniNSticker_show: TMenuItem;
    mniNSticker_printer: TMenuItem;
    mni_43_25: TMenuItem;
    mni_sh_43_25: TMenuItem;
    mni_Pr_43_25: TMenuItem;
    mniLbSep3: TMenuItem;
    mniShild_43_25_908: TMenuItem;
    mni_sh_shild_43_25: TMenuItem;
    mni_Pr_shild_43_25: TMenuItem;
    mniLbSep0: TMenuItem;
    mniLabelSmall_new: TMenuItem;
    mni_ShowSmall_new: TMenuItem;
    mni_PrintSmall_new: TMenuItem;
    mni_Shild_43_25_908_small: TMenuItem;
    mni_sh_shild_43_25_small: TMenuItem;
    mni_Pr_shild_43_25_small: TMenuItem;
    mniMarking_Separator: TMenuItem;
    mniService: TMenuItem;
    mniRange: TMenuItem;
    mniSh_range: TMenuItem;
    mniPr_range: TMenuItem;
    fdService: TFDMemTable;
    fdServicenumber: TStringField;
    mniSeparator01: TMenuItem;
    mniResetRange: TMenuItem;
    dtpMacAdress: TDateTimePicker;
    mniDate_Main: TMenuItem;
    mniDate_Apply: TMenuItem;
    mniPrint_DateSeparator1: TMenuItem;
    mniServeceSeparator1: TMenuItem;
    mniDate_Show: TMenuItem;
    mniDate_Print: TMenuItem;
    mniPrint_DateSeparator2: TMenuItem;
    mniDate_Reset: TMenuItem;
    mniDate_Calendar: TMenuItem;
    mniServeceSeparator0: TMenuItem;
    mniServece_Write_off: TMenuItem;
    mniServece_Write_off_show: TMenuItem;
    mniServece_Write_off_print: TMenuItem;
    mniNStick_Separator: TMenuItem;
    mniMarking_All: TMenuItem;
    mniMarking_lab_58x40: TMenuItem;
    mniMarking_lab_40x12: TMenuItem;
    mniMarking_lab_43x25: TMenuItem;
    mniMarking_show_58x40: TMenuItem;
    mniMarking_print_58x40: TMenuItem;
    mniMarking_show_40x12: TMenuItem;
    mniMarking_print_40x12: TMenuItem;
    mniMarking_show_43x25: TMenuItem;
    mniMarking_print_43x25: TMenuItem;
    mniMarking_Separator2: TMenuItem;
    mniMarking_Reset: TMenuItem;
    mni_msql_N5840E2001601: TMenuItem;
    mni_TE200_160_Show: TMenuItem;
    mni_TE200_160_Print: TMenuItem;
    mniModem: TMenuItem;
    mniListModem: TMenuItem;
    mniListPrint: TMenuItem;
    mniListSlave: TMenuItem;
    mniListMaster: TMenuItem;
    mniListOne: TMenuItem;
    mniListTwo: TMenuItem;
    mniLisReset: TMenuItem;
    procedure btnApplyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRestartClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pdf1Click(Sender: TObject);
    procedure xml1Click(Sender: TObject);
    procedure doc1Click(Sender: TObject);
    procedure mnifrPrintClick(Sender: TObject);
    procedure mniPrintMacClick(Sender: TObject);
    procedure mniIteratorClick(Sender: TObject);
    procedure mniExitClick(Sender: TObject);
    procedure mniApplyBarCodeClick(Sender: TObject);
    procedure mniPreviewLongClick(Sender: TObject);
    procedure mniPrintBarCodeLongClick(Sender: TObject);
    procedure mniPDFBarCodeLongClick(Sender: TObject);
//    procedure mniShowApplyClick(Sender: TObject);
    procedure mniApplay_IDandMACClick(Sender: TObject);
    procedure mniShow_IDandMACClick(Sender: TObject);
    procedure mniPrint_IDandMACClick(Sender: TObject);
    procedure mniDOC_IDandMACClick(Sender: TObject);
    procedure mniXML_IDandMACClick(Sender: TObject);
    procedure mniPDF_IDandMACClick(Sender: TObject);
    procedure mniGen_QR_ApplyClick(Sender: TObject);
    procedure mniGen_QR_ShowPrevClick(Sender: TObject);
    procedure mniGen_QR_PrintClick(Sender: TObject);
    procedure mniShow_ORClick(Sender: TObject);
    procedure mniGen_QR_ResetClick(Sender: TObject);
    procedure medtBit_4Change(Sender: TObject);
    procedure medtBit_5Change(Sender: TObject);
    procedure medtBit_6Change(Sender: TObject);
    procedure medtModuleChange(Sender: TObject);
    procedure medtDateChange(Sender: TObject);
    procedure medtGroupChange(Sender: TObject);
    procedure medtNumberChange(Sender: TObject);
    procedure mniGen_QR_PDFClick(Sender: TObject);
    procedure mniGen_QR_DOCClick(Sender: TObject);
    procedure mniGen_QR_XMLClick(Sender: TObject);
    procedure chkAdvanceSettingClick(Sender: TObject);
    procedure chkPrintTabClick(Sender: TObject);
    procedure mniShowBigClick(Sender: TObject);
    procedure mniPrintBigClick(Sender: TObject);
    procedure mniShowSmallClick(Sender: TObject);
    procedure mniPrintSmallClick(Sender: TObject);
    procedure mniShowShildClick(Sender: TObject);
    procedure mniPrintShildClick(Sender: TObject);
    procedure mniListDeviceClick(Sender: TObject);
    procedure mnifrViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pmmiCloseClick(Sender: TObject);
    procedure mniLbShow_58_60Click(Sender: TObject);
    procedure mniNSticker_showClick(Sender: TObject);
    procedure mniNSticker_printerClick(Sender: TObject);
    procedure mni_sh_43_25Click(Sender: TObject);
    procedure mni_Pr_43_25Click(Sender: TObject);
    procedure mni_sh_shild_43_25Click(Sender: TObject);
    procedure mni_Pr_shild_43_25Click(Sender: TObject);
    procedure mni_ShowSmall_newClick(Sender: TObject);
    procedure mni_PrintSmall_newClick(Sender: TObject);
    procedure mniRangeClick(Sender: TObject);
    procedure mniSh_rangeClick(Sender: TObject);
    procedure mniPr_rangeClick(Sender: TObject);
    procedure mniResetRangeClick(Sender: TObject);
    procedure mniDate_CalendarClick(Sender: TObject);
    procedure mniDate_ApplyClick(Sender: TObject);
    procedure mniDate_ShowClick(Sender: TObject);
    procedure mniDate_PrintClick(Sender: TObject);
    procedure dtpMacAdressClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mniServece_Write_off_showClick(Sender: TObject);
    procedure mniServece_Write_off_printClick(Sender: TObject);
    procedure mni_sh_shild_43_25_smallClick(Sender: TObject);
    procedure mni_Pr_shild_43_25_smallClick(Sender: TObject);
    procedure mniMarking_show_58x40Click(Sender: TObject);
    procedure mniMarking_print_58x40Click(Sender: TObject);
    procedure mniMarking_ResetClick(Sender: TObject);
    procedure mni_TE200_160_ShowClick(Sender: TObject);
    procedure mni_TE200_160_PrintClick(Sender: TObject);
    procedure mniListShowClick(Sender: TObject);
    procedure mniListPrintClick(Sender: TObject);
    procedure mniListSlaveClick(Sender: TObject);
    procedure mniLisResetClick(Sender: TObject);
  private
    { Private declarations }
    var
      stepIteration: Integer;       // шаг итерации mac адресов
      quantity: Integer;            // количество устройств
      idModule: Integer;
      idDate: Integer;
      idGroup: Integer;
      idNumber: Integer;             // начальный номер устройства
      fileId: TextFile;              // для хранения данные двух утилит
      fileBarCode: TextFile;        // для хранения данных формирования штрих-кода
      fileBarCodeLong: TextFile;    // для хранения данных формирования длинного штрих-кода
      utilityMAC: Boolean;           // флаг утилиты false - Печать МАС- адресов
      fnameDevice: string;           // наименование устройства
      ffirstOrderBit: string;        // начальный МАС-адрес для итерации
      fstepIterator: string;         // шаг итерации МАС-адреса
      ffirstIdDevice: string;        // начальный серийный номер комплекта
      fquantityDevice: string;       // количество устройств
      stepPrintBarCode: Integer;     // шаг печати штрих-кода
      numberDeviceHigh: string;     // три старших разряда серийного номера
      fnumberDeviceHigh: string;   // три старших разряда серийного номера с пробелами между триадами
      fbitBarCode: string;           // для печати mac в barcode
      ffirstIdDeviceBarCode: string; // для печати id в barcode
      macSize: Boolean;              // флаг для печати этикеток увеличенного mac-адреса
      f_sticker: Boolean;            // флаг для печати стикера верификации
      f_FirstShowForm: Boolean;     // флаг показа формы при открытии
      f_NoShowAddres: Boolean;      // флаг отслеживания последнего адреса
      // защита программы
      f_access: string;
      // slave and master
      f_master : Boolean;          // флаг Ведущий - Ведомый

  public
  { Public declarations }
    const
      nameFile = 'id_mac_iterator.txt';
      nameBarCodeFile = 'bar_code.txt';
      nameFileBarCodeLong = 'bar_code_long.txt';

      // сообщение в табло ошибка
      f_err = 'Внимание!! Ошибка!!' + #10#13 + 'Необходимо обновить динамические библиотеки!!!' + #10#13 + 'Обратитесь к разработчику';
    var
      barCodeStream: TMemoryStream;
      idMAC: array[0..2] of Byte;
      idMACBarCode: array[0..2] of Byte;
      LowMAC: array[0..2] of Byte;           // для работы с последним адресом
// переменные для чтения конфигурации принтеров по умолчанию
      f_print_924: string;
      f_print_940: string;
      f_print_2824: string;
      f_print_908: string;
      f_print_576: string;
      f_print_160: string;

// переменные времени валидации
      f_date_valid: string;
      f_time_valid: string;

// питание устройства
      f_power: string;       // печать характеристик источника питания устройства
// переменные для хранения bar-кода
      f_syte: TBitmap;
      f_pow: TBitmap;

      f_logo: Boolean;   // флаг печати логотипа
  end;

const
  path_mac = '\\userservice\d of ServeceUser\DB\storage_mac.ini';    // путь до файла конфигурации для mac адресов
//  f_storage_mac =  'storage_mac.ini';
  // надписи семейств изделия
  cs_atlanta = 'Атланта';
  cs_topaz = 'Топаз';
  cs_ksk = 'КСК';
  cs_corundum = 'Корунд';
  // надпись при загрузки адресов
  cs_Title_famile = 'Загружаем текущий адрес семейства - ';
  // константы для сообщений
  // Заголовок
  cs_MsgTitleAttention = 'Внимание!';
  cs_MsgTitleWarning = 'Предупреждение';
  cs_MsgTitleInfo = 'Информация';
  // Сообщение
  cs_MsgShowFamile = 'Показываем окно семейства устройств!';
  cs_MsgNoShowFamile = 'Не Загружаем mac-адреса';

var
  frmMAC: TfrmMAC;
  f_iniPath: string;    // путь до файла конфигурации

  global_f_mac: Byte = 0;    // глобальная переменная код семейства mac-адреса
{
    Таблица mac-адресов, актуальная на 20/02/2024.
1.	Семейство – Atlanta – 00:4C:1B – 1F:FF:FF  : код - 0;
2.	Семейство – Топаз – 28:67:C0 – 2F:FF:FF    : код - 1;
3.	Семейство – КСК – 30:62:A8– 37:FF:FF       : код - 2;
4.	Семейство – Корунд – 38:00:00 – 3F:FF:FF   : код - 3;
5.	Резерв - 40:00:00 – FF:FF:FF;
  }

  f_flagMsg: Byte;
  f_LastMAC_atlanta: string;      // переменная mac-адреса  семейство Атланта
  f_LastMAC_topaz: string;        // переменная mac-адреса  семейство Топаз
  f_LastMAC_ksk: string;          // переменная mac-адреса  семейство КСК
  f_LastMAC_corundum: string;     // переменная mac-адреса  семейство Корунд

  // переменные времени изменения по категориям
  f_date_atlanta: string;      // переменная  даты - семейство Атланта
  f_date_topaz: string;        // переменная  даты - семейство Топаз
  f_date_ksk: string;          // переменная  даты - семейство КСК
  f_date_corundum: string;     // переменная  даты - семейство Корунд

  // mac-adress
  f_LastMAC: string;              // последний mac-adress инкремент на 1
  // переменная семейства
  f_VarFamile: string;

implementation

uses
  IdGlobal, frxClass, unit_ini, storage_mac_ini, IniFiles;
{$R *.dfm}
  // создание формы начальные настройки

procedure TfrmMAC.FormCreate(Sender: TObject);
var
  f_ini, f_ini_mac: TIniFile;
begin
// проверка на валидность работы программы
  f_access := '';
  f_master := True;

// инициализируем переменные времени
  f_date_valid := DateToStr(now);
  f_time_valid := TimeToStr(now);

  f_FirstShowForm := True;
  f_NoShowAddres := True;

  utilityMAC := True;
  f_sticker := False;
  AssignFile(fileId, nameFile);
  AssignFile(fileBarCode, nameBarCodeFile);
  AssignFile(fileBarCodeLong, nameFileBarCodeLong);
  if not FileExists(nameFile) then
  begin
    Rewrite(fileId);
    CloseFile(fileId);
  end;

  if not FileExists(nameBarCodeFile) then
  begin
    Rewrite(fileBarCode);
    CloseFile(fileBarCode);
  end;

  if not FileExists(nameFileBarCodeLong) then
  begin
    Rewrite(fileBarCodeLong);
    CloseFile(fileBarCodeLong);
  end;
// описать загрузку ini-файла конфигурации print_config.ini
  f_iniPath := ExtractFilePath(Application.ExeName) + 'print_config.ini';
  f_ini := TIniFile.Create(f_iniPath);
  f_ini_mac := TIniFile.Create(path_mac);


// чтение конфигурации
  IniOptions.LoadFromFile(f_iniPath);
  IniOptions_mac.LoadFromFile(path_mac);
// запись из файла конфигурации
  f_print_924 := IniOptions.f_print_924;
  f_print_940 := IniOptions.f_print_940;
  f_print_2824 := IniOptions.f_print_2824;
  f_print_908 := IniOptions.f_print_908;
  f_print_576 := IniOptions.f_print_576;
  f_print_160 := IniOptions.f_print_160;
// защита приложения
  f_access := IniOptions.f_access;
// последний mac-адрес плюс 1

  f_LastMAC_atlanta := IniOptions_mac.f_LastMAC_atlanta;
  f_LastMAC_topaz := IniOptions_mac.f_LastMAC_topaz;
  f_LastMAC_ksk := IniOptions_mac.f_LastMAC_ksk;
  f_LastMAC_corundum := IniOptions_mac.f_LastMAC_corundum;
// Дата и время
  f_date_valid := IniOptions_mac.f_date_valid;
  f_time_valid := IniOptions_mac.f_time_valid;
// читаем времени изменения по категориям
  f_date_atlanta := IniOptions_mac.f_date_atlanta;
  f_date_topaz := IniOptions_mac.f_date_topaz;
  f_date_ksk := IniOptions_mac.f_date_ksk;
  f_date_corundum := IniOptions_mac.f_date_corundum;
 // !!!!!!!!!!!!!
 {
  if f_access <> '@Zel05101966' then
  begin
//    raise Exception.Create(f_err);
    ShowMessage(f_err);
    Self.Free;
    Self.Close;
  end;
 }
// !!!!!!!!!!!!!!!!!!!!
// очищаем память
  f_ini.Free;
  f_ini_mac.Free;

// назначаем переменной  f_power - запись по умолчанию
  f_power := 'Значение ИП не выбранно';
end;

procedure TfrmMAC.FormShow(Sender: TObject);
var
  f_question: Word;
begin
  chkPrintTabClick(Self);
 // проверяем на первый показ формы
  if f_FirstShowForm then
  begin
    f_question := MessageBox(handle, PChar('Загрузка MAC-адреса?'), PChar('Загрузить MAC-адрес из файла конфигурации!'), MB_YESNO + MB_ICONQUESTION);
    case f_question of
      IDYES:
        begin
          chkAdvanceSetting.Checked := True;
          // запускаем диалог выбора код семейства mac-адреса
//          ShowMessage('Показываем окно семейства устройств');
          MyFloatingMessage(0, frmMAC);
          // 'Показываем окно семейства устройств'
          frmFamily_mac := TfrmFamily_mac.Create(nil);
          frmFamily_mac.ShowModal;
          if ModalResult = mrOk then
          begin
            medtBit_4.Text := Trim(Fetch(f_LastMAC, ':'));
            medtBit_5.Text := Trim(Fetch(f_LastMAC, ':'));
            medtBit_6.Text := Trim(f_LastMAC);
//          ShowMessage(cs_Title_famile + f_VarFamile);
            MyFloatingMessage(2, frmMAC);
            f_NoShowAddres := False;
            medtBit_4.Enabled := False;
            medtBit_5.Enabled := False;
            medtBit_6.Enabled := False;
            frmFamily_mac.Free;
          end
          else
          begin
            f_FirstShowForm := False;
            frmFamily_mac.Free;
            MyFloatingMessage(1, frmMAC);
            Exit
          end;
        end;
      IDNO:
        begin
          MyFloatingMessage(1, frmMAC);
        end;
    end;
    f_FirstShowForm := False;
  end;

end;




// сокрытие лишних пунктов меню
procedure TfrmMAC.chkAdvanceSettingClick(Sender: TObject);
begin
  if chkAdvanceSetting.Checked then
  begin
  // показываем расширенные окна
    lblHighOrderBit.Enabled := True;
    medtBit_4.Enabled := True;
    medtBit_5.Enabled := True;
    medtBit_6.Enabled := True;
    seStepIterator.Enabled := True;
    mniLabelAdvance.Visible := True;
    lblStepIterator.Enabled := True;
  end
  else
  begin
  // скрываем расширенные окна
    lblHighOrderBit.Enabled := False;
    medtBit_4.Enabled := False;
    medtBit_5.Enabled := False;
    medtBit_6.Enabled := False;
    seStepIterator.Enabled := False;
    mniLabelAdvance.Visible := False;
    lblStepIterator.Enabled := False;
  end;
end;

  // Выбор режима печати этикеток
procedure TfrmMAC.chkPrintTabClick(Sender: TObject);
begin
  if chkPrintTab.Checked then
  begin
  // активация пункта меню печать этикетки
    mniLabel.Visible := True;
    mniListDevice.Visible := True;
//     mniNStick.Visible := True;
  // активируем checkbox "Расширенные настройки"
    chkAdvanceSetting.Enabled := True;
  // переименовываем надписи
    lblTitle.Caption := 'Печать этикетки';
    // изменяем размер окна модуля
    edtDevice.Left := 230;
    edtDevice.Width := 460;
    lblDevice.Left := 10;
    lblSGP.Visible := True;
  // гасим ненужные кнопки
    btnStart.Enabled := False;
    lblMAC.Caption := 'Название модуля:';
    edtMod.Visible := True;

    if chkAdvanceSetting.Checked then
    begin
      lblHighOrderBit.Enabled := True;
      medtBit_4.Enabled := True;
      medtBit_5.Enabled := True;
      medtBit_6.Enabled := True;

      lblStepIterator.Enabled := True;
      seStepIterator.Enabled := True;
    end
    else
    begin
  // деактивируем группу mac adress
      lblHighOrderBit.Enabled := False;
      medtBit_4.Enabled := False;
      medtBit_5.Enabled := False;
      medtBit_6.Enabled := False;

      lblStepIterator.Enabled := False;
      seStepIterator.Enabled := False;
    end;


  // гасим печать mac -адресов
    mniPrintMac.Enabled := False;

  // гасим ненужные пункты меню и полную версию
//    chkAdvanceSetting.Visible := False;
    mniReport.Visible := False;
    mniGen_QR.Visible := False;
    mniBarCodeLong.Visible := False;

    mniQRIDMAC.Visible := False;    // добавил после доработки
  end
  else
  begin
  // гасим пункт меню печать этикетки
    mniLabel.Visible := False;
    mniListDevice.Visible := False;
//    mniNStick.Visible := False;
  // деактивируем checkbox "Расширенные настройки"
    chkAdvanceSetting.Enabled := False;
    chkAdvanceSetting.Checked := False;
  // возвращаем размер окна модуля
    edtDevice.Left := 390;
    edtDevice.Width := 300;
    lblDevice.Left := 75;
    lblSGP.Visible := False;

    lblTitle.Caption := 'MAC - адрес Итератор';
    lblMAC.Caption := 'MAC - адресс';
    edtMod.Visible := False;
  // активируем группу mac adress
    lblHighOrderBit.Enabled := True;
    medtBit_4.Enabled := True;
    medtBit_5.Enabled := True;
    medtBit_6.Enabled := True;

    lblStepIterator.Enabled := True;
    seStepIterator.Enabled := True;

  // активируем печать mac -адресов
    mniPrintMac.Enabled := True;

  // активируем ненужные пункты меню и полную версию
//    chkAdvanceSetting.Visible := True;
    mniReport.Visible := True;
    mniGen_QR.Visible := True;
    mniBarCodeLong.Visible := True;

    mniQRIDMAC.Visible := True;    // добавил после доработки
  end;
end;

 // выбор утилиты *************************************************
procedure TfrmMAC.mniIteratorClick(Sender: TObject);
begin
 // меняем название  "Печать_МАС_924" на "Печать"
  mnifrPrint.Caption := 'Печать';

// включаем checkBox Печать этикетки
  chkPrintTab.Enabled := True;
// активируем checkBox
//  chkAdvanceSetting.Enabled := True;
  utilityMAC := True;
  mniPrintMac.Enabled := True;
  mniIterator.Enabled := False;
// включение отключенных окон
  lblTitle.Visible := True;
  edtDevice.Visible := True;
  lblDevice.Visible := True;
  lblPrintMac.Visible := False;
  lblID.Enabled := True;
  lblModule.Enabled := True;
  lblDate.Enabled := True;
  lblGruop.Enabled := True;
  lblNumber.Enabled := True;
  medtModule.Enabled := True;
  medtDate.Enabled := True;
  medtGroup.Enabled := True;
  medtNumber.Enabled := True;
  mniExport.Visible := True;
  btnRestartClick(nil);
  edtDevice.SetFocus;

// скрытие ненужный пунктов меню
  mniBarCodeLong.Visible := True;
  mniQRIDMAC.Visible := False;
end;

procedure TfrmMAC.mniPrintMacClick(Sender: TObject);
begin
// выключаем checkBox Печать этикетки
  chkPrintTab.Enabled := False;
// меняем название "Печать" на "Печать_МАС_924"
  mnifrPrint.Caption := 'Печать_МАС_924';
  utilityMAC := False;
  mniPrintMac.Enabled := False;
  mniIterator.Enabled := True;
// сбрасываем все окна
  btnRestartClick(nil);
// отключение ненужных окон

  lblTitle.Visible := False;
  edtDevice.Visible := False;
  lblDevice.Visible := False;
  lblPrintMac.Visible := True;
  lblID.Enabled := False;
  lblModule.Enabled := False;
  lblDate.Enabled := False;
  lblGruop.Enabled := False;
  lblNumber.Enabled := False;
  medtModule.Enabled := False;
  medtDate.Enabled := False;
  medtGroup.Enabled := False;
  medtNumber.Enabled := False;
  mniExport.Visible := False;
  medtBit_4.SetFocus;
// скрытие ненужный пунктов меню
  mniBarCodeLong.Visible := False;
  mniQRIDMAC.Visible := False;
end;

// приминение выбора  *********************************************
procedure TfrmMAC.btnApplyClick(Sender: TObject);
var
  i, stepMac, beginNumberDevice, range: Integer;
  group_st: string;   // переменная для модификации партии
  s, numberS, rangeLast: string;
  s1, tmp, tmp1, tmp2: string;
  bit0, bit1, bit2: string;
  img: BITMAP;
  f_Last_macAddress: string;
begin
// установить шрифт отчета печати mac-адреса по умолчанию
  macSize := False;

// отключаем выбор расширенного режима
  chkAdvanceSetting.Enabled := False;

  mniBarCodeLong.Enabled := True;
  if not (chkPrintTab.Checked) then
    btnStart.Enabled := False
  else
    chkPrintTab.Enabled := False;
  mniReport.Enabled := True;
  mniApply.Enabled := False;
  btnApply.Enabled := False;
  btnRestart.Enabled := True;
  mniQRIDMAC.Enabled := True;
//  mniNStick.Enabled := True;
// разрешения пунктов "Сброс" в главном меню
  mniReset.Enabled := True;
  mniResetBarCodeLong.Enabled := True;
  mniFrReset.Enabled := True;
  stepMac := 1;
  stepIteration := StrToIntDef(seStepIterator.Text, 0);    // шаг итерации
  quantity := StrToIntDef(seQuantity.Text, 0);             // количество устройств
  range := stepIteration;                                  // шаг итерации второй?
//  заполнение массива
  try
    idMAC[0] := DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
    idMAC[1] := DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
    idMAC[2] := DataModuleMacIterator.HexStrToInt(medtBit_6.Text);
// массив для печати штрих- кода
    idMACBarCode[0] := DataModuleMacIterator.HexStrToInt(medtBit_4.Text);
    idMACBarCode[1] := DataModuleMacIterator.HexStrToInt(medtBit_5.Text);
    idMACBarCode[2] := DataModuleMacIterator.HexStrToInt(medtBit_6.Text);

  except
    on E: Exception do
    begin
      ShowMessage('Проверьте правильность заполнения полей MAC-адреса');
      btnApplyClick(nil);
    end;
  end;

  bit2 := IntToHex(idMAC[0]) + '';
  bit1 := IntToHex(idMAC[1]) + '';
  bit0 := IntToHex(idMAC[2]) + '';
  bit2 := bit2 + ' : ' + bit1 + ' : ' + bit0;
//  fbitBarCode := '68:EB:C5:' + bit2 + ':' + bit1 + ':' + bit0;
//************************************************************
// установка системных переменных для формирования отчета
  fnameDevice := edtDevice.Text;    // наименование устройства
  ffirstOrderBit := '68 : EB : C5 : ' + bit2;   // начальный МАС-адрес для итерации
  fstepIterator := seStepIterator.Text;  //   шаг итерации МАС-адреса
  ffirstIdDevice := medtModule.Text + ' ' + medtDate.Text + ' ' + medtGroup.Text + ' ' + medtNumber.Text; // начальный серийный номер комплекта
  fquantityDevice := seQuantity.Text;    // количество устройств
  numberDeviceHigh := medtModule.Text + medtDate.Text + medtGroup.Text;  // три старших разряда серийного номера
  fnumberDeviceHigh := medtModule.Text + ' ' + medtDate.Text + ' ' + medtGroup.Text;  // три старших разряда серийного номера с пробелами между триадами

//*******************************************************
  idModule := StrToIntDef(medtModule.Text, 0);
  idDate := StrToIntDef(medtDate.Text, 0);
  idGroup := StrToIntDef(medtGroup.Text, 0);    // модификационная партия
  idNumber := StrToIntDef(medtNumber.Text, 0);  // номер по порядку

// *******************************************************
  if not (chkPrintTab.Checked) then    // флажок печать этикетки снят
  begin
//
    if utilityMAC then           // утилита печати МАС-адресов выключена
    begin
//   формирование файла
      Rewrite(fileId);
      beginNumberDevice := idNumber;   // начальный номер   !!!!!!!!
      for i := 0 to quantity - 1 do
      begin
  // реализуем возможность перехода через 1000
        if beginNumberDevice = 1000 then
        begin
          beginNumberDevice := 0;
          inc(idGroup);
  //  организуем переход на другую модификацию устройства

          numberDeviceHigh := '';    // обнуляем запись
          fnumberDeviceHigh := '';   // обнуляем запись


          group_st := Format('%.3d', [idGroup]);
          numberDeviceHigh := medtModule.Text + medtDate.Text + group_st;    // формируем новые
          fnumberDeviceHigh := medtModule.Text + ' ' + medtDate.Text + ' ' + group_st;

        end;

        numberS := Format('  ' + '%.3d', [beginNumberDevice]);
        s := Format('%.4d', [i + 1]);
        Write(fileId, s);
        Write(fileId, DataModuleMacIterator.ArrayToString(idMAC));
        Write(fileId, fnumberDeviceHigh + numberS);
        while stepMac <= stepIteration do
        begin
          DataModuleMacIterator.IncArrayOne(idMAC);
          Inc(stepMac);
        end;
        stepMac := 1;
        Writeln(fileId);
        inc(beginNumberDevice);
      end;
// закрытие файла
      CloseFile(fileId);

// заполняем FDMemTable
      fdmtblTitle.Open;
      fdmtblTitle.Table.Clear;
      fdmtblTitle.Append;

//    fdmtblTitle.Insert;
      fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
      fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
      fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
      fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
      fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;

      fdmtblMac.Open;
      fdmtblMac.Table.Clear;
      fdmtblMac.Append;
//
      fdmtblMac.FieldByName('Number').AsString := '';
      fdmtblMac.FieldByName('MAC - adress').AsString := '';
      fdmtblMac.FieldByName('id - number').AsString := '';
//
      Reset(fileId);
      fdmtblMac.First;
      while (not EOF(fileId)) do
      begin
        fdmtblMac.Insert;
        Readln(fileId, s1);
        tmp := Trim(Fetch(s1, '|'));
        tmp1 := Trim(Fetch(s1, '|'));
        fdmtblMac.FieldByName('Number').AsString := tmp;
        fdmtblMac.FieldByName('MAC - adress').AsString := tmp1;
        fdmtblMac.FieldByName('id - number').AsString := s1;
        fdmtblMac.Post;
        fdmtblMac.Next;
      end;
      CloseFile(fileId);
    end
    else
    begin            // утилита печати МАС-адресов включена
  //   формирование файла
            // утилита печати МАС-адресов включена
  //   формирование файла
  //  если шаг итерации mac-адреса больше одного переводим флаг в состояние true
      if stepIteration <> 1 then
        macSize := True;
      Rewrite(fileId);
      for i := 1 to quantity do
      begin
        s := DataModuleMacIterator.ArrayToStringShort(idMAC);
        Delete(s, 9, 3);
        s := '68:EB:C5:' + s;
        Write(fileId, s);
        if stepIteration <> 1 then
        begin
          while stepMac <= stepIteration do
          begin
            DataModuleMacIterator.IncArrayOne(idMAC);
            Inc(stepMac);
            Dec(range);
            if range = 1 then
            begin
              rangeLast := '-' + IntToHex(idMAC[2]);
              write(fileId, rangeLast);
            end;
          end;
        end
        else
          DataModuleMacIterator.IncArrayOne(idMAC);
        stepMac := 1;
        range := stepIteration;
        Writeln(fileId);
      end;
// закрытие файла
      CloseFile(fileId);

// заполняем FDMemTable
      fdmtblMac.Open;
      fdmtblMac.Table.Clear;
      fdmtblMac.Append;
      fdmtblMac.FieldByName('MAC - adress').AsString := '';
//
      Reset(fileId);
      fdmtblMac.First;
      while (not EOF(fileId)) do
      begin
        fdmtblMac.Insert;
        Readln(fileId, s);
        fdmtblMac.FieldByName('MAC - adress').AsString := s;
        fdmtblMac.Post;
        fdmtblMac.Next;
      end;
      CloseFile(fileId);
    end;
  end
  //****************************** флажок активирован
  else
  begin
   //   формирование файла для этикетки   !!!! Возможность перехода через 999
    barCodeStream := TMemoryStream.Create;
    Rewrite(fileId);
    beginNumberDevice := idNumber;
    for i := 0 to (quantity - 1) do
    begin
//   вставляю новый код
      if beginNumberDevice = 1000 then
      begin
        beginNumberDevice := 0;
        Inc(idGroup);
        medtGroup.Text := Format('%.3d', [idGroup])
      end;

      numberS := Format('%.3d', [beginNumberDevice]);
      s := Format('%.4d', [i]);
      Write(fileId, s);
      s := ' |' + medtModule.Text + medtDate.Text + medtGroup.Text;
      s1 := ' |' + medtModule.Text + ' ' + medtDate.Text + ' ' + medtGroup.Text;
      Write(fileId, s);
      Write(fileId, numberS);
      Write(fileId, s1);
      Write(fileId, ' ' + numberS);
      Writeln(fileId);
      Inc(beginNumberDevice);
    end;
// закрытие файла
    CloseFile(fileId);
    Reset(fileId);
    fdmtbLabel.Open;
    fdmtbLabel.Table.Clear;

    while (not EOF(fileId)) do
    begin
      fdmtbLabel.Append;
      Readln(fileId, s1);
      tmp := Trim(Fetch(s1, '|'));
      tmp := Trim(Fetch(s1, '|'));     // s1 - расширенный номер с пробелами
// создаем поток и трансоформируем в barcode
      brcdMAC.InputText := tmp;
      brcdMAC.Scale := 1;
      brcdMAC.Height := 20;
      brcdMAC.Symbology := syCode128;
      fdmtbLabel.Fields[0].AsString := s1;
      brcdMAC.Bitmap.SaveToStream(barCodeStream);
      barCodeStream.Position := 0;
      (fdmtbLabel.FieldByName('bcBig') as TBlobField).LoadFromStream(barCodeStream);
      barCodeStream.Clear;

      brcdMAC.Height := 25;
      brcdMAC.Scale := 0.5;
      brcdMAC.Symbology := syCode128;
      brcdMAC.Bitmap.SaveToStream(barCodeStream);
      barCodeStream.Position := 0;
      (fdmtbLabel.FieldByName('bcSmall') as TBlobField).LoadFromStream(barCodeStream);
      barCodeStream.Clear;

//      fdmtbLabel.FieldByName('snbig').AsString := s1;

      fdmtbLabel.Post;
    end;
    CloseFile(fileId);
// разрушение потока
    barCodeStream.Free;
    brcdMAC.Scale := 1;
// работа с расширенными настройками ******************************************
    if chkAdvanceSetting.Checked then
    begin
      Rewrite(fileId);
      for i := 1 to quantity do
      begin
        s := DataModuleMacIterator.ArrayToStringShort(idMAC);
        Delete(s, 9, 3);
        s := '68:EB:C5:' + s;
        Write(fileId, s);
        if stepIteration <> 1 then
        begin
          while stepMac <= stepIteration do
          begin
            DataModuleMacIterator.IncArrayOne(idMAC);
            Inc(stepMac);
            Dec(range);
            if range = 1 then
            begin
              rangeLast := '-' + IntToHex(idMAC[2]);
              write(fileId, rangeLast);
            end;
          end;
        end
        else
          DataModuleMacIterator.IncArrayOne(idMAC);
        stepMac := 1;
        range := stepIteration;
        Trim(Fetch(s, '68:EB:C5:'));                         // Внимание MAC-адрес
        f_Last_macAddress := s;
        Writeln(fileId);
      end;
   // закрытие файла
      CloseFile(fileId);
   // запись в таблицу fdmtbLabel
      Reset(fileId);
      fdmtbLabel.Open;
      fdmtbLabel.First;

      while (not EOF(fileId)) do
      begin
        fdmtbLabel.Edit;
        Readln(fileId, s1);
        tmp := Trim(Fetch(s1, '|'));
        fdmtbLabel.Fields[3].AsString := tmp;
        fdmtbLabel.Next;
      end;
//      fdmtbLabel.Post;
      CloseFile(fileId);
    end;
// ****************************************************************************
// активация кнопки "Этикетка"  и "Этикетка(расширенная)"
    mniLabel.Enabled := True;
    mniLabelAdvance.Enabled := True;
//    frmTestGrid.Show;           // активация тестовой формы
  end;
//  ShowMessage(f_Last_macAddress);
// Сдесь нужно ловить последний mac-адрес
  { TODO 1 -o12 -c12 : Оп{ TODO 1 -o12 -c12 : Описать функцию вычисление адреса, и возвращение последнего адреса плюс один в string }
  f_LastMAC := DataModuleMacIterator.LastMAC_AddOne(f_Last_macAddress, stepIteration);
//   ShowMessage(f_LastMAC);
end;


// окончание блока выбора  **********************************************************
// процедура сброса
procedure TfrmMAC.btnRestartClick(Sender: TObject);
var
  f_True: Boolean;
  f_ini: TIniFile;
  f_question: Integer;
begin
  if not (f_NoShowAddres) then    // проверка на открытие в режиме хранения mac-адреса
  begin
    MessageBox(handle, PChar('Приложение будет закрыто!' + #10#13 + 'Для продолжения работы запустите приложение заново!'), PChar('Внимание'), MB_OK + MB_ICONWARNING);
    Close;
  end
  else
  begin

// включаем выбор расширенного режима
    chkAdvanceSetting.Enabled := True;

    if not (chkPrintTab.Checked) then
    begin
      if utilityMAC then
        edtDevice.SetFocus
      else
        medtBit_4.SetFocus;
  // зажигаем пунк меню "Просмотр отчета" и гасим "Экспорт отчета" и "Печать"
      mnifrView.Enabled := True;
      mniExport.Enabled := False;
      mnifrPrint.Enabled := False;

      mniReport.Enabled := False;
      mniApply.Enabled := True;
      btnApply.Enabled := True;
      btnRestart.Enabled := False;
      btnStart.Enabled := False;
      mniQRIDMAC.Enabled := False;

// сбрасываем все окна
      edtDevice.Clear;
      medtBit_4.Clear;
      medtBit_5.Clear;
      medtBit_6.Clear;
      medtModule.Clear;
      medtDate.Clear;
      medtGroup.Clear;
      medtNumber.Clear;
      seStepIterator.Value := 1;
      seQuantity.Value := 1;
      medtBit_4.Text := '00';
      medtBit_5.Text := '00';
      medtBit_6.Text := '00';

  // для barCode
      mniBarCodeLong.Enabled := False;
      mniPreviewLong.Enabled := False;
      mniExportBarCodeLong.Enabled := False;
      mniPrintBarCodeLong.Enabled := False;
  // зажигаем пунк -"Применить"
      mniApplyBarCodeLong.Enabled := True;
  // для ID&MAC
      mniQRIDMAC.Enabled := False;
      mniShow_IDandMAC.Enabled := False;
      mniExport_IDandMAC.Enabled := False;
      mniPrint_IDandMAC.Enabled := False;
      mniReset_IDandMAC.Enabled := False;
  // зажигаем пунк -"Применить"
      mniApplay_IDandMAC.Enabled := True;
  // сбрасываем переменные для формирования серийного номера
      ffirstIdDevice := '';
      seQuantity.Text := '1';    // количество устройств
      numberDeviceHigh := '';  // три старших разряда серийного номера
      fnumberDeviceHigh := '';  // три старших разряда серийного номера с пробелами между триадами

//*******************************************************
      idModule := StrToIntDef(medtModule.Text, 0);
      idDate := StrToIntDef(medtDate.Text, 0);
      idGroup := StrToIntDef(medtGroup.Text, 0);    // модификационная партия
      idNumber := StrToIntDef(medtNumber.Text, 0);  // номер по порядку

// для серийного номера
      if utilityMAC then
      begin
        medtModule.Text := '000';
        medtDate.Text := '000';
        medtGroup.Text := '000';
        medtNumber.Text := '000';
      end;
// сброс команды прошивки из модуля FShowSoft
      frmShowSoft.fTextSoft := '';
// запрещение пунктов "Сброс" в главном меню
      mniReset.Enabled := False;
//    mniResetBarCode.Enabled := False;
      mniResetBarCodeLong.Enabled := False;
//    mniResetLoadSoft.Enabled := False;
      mniFrReset.Enabled := False;
      if utilityMAC then
        edtDevice.SetFocus
      else
        medtBit_4.SetFocus;
// сбрасываем отчеты
   // закрытие отчетов
      frmFRList.Close;
   // очистка отчетов
      frmFRList.frxrprtList.PreviewPages.Clear;

    end
    else
    begin
//      edtDevice.Text := '';
//      edtMod.Text := '';
      edtDevice.Clear;
      edtMod.Clear;
      mniLabel.Enabled := False;
      mniLabelAdvance.Enabled := False;
      chkPrintTab.Enabled := True;
      ShowMessage('Сбрасываем отчеты');
      btnApply.Enabled := True;
      btnRestart.Enabled := False;
//      mniNStick.Enabled := False;
// перезаряжаем печать стикера верификации
      mniNSticker_show.Enabled := True;
      mniNSticker_printer.Enabled := False;

// закрытие отчетов
      frmFRBigLabel.Close;
      frmFRSmallLabel.Close;
      frmShild.Close;
      frmFRList.Close;
      frmStickCheck.Close;

// очистка отчетов
      frmFRBigLabel.rpBigLabel.PreviewPages.Clear;
      frmFRSmallLabel.rpSmallLabel.PreviewPages.Clear;
      frmShild.rpShild.PreviewPages.Clear;
      frmFRList.frxrprtList.PreviewPages.Clear;
      frmStickCheck.frpStickCheck.PreviewPages.Clear;
      frmFRBigLabel.rp_43_25_noMAC.PreviewPages.Clear;


// гасим окна печати
      mniPrintBig.Enabled := False;
      mniPrintSmall.Enabled := False;
      mniPrintShild.Enabled := False;
      mni_Pr_43_25.Enabled := False;
      mni_Pr_shild_43_25.Enabled := False;
      mni_PrintSmall_new.Enabled := False;
      mni_Pr_shild_43_25_small.Enabled := False;
      mni_TE200_160_Print.Enabled := False;


// зажигаем окна просмотра
      mniShowBig.Enabled := True;
      mniShowSmall.Enabled := True;
      mniShowShild.Enabled := True;
      mni_sh_43_25.Enabled := True;
      mni_sh_shild_43_25.Enabled := True;
      mni_ShowSmall_new.Enabled := True;
      mni_sh_shild_43_25_small.Enabled := True;
      mni_TE200_160_Show.Enabled := True;


//   сбрасываем окна заполнения
      medtModule.Text := '000';
      medtDate.Text := '000';
      medtGroup.Text := '000';
      medtNumber.Text := '000';

      seStepIterator.Value := 1;
      seQuantity.Value := 1;
      medtBit_4.Text := '00';
      medtBit_5.Text := '00';
      medtBit_6.Text := '00';
//  сбрасываем наимеование устройств


    end;
  end;
end;




// необходимо организовать переход через 999!!!!!!!!!
// печать штрих кода *******************************************************
procedure TfrmMAC.mniApplyBarCodeClick(Sender: TObject);
var
  beginNumberDevice, range, stepMac, stepBarCode, numberBarCode: Integer;
  numBarCodeFR: Integer;
  group_st: string;   // переменная для модификации партии
  s, numberS, numberSLong, rangeLast: string;
  s1, tmp, tmp1: string;
begin
  numberDeviceHigh := '';    // обнуляем запись
  numberDeviceHigh := medtModule.Text + medtDate.Text + medtGroup.Text;  // три старших разряда серийного номера
  idGroup := StrToIntDef(medtGroup.Text, 0);    // модификационная партия

// отключаем пунк меню "Применить"
  mniApplyBarCodeLong.Enabled := False;
// отключаем пункт QR-код семейство Топаз
  mniQRIDMAC.Enabled := False;
// открываем таблицу для заполниния **************************************
  range := stepIteration;
  stepMac := 1;
  stepBarCode := 1;
  numberBarCode := 0;    // счетчик количества устройств
  numBarCodeFR := 1;
// блокируем окно для Топаза
//  mniQRIDMAC.Enabled := False;
// активируем окна для работы с LoadSoft
  stepPrintBarCode := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 1 до 5', '5'), 5);
  if not (stepPrintBarCode in [1..5]) then
  begin
    ShowMessage('Введите корректное значение из диапазона 1-5');
    mniApplyBarCodeClick(nil);
  end;
  ShowMessage('Все хорошо');
// Заполняем титульную таблицу *************************************************
  fdmtblTitle.Close;
  fdmtblTitle.Open;
  fdmtblTitle.Append;
  fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
  fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
  fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
  fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
  fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;
  fdmtblTitle.FieldByName('StepPrintBarCode').AsInteger := stepPrintBarCode;
  fdmtblTitle.Post;
// *****************************************************************************

//блок выбора mac & id номеров ******************************************************

//   формирование файла
  Rewrite(fileBarCode);
  Rewrite(fileBarCodeLong); // добавляем для длинного barcode

  beginNumberDevice := idNumber;
  while numberBarCode <= quantity - 1 do
  begin

// пихаем код для перехода через 1000
    if beginNumberDevice = 1000 then
    begin
      beginNumberDevice := 0;
      inc(idGroup);
    // организуем переход на другую модификацию устройства
      numberDeviceHigh := '';    // обнуляем запись

      group_st := Format('%.3d', [idGroup]);

      numberDeviceHigh := medtModule.Text + medtDate.Text + group_st;    // формируем новые
    end;

    numberS := Format(numberDeviceHigh + '%.3d', [beginNumberDevice]);
    numberSLong := Format(' --serial ' + numberDeviceHigh + '%.3d', [beginNumberDevice]);
    s := Format('%.3d', [numBarCodeFR]) + '|';
// запись в файл
    Write(fileBarCode, s);
    Write(fileBarCodeLong, s);  // добавляем для длинного barcode
    Write(fileBarCode, DataModuleMacIterator.ArrayToStringlong(idMACBarCode));
    Write(fileBarCodeLong, DataModuleMacIterator.ArrayToStringlongMAC(idMACBarCode));  // добавляем для длинного barcode
    Write(fileBarCode, numberS);
    Write(fileBarCodeLong, numberSLong);   // добавляем для длинного barcode
    while stepBarCode <= stepPrintBarCode do
    begin
      while stepMac <= stepIteration do
      begin
        DataModuleMacIterator.IncArrayOne(idMACBarCode);
        Inc(stepMac);
      end;
      Inc(stepBarCode);
      Inc(numberBarCode);
      stepMac := 1;
      inc(beginNumberDevice);
    end;
    stepBarCode := 1;
    Inc(numBarCodeFR);
    Writeln(fileBarCode);
    Writeln(fileBarCodeLong);
  end;
// закрытие файла
  CloseFile(fileBarCode);
  CloseFile(fileBarCodeLong);
// чтение из файла и получение BarCode и запись в таблицу ****************** 24/10/2022
  barCodeStream := TMemoryStream.Create;
  Reset(fileBarCode);
  fdmtblBarCode.Open;
  fdmtblBarCode.Table.Clear;

  while (not EOF(fileBarCode)) do
  begin
    fdmtblBarCode.Append;
    Readln(fileBarCode, s1);
    tmp := Trim(Fetch(s1, '|'));
    tmp1 := Trim(Fetch(s1, '|'));

    fdmtblBarCode.FieldByName('Number').AsString := tmp;
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText := tmp1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdmtblBarCode.FieldByName('BarCodeMAC') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;

    brcdMAC.InputText := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdmtblBarCode.FieldByName('BarCodeId') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdmtblBarCode.Post;
  end;

// работа с длинным штрих-кодом        // 24/10/2022
  Reset(fileBarCodeLong);
  fdBarCodeLong.Open;
//  fdmtblLoadSoft.Open;
  fdBarCodeLong.Table.Clear;

  while (not EOF(fileBarCodeLong)) do
  begin
    fdBarCodeLong.Append;
    Readln(fileBarCodeLong, s1);
    tmp := Trim(Fetch(s1, '|'));

    fdBarCodeLong.FieldByName('Number').AsString := tmp;
// создаем поток и трансоформируем в barcode
    brcdMAC.InputText := s1;
    brcdMAC.Height := 50;
    brcdMAC.Symbology := syQRCode;
    fdBarCodeLong.FieldByName('MacAndId').AsString := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdBarCodeLong.FieldByName('BarCodeLong') as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdBarCodeLong.Post;
  end;
  CloseFile(fileBarCodeLong);
// разрушение потока
  barCodeStream.Free;
  mniPreviewLong.Enabled := True;
  mniExportBarCodeLong.Enabled := True;
  mniPrintBarCodeLong.Enabled := True;

end;

// печать qr-кода и серийного номера для изделий семейства Топаз

procedure TfrmMAC.mniApplay_IDandMACClick(Sender: TObject);
var
  beginNumberDevice, range, stepMac, stepBarCode, numberBarCode: Integer;
  number, numBarCodeFR: Integer;
  group_st: string;   // переменная для модификации партии
  numberS, numberSLong, rangeLast: string;
  s, s1, tmp, tmp1: string;
  hardWare: string;
begin
  numberDeviceHigh := '';    // обнуляем запись
  numberDeviceHigh := medtModule.Text + medtDate.Text + medtGroup.Text;  // три старших разряда серийного номера
  idGroup := StrToIntDef(medtGroup.Text, 0);    // модификационная партия

  mniApplay_IDandMAC.Enabled := False;
// открываем таблицу для заполниния **************************************
  range := stepIteration;
  stepMac := 1;
  stepBarCode := 1;
  numberBarCode := 0;
  numBarCodeFR := 1;
 // блокируем окно для QR-код малый
  mniBarCodeLong.Enabled := False;
// активируем окна для работы с LoadSoft
  mniShow_IDandMAC.Enabled := True;
  mniExport_IDandMAC.Enabled := True;
  mniPrint_IDandMAC.Enabled := True;
  mniReset_IDandMAC.Enabled := True;
// настраиваем шрифт
  brcdMAC.Height := 50;
  brcdMAC.Symbology := syQRCode;

// забиваем hardWare для Топаза
  hardWare := InputBox('Введите Hard Ware модуля Топаз', 'Введите HW ', '00.01.10');

  stepPrintBarCode := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 5 до 10', '10'), 10);
  if not (stepPrintBarCode in [1..10]) then
  begin
    ShowMessage('Введите корректное значение из диапазона 5-10');
    mniApplyBarCodeClick(nil);
  end;
  ShowMessage('Все хорошо');

// Заполняем титульную таблицу *************************************************
  fdmtblTitle.Close;
  fdmtblTitle.Open;
  fdmtblTitle.Append;
  fdmtblTitle.FieldByName('nameDevice').AsString := fnameDevice;
  fdmtblTitle.FieldByName('firstOrderBit').AsString := ffirstOrderBit;
  fdmtblTitle.FieldByName('stepIterator').AsString := fstepIterator;
  fdmtblTitle.FieldByName('firstIdDevice').AsString := ffirstIdDevice;
  fdmtblTitle.FieldByName('quantityDevice').AsString := fquantityDevice;
  fdmtblTitle.FieldByName('StepPrintBarCode').AsInteger := stepPrintBarCode;
// вносим QR-код HardWare
  barCodeStream := TMemoryStream.Create;
  brcdMAC.InputText := hardWare;
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fdmtblTitle.Fields[6] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Free;
  fdmtblTitle.Post;
// *****************************************************************************
//блок выбора mac & id номеров ******************************************************

//   формирование файла
  Rewrite(fileBarCode);
  Rewrite(fileBarCodeLong); // добавляем для длинного barcode
  beginNumberDevice := idNumber;
  while numberBarCode <= quantity - 1 do
  begin

// пихаем код для перехода через 1000
    if beginNumberDevice = 1000 then
    begin
      beginNumberDevice := 0;
      inc(idGroup);
  //  организуем переход на другую модификацию устройства
      numberDeviceHigh := '';    // обнуляем запись
      group_st := Format('%.3d', [idGroup]);
      numberDeviceHigh := medtModule.Text + medtDate.Text + group_st;    // формируем новые
    end;

    numberS := Format(numberDeviceHigh + '%.3d', [beginNumberDevice]);
    numberSLong := Format(' --serial ' + numberDeviceHigh + '%.3d', [beginNumberDevice]);
    s := Format('%.3d', [numBarCodeFR]) + '|';
// запись в файл
    Write(fileBarCode, s);
    Write(fileBarCodeLong, s);  // добавляем для длинного barcode
    Write(fileBarCode, DataModuleMacIterator.ArrayToStringlong(idMACBarCode));
    Write(fileBarCodeLong, DataModuleMacIterator.ArrayToStringlongMAC(idMACBarCode));  // добавляем для длинного barcode
    Write(fileBarCode, numberS);
    Write(fileBarCodeLong, numberSLong);   // добавляем для длинного barcode
    while stepBarCode <= stepPrintBarCode do
    begin
      while stepMac <= stepIteration do
      begin
        DataModuleMacIterator.IncArrayOne(idMACBarCode);
        Inc(stepMac);
      end;
      Inc(stepBarCode);
      Inc(numberBarCode);
      stepMac := 1;
      inc(beginNumberDevice);
    end;
    stepBarCode := 1;
    Inc(numBarCodeFR);
    Writeln(fileBarCode);
    Writeln(fileBarCodeLong);

  end;
// закрытие файла
  CloseFile(fileBarCode);
  CloseFile(fileBarCodeLong);

// чтение из файла и получение BarCode и запись в таблицу для Топаз ******************
  barCodeStream := TMemoryStream.Create;
  Reset(fileBarCode);
  fdIDandMAC.Open;
  fdIDandMAC.Table.Clear;

// формируем данные для таблицы fdIDandMAC
  while (not EOF(fileBarCode)) do
  begin
    fdIDandMAC.Append;
    Readln(fileBarCode, s1);
    tmp := Trim(Fetch(s1, '|'));
    tmp1 := Trim(Fetch(s1, '|'));

    fdIDandMAC.Fields[0].AsInteger := StrToInt(tmp);
// создаем поток и трансоформируем в barcode

    brcdMAC.InputText := AnsiLowerCase(tmp1);
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdIDandMAC.Fields[2] as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;

    brcdMAC.InputText := s1;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (fdIDandMAC.Fields[1] as TBlobField).LoadFromStream(barCodeStream);
    barCodeStream.Clear;
    fdIDandMAC.Next;
  end;
// работа с длинным штрих-кодом
  Reset(fileBarCodeLong);
  fdIDandMAC.First;
  while (not EOF(fileBarCodeLong)) do
  begin
    fdIDandMAC.Edit;
    Readln(fileBarCodeLong, s1);
    tmp := Trim(Fetch(s1, '|'));
    fdIDandMAC.Fields[3].AsString := s1;
    fdIDandMAC.Post;
    fdIDandMAC.Next;
  end;
  CloseFile(fileBarCodeLong);
// разрушение потока
  barCodeStream.Free;

  mniPreviewLong.Enabled := True;
  mniExportBarCodeLong.Enabled := True;
  mniPrintBarCodeLong.Enabled := True;
end;

//**************************************************************************************************
// работа с qr-кодом полной загрузки прошивки LoadSoft
//procedure TfrmMAC.mniShowApplyClick(Sender: TObject);
//var
//  i: Integer;
//  tmp, s1: string;
//begin
//  barCodeStream := TMemoryStream.Create;
//  Reset(fileBarCodeLong);
//  fdmtblLoadSoft.Open;
//  brcdMAC.Height := 50;
//  brcdMAC.Symbology := syQRCode;
//
//    while (not EOF(fileBarCodeLong)) do
//  begin
//    fdmtblLoadSoft.Append;
//    Readln(fileBarCodeLong, s1);
//    tmp := Trim(Fetch(s1, '|'));
//
//    fdmtblLoadSoft.FieldByName('Number').AsString := tmp;
//// создаем поток и трансоформируем в barcode
//    brcdMAC.InputText := frmShowSoft.fTextSoft + '     ' + s1;
//    fdmtblLoadSoft.FieldByName('MacAndId').AsString := s1;
//    brcdMAC.Bitmap.SaveToStream(barCodeStream);
//    barCodeStream.Position := 0;
//    (fdmtblLoadSoft.FieldByName('LoadSoft') as TBlobField).LoadFromStream(barCodeStream);
//    barCodeStream.Clear;
//    fdmtblLoadSoft.Post;
//  end;
//
//// разрушение потока
//  barCodeStream.Free;
//  CloseFile(fileBarCodeLong);
//end;

 // работаю сейчас
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

// процедура обработки генерации QR-кода
//начало блока *************************************************************************************

// процедура открытия окна для генератора QR-кода с выбором РМП
procedure TfrmMAC.mniShow_ORClick(Sender: TObject);
begin
  mniGen_QR_Apply.Enabled := True;
  frmShowSoft.cbb_rmp.Visible := True;
  // гасим и зажигаем необходимые пункты меню
  mniShow_OR.Enabled := False;

//  frmShowSoft.mmoShowSoft.Enabled := False;
//  frmShowSoft.btnCount.Enabled := False;
//  frmShowSoft.btnApply.Enabled := False;

  frmShowSoft.ShowModal;
end;
// генератор qr-кода

procedure TfrmMAC.mniGen_QR_ApplyClick(Sender: TObject);
var
  i: Integer;
  tmp, s1: string;
begin
  if frmShowSoft.flag_fTextSoft then
  begin
    frmShowSoft.flag_fTextSoft := False;
    mniGen_QR_Apply.Enabled := False;
    ShowMessage('Вы не ввели не каких данных!!!');
    mniShow_OR.Enabled := True;
    Abort;
  end;
// активируем инструменты для  QR-кода
  mniGen_QR_ShowPrev.Enabled := True;
  mniGen_QR_Apply.Enabled := False;
  mniGen_QR_Reset.Enabled := True;
  fmTab_Gen_OR.Open;
  barCodeStream := TMemoryStream.Create;
// настраиваем barcode
  brcdMAC.Height := 50;
  brcdMAC.Symbology := syQRCode;
// создаем поток и трансоформируем в barcode
  fmTab_Gen_OR.Append;
  fmTab_Gen_OR.Fields[1].AsString := frmShowSoft.fTextSoft;
  fmTab_Gen_OR.Fields[5].AsString := frmShowSoft.fText_rmp;
  brcdMAC.InputText := frmShowSoft.fTextSoft;
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fmTab_Gen_OR.Fields[2] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Clear;
// доработать
  brcdMAC.InputText := 'ap map';
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fmTab_Gen_OR.Fields[3] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Clear;

  brcdMAC.InputText := 'pyenv activate ap-dev';
  brcdMAC.Bitmap.SaveToStream(barCodeStream);
  barCodeStream.Position := 0;
  (fmTab_Gen_OR.Fields[4] as TBlobField).LoadFromStream(barCodeStream);
  barCodeStream.Clear;
  fmTab_Gen_OR.Post;
// разрушение потока
  barCodeStream.Free;
end;
// экспорт для  генератора QR-кода

procedure TfrmMAC.mniGen_QR_DOCClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport();
  frmGen_OR.frR_Gen_QR.Export(frmGen_OR.fr_Gen_QR_Ex_DOC);
end;

procedure TfrmMAC.mniGen_QR_XMLClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport();
  frmGen_OR.frR_Gen_QR.Export(frmGen_OR.fr_Gen_QR_Ex_XML);
end;

procedure TfrmMAC.mniGen_QR_PDFClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport();
  frmGen_OR.frR_Gen_QR.Export(frmGen_OR.fr_Gen_QR_Ex_PDF);
end;
/// Смотреть!!!!!!!
// предосмотр отчета генератора QR-кода

procedure TfrmMAC.mniGen_QR_ShowPrevClick(Sender: TObject);
begin
// заносим в поле mGen_qr_nameDevice -наименование устройства
  (frmGen_OR.frR_Gen_QR.FindObject('mGen_qr_nameDevice') as TFrxMemoView).Text := edtDevice.text;

// гасим и зажигаем необходимые пункты меню
  mniShow_OR.Enabled := False;
  mniGen_QR_Apply.Enabled := False;
  mniGen_QR_Print.Enabled := True;

  frmGen_OR.Show;
  frmGen_OR.frP_Gen_QR.Clear;
  frmGen_OR.frR_Gen_QR.ShowReport();
end;


// печать  отчета для QR-кода
procedure TfrmMAC.mniGen_QR_PrintClick(Sender: TObject);
begin
  frmGen_OR.frR_Gen_QR.ShowReport;
  frmGen_OR.frR_Gen_QR.Print;
end;

// сброс для  генератора QR-кода
procedure TfrmMAC.mniGen_QR_ResetClick(Sender: TObject);
begin
  fmTab_Gen_OR.Close;
  mniGen_QR_ShowPrev.Enabled := False;
  mniGen_QR_Export.Enabled := False;
  mniGen_QR_Print.Enabled := False;
  mniGen_QR_Reset.Enabled := False;
  frmShowSoft.cbb_rmp.ItemIndex := 0;
  mniGen_QR_Apply.Enabled := False;
 // уничтожение отчета
  // закрываем форму отчета
  frmGen_OR.Close;
  // очищаем отчет
  frmGen_OR.frR_Gen_QR.PreviewPages.Clear;

// гасим и зажигаем необходимые пункты меню
  mniShow_OR.Enabled := True;

// сбрасываем поле  frmShowSoft.fTextSoft
  frmShowSoft.fTextSoft := '';
  frmShowSoft.flag_fTextSoft := False;
end;
// окончание блока генератора QR-кода **************************************************************

// обработка кнопок главного меню  *****************************************************************

procedure TfrmMAC.mnifrPrintClick(Sender: TObject);
begin

  if utilityMAC then
  begin
  // задаем принтер по умолчанию
//    frmFReport.frxprvwMac.Report.PrintOptions.Printer := 'TE200_924';
    frmFReport.frxrprtMac.ShowReport();
    frmFReport.frxrprtMac.Print;
  end
  else
  begin
  // задаем принтер по умолчанию
    frmFRList.frxrprtList.Report.PrintOptions.Printer := f_print_924;
    frmFRList.frxrprtList.ShowReport();
    frmFRList.frxrprtList.Print;
  end;
end;

procedure TfrmMAC.pdf1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxpdfxprtMac);
end;

procedure TfrmMAC.pmmiCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMAC.xml1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxmlxprtMac);
end;

procedure TfrmMAC.doc1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxdcxprtMac);
end;

procedure TfrmMAC.mniPrintBarCodeLongClick(Sender: TObject);
begin
  frmFRBarCodeLong.reportBarCodeLong.ShowReport;
  frmFRBarCodeLong.reportBarCodeLong.Print;
end;


//*************************************************************************************
// открытие отчета для Топаза
procedure TfrmMAC.mniShow_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.Show;
  frmFR_IDandMAC.frPrevIDandMAC.Clear;
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
end;

// печать отчета для Топаза
procedure TfrmMAC.mniPrint_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport;
  frmFR_IDandMAC.reportIDandMAC.Print;
end;

procedure TfrmMAC.mniPreviewLongClick(Sender: TObject);
begin
  frmFRBarCodeLong.Show;

  frmFRBarCodeLong.frPrevBarCodeLong.Clear;
//   (frmFRSmallLabel.rpSmallLabel.FindObject('MTitle') as TFrxMemoView).Text := edtmod.text;
// добавляем в отчет количество устройств
  (frmFRBarCodeLong.reportBarCodeLong.FindObject('LabelCountDevice') as TFrxMemoView).Text := quantity.ToString;
  (frmFRBarCodeLong.reportBarCodeLong.FindObject('memStepIter') as TFrxMemoView).Text := stepIteration.ToString;
  frmFRBarCodeLong.reportBarCodeLong.ShowReport();
end;

procedure TfrmMAC.mniPDFBarCodeLongClick(Sender: TObject);
begin
  frmFRBarCodeLong.reportBarCodeLong.ShowReport();
  frmFRBarCodeLong.reportBarCodeLong.Export(frmFRBarCodeLong.frPDF);
end;

// экспорт для Топаз

procedure TfrmMAC.mniDOC_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
  frmFR_IDandMAC.reportIDandMAC.Export(frmFR_IDandMAC.frxDOCXExport_IDandMAC);
end;

procedure TfrmMAC.mniXML_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
  frmFR_IDandMAC.reportIDandMAC.Export(frmFR_IDandMAC.frxXMLExport_IDandMAC);
end;

procedure TfrmMAC.mniPDF_IDandMACClick(Sender: TObject);
begin
  frmFR_IDandMAC.reportIDandMAC.ShowReport();
  frmFR_IDandMAC.reportIDandMAC.Export(frmFR_IDandMAC.frxPDFExport_IDandMAC);
end;

// процедура перехода фокуса- проработка
// mac - адресс
procedure TfrmMAC.medtBit_4Change(Sender: TObject);
begin
  if (StrToIntDef('$' + medtBit_4.Text, -1) >= 0) and (Length(medtBit_4.Text) = 2) then
    medtBit_5.SetFocus
end;

procedure TfrmMAC.medtBit_5Change(Sender: TObject);
begin
  if (StrToIntDef('$' + medtBit_5.Text, -1) >= 0) and (Length(medtBit_5.Text) = 2) then
    medtBit_6.SetFocus
end;

procedure TfrmMAC.medtBit_6Change(Sender: TObject);
begin
  if (StrToIntDef('$' + medtBit_6.Text, -1) >= 0) and (Length(medtBit_6.Text) = 2) then
    seStepIterator.SetFocus
end;

// серийный номер
procedure TfrmMAC.medtModuleChange(Sender: TObject);
begin
  if (StrToIntDef(medtModule.Text, -1) >= 0) and (Length(medtModule.Text) = 3) then
    medtDate.SetFocus
end;

procedure TfrmMAC.medtDateChange(Sender: TObject);
begin
  if (StrToIntDef(medtDate.Text, -1) >= 0) and (Length(medtDate.Text) = 3) then
    medtGroup.SetFocus
end;

procedure TfrmMAC.medtGroupChange(Sender: TObject);
begin
  if (StrToIntDef(medtGroup.Text, -1) >= 0) and (Length(medtGroup.Text) = 3) then
    medtNumber.SetFocus
end;

procedure TfrmMAC.medtNumberChange(Sender: TObject);
begin
  if (StrToIntDef(medtNumber.Text, -1) >= 0) and (Length(medtNumber.Text) = 3) then
    btnApply.SetFocus
end;

// BarCode для большой этикетки ***********************************************

procedure TfrmMAC.mniShowBigClick(Sender: TObject);
begin
// задаем место открытие окна
  frmFRBigLabel.Top := 5;
  frmFRBigLabel.Left := 5;
  frmFRBigLabel.Show;
  Self.SetFocus;

  // гасим и зажигаем пункты на главном меню
  mniPrintBig.Enabled := True;
  mniShowBig.Enabled := False;

  (frmFRBigLabel.rpBigLabel.FindObject('lbBig') as TFrxMemoView).Text := edtDevice.text;
  (frmFRBigLabel.rpBigLabel_mac.FindObject('lbBig') as TFrxMemoView).Text := edtDevice.text;
  if chkAdvanceSetting.Checked then
    frmFRBigLabel.rpBigLabel_mac.ShowReport()
  else
    frmFRBigLabel.rpBigLabel.ShowReport();
end;
// печать большой этикетки

procedure TfrmMAC.mniPrintBigClick(Sender: TObject);
begin

  if chkAdvanceSetting.Checked then
  begin
     // задаем принтер по умолчанию
    frmFRBigLabel.rpBigLabel_mac.Report.PrintOptions.Printer := f_print_2824;

    frmFRBigLabel.rpBigLabel_mac.ShowReport();
    frmFRBigLabel.rpBigLabel_mac.Print;
  end
  else
  begin
     // задаем принтер по умолчанию
    frmFRBigLabel.rpBigLabel.Report.PrintOptions.Printer := f_print_2824;

    frmFRBigLabel.rpBigLabel.ShowReport();
    frmFRBigLabel.rpBigLabel.Print;
  end;

end;
// этикетка 58х40 для принтера TE200_160

procedure TfrmMAC.mni_TE200_160_ShowClick(Sender: TObject);
begin
// задаем место открытие окна
  frmFRBigLabel.Top := 5;
  frmFRBigLabel.Left := 5;
  frmFRBigLabel.Show;
  Self.SetFocus;

  // гасим и зажигаем пункты на главном меню
  mni_TE200_160_Print.Enabled := True;
  mni_TE200_160_Show.Enabled := False;

  (frmFRBigLabel.rp_TE200_160.FindObject('lbBig') as TFrxMemoView).Text := edtDevice.text;
  (frmFRBigLabel.rp_TE200_160_mac.FindObject('lbBig') as TFrxMemoView).Text := edtDevice.text;
  if chkAdvanceSetting.Checked then
    frmFRBigLabel.rp_TE200_160_mac.ShowReport()
  else
    frmFRBigLabel.rp_TE200_160.ShowReport();
end;
// печать этикетки  58х40 для принтера TE200_160
procedure TfrmMAC.mni_TE200_160_PrintClick(Sender: TObject);
begin

  if chkAdvanceSetting.Checked then
  begin
     // задаем принтер по умолчанию
    frmFRBigLabel.rp_TE200_160_mac.Report.PrintOptions.Printer := f_print_160;

    frmFRBigLabel.rp_TE200_160_mac.ShowReport();
    frmFRBigLabel.rp_TE200_160_mac.Print;
  end
  else
  begin
     // задаем принтер по умолчанию
    frmFRBigLabel.rp_TE200_160.Report.PrintOptions.Printer := f_print_160;

    frmFRBigLabel.rp_TE200_160.ShowReport();
    frmFRBigLabel.rp_TE200_160.Print;
  end;

end;


// новая этикетка размер 43х25 *************************************************************

procedure TfrmMAC.mni_sh_43_25Click(Sender: TObject);
var
  f_memPower: string;
  f_qr: string;
begin
  f_qr := 'www.angtel.ru';
// задаем место открытие окна
  frmFRBigLabel.Top := 5;
  frmFRBigLabel.Left := 5;
// запрос на ввод характеристик пиания устройства - образец "Вход 24В, 0.7А, 16.8 Вт максимально"
  f_memPower := InputBox('Характеристики ИП устройства', 'Введите Характеристики ИП устройства', f_power);
  if f_memPower = '' then

  else
  begin
    (frmFRBigLabel.rp_43_25.FindObject('memPower') as TFrxMemoView).Text := f_memPower;
    (frmFRBigLabel.rp_43_25_qr.FindObject('memPower') as TFrxMemoView).Text := f_memPower;
  end;

// присваеваем переменной memNameDevice  имя устройства
  if edtMod.Text = '' then

  else
  begin
    (frmFRBigLabel.rp_43_25_qr.FindObject('memNameDevice') as TFrxMemoView).Text := edtMod.text;
    (frmFRBigLabel.rp_43_25.FindObject('memNameDevice') as TFrxMemoView).Text := edtMod.text;
  end;

//  Задать вопрос о печати qr-кода - в противном случае печатать логотип
  f_logo := InputQuery('Печать qr-кода', 'Введите ссылку', f_qr);
//
  if f_logo then
  begin
// формируем поток
    brcdMAC.Height := 50;
//    brcdMAC.Scale := 0.5;
    brcdMAC.Symbology := syQRCode;
    barCodeStream := TMemoryStream.Create;

    brcdMAC.InputText := f_qr;
    brcdMAC.Bitmap.SaveToStream(barCodeStream);
    barCodeStream.Position := 0;
    (frmFRBigLabel.rp_43_25_qr.FindObject('pLogo') as TfrxPictureView).LoadPictureFromStream(barCodeStream);
    barCodeStream.Free;

    frmFRBigLabel.Show;
    Self.SetFocus;
    frmFRBigLabel.rp_43_25_qr.ShowReport();

  end
  else
  begin

    frmFRBigLabel.Show;
    Self.SetFocus;
    frmFRBigLabel.rp_43_25.ShowReport();
  end;
    // гасим и зажигаем нужные пункты меню
  mni_sh_43_25.Enabled := False;
  mni_Pr_43_25.Enabled := True;

end;

// печать
procedure TfrmMAC.mni_Pr_43_25Click(Sender: TObject);
begin

  if f_logo then
  begin
  // задаем принтер по умолчанию
    frmFRBigLabel.rp_43_25_qr.Report.PrintOptions.Printer := f_print_908;
    frmFRBigLabel.rp_43_25_qr.ShowReport();
    frmFRBigLabel.rp_43_25_qr.Print;
  end
  else
  begin
  // задаем принтер по умолчанию
    frmFRBigLabel.rp_43_25.Report.PrintOptions.Printer := f_print_908;
    frmFRBigLabel.rp_43_25.ShowReport();
    frmFRBigLabel.rp_43_25.Print;
  end;

end;

// новая этикетка размер 43х25 _ для нового шильда на корпус изделия *************************

procedure TfrmMAC.mni_sh_shild_43_25Click(Sender: TObject);
var
  f_nameDevice: string;
  f_font_size: Integer;
begin
// задаем место открытие окна
  frmFRBigLabel.Top := 5;
  frmFRBigLabel.Left := 5;

// запрашиваем размер шрифта для ввода наименования устройства
  f_font_size := StrToIntDef(InputBox('Размер печати шрифта устройства', 'Введите размер от 6 до 12', '8'), 10);
// проверяем корректность ввода шрифта
  if f_font_size in [6..12] then
    (frmFRBigLabel.rp_43_25_shild.FindObject('memNameDevice') as TFrxMemoView).Font.Size := f_font_size
  else
    (frmFRBigLabel.rp_43_25_shild.FindObject('memNameDevice') as TFrxMemoView).Font.Size := 8;
  f_nameDevice := edtDevice.Text; // полное название устройства

 // присваеваем переменной memNameDevice  полное название устройства
  (frmFRBigLabel.rp_43_25_shild.FindObject('memNameDevice') as TFrxMemoView).Text := f_nameDevice;

 // выводим на экран отчет
  frmFRBigLabel.Show;
  Self.SetFocus;
  frmFRBigLabel.rp_43_25_shild.ShowReport();

 // гасим и зажигаем нужные пункты меню
  mni_sh_shild_43_25.Enabled := False;
  mni_Pr_shild_43_25.Enabled := True;
end;

// печать

procedure TfrmMAC.mni_Pr_shild_43_25Click(Sender: TObject);
begin
   // задаем принтер по умолчанию
  frmFRBigLabel.rp_43_25_shild.Report.PrintOptions.Printer := f_print_908;
  frmFRBigLabel.rp_43_25_shild.ShowReport();
  frmFRBigLabel.rp_43_25_shild.Print;
end;


// конец блока размер 43х25 ********************************************************************

// BarCode для маленькой этикетки ***********************************************
procedure TfrmMAC.mniShowSmallClick(Sender: TObject);
begin
 // задаем место открытие окна
  frmFRSmallLabel.Top := 5;
  frmFRSmallLabel.Left := 5;

  frmFRSmallLabel.Show;
  self.SetFocus;
// гасим и зажигаем пункты на главном меню
  mniPrintSmall.Enabled := True;
  mniShowSmall.Enabled := False;

  (frmFRSmallLabel.rpSmallLabel.FindObject('MTitle') as TFrxMemoView).Text := edtmod.text;
  frmFRSmallLabel.rpSmallLabel.ShowReport();
end;
// новая маленькая этикетка 30_20

procedure TfrmMAC.mni_ShowSmall_newClick(Sender: TObject);
begin
 // задаем место открытие окна
  frmFRSmallLabel.Top := 5;
  frmFRSmallLabel.Left := 5;

  frmFRSmallLabel.Show;
  self.SetFocus;

  (frmFRSmallLabel.rpSmallLabel_new.FindObject('mDevice') as TFrxMemoView).Text := edtmod.text;
  frmFRSmallLabel.rpSmallLabel_new.ShowReport();
 // гасим и зажигаем пункты на главном меню
  mni_PrintSmall_new.Enabled := True;
  mni_ShowSmall_new.Enabled := False;

end;
 // печать

procedure TfrmMAC.mni_PrintSmall_newClick(Sender: TObject);
begin
 // задаем принтер по умолчанию
  frmFRSmallLabel.rpSmallLabel_new.Report.PrintOptions.Printer := f_print_940;

  frmFRSmallLabel.rpSmallLabel_new.ShowReport;
  frmFRSmallLabel.rpSmallLabel_new.Print;
end;

// конец блока   новая маленькая этикетка 30_20



// печать маленькой этикетки
procedure TfrmMAC.mniPrintSmallClick(Sender: TObject);
begin
// задаем принтер по умолчанию
  frmFRSmallLabel.rpSmallLabel.Report.PrintOptions.Printer := f_print_940;

  frmFRSmallLabel.rpSmallLabel.ShowReport;
  frmFRSmallLabel.rpSmallLabel.Print;
end;


// BarCode для шильда
procedure TfrmMAC.mniShowShildClick(Sender: TObject);
begin
   // задаем место открытие окна
  frmShild.Top := 5;
  frmShild.Left := 5;
  // выбираем отчет стикера верификации


  frmShild.Show;
  self.SetFocus;
//  (frmShild.rpShild.FindObject('MShild') as TFrxMemoView).Text := edtmod.text;

// гасим и зажигаем пункты на главном меню
  mniPrintShild.Enabled := True;
  mniShowShild.Enabled := False;

  frmShild.rpShild.ShowReport();

end;

// печать для шильда
procedure TfrmMAC.mniPrintShildClick(Sender: TObject);
begin
// задаем принтер по умолчанию
  frmShild.rpShild.Report.PrintOptions.Printer := f_print_924;

  frmShild.rpShild.ShowReport;
  frmShild.rpShild.Print;
end;
// открытие отчета печати mac-адреса или общий отчет

procedure TfrmMAC.mnifrViewClick(Sender: TObject);
begin
// гасим пунк меню "Просмотр отчета" и зажигаем "Экспорт отчета" и "Печать"
  mnifrView.Enabled := False;
  mniExport.Enabled := True;
  mnifrPrint.Enabled := True;

  if utilityMAC then       // утилита mac адресов отключена true
       // утилита mac адресов отключена true
  begin
    frmFReport.Top := 5;
    frmFReport.Left := 5;

    frmFReport.Show;
    Self.SetFocus;
    frmFReport.frxprvwMac.Clear;
    frmFReport.frxrprtMac.ShowReport();
  end
  else
  begin
      // меняем размер шрифта при печати mac-адреса
//  ((frmFRSmallLabel.rpSmallLabel.FindObject('MTitle') as TFrxMemoView).Text := edtmod.text;
    if macSize then
      (frmFRList.frxrprtList.FindObject('MACadress') as TfrxMemoView).Font.Size := 11
    else
      (frmFRList.frxrprtList.FindObject('MACadress') as TfrxMemoView).Font.Size := 13;
   // задаем место открытие окна
    frmFRList.Top := 5;
    frmFRList.Left := 5;

    frmFRList.Show;
    Self.SetFocus;
    frmFRList.frxprvwList.Clear;
    frmFRList.frxrprtList.ShowReport();
  end;
end;

// открытие отчета стикер верификация  !!!!!!! new 12.2022
procedure TfrmMAC.mniNSticker_showClick(Sender: TObject);
var
  i: Integer;
  f_checked: string;
begin
// запрос на вводимую запись
  f_checked := InputBox('Версия верификации устройства', 'Введите номер версии', 'v 3.9.13');
  (frmStickCheck.frpStickCheck.FindObject('memStickCheck') as TfrxMemoView).Text := f_checked;

  // задаем место открытие окна
  frmStickCheck.Top := 5;
  frmStickCheck.Left := 5;

  frmStickCheck.Show;
  frmStickCheck.frpStickCheck.ShowReport();
// гасим и зажигаем нужные окна
  mniNSticker_show.Enabled := False;
  mniNSticker_printer.Enabled := True;
// переносим фокус на стикер верификации
  if Self.CanFocus then
    Self.SetFocus;

end;
// печать стикера верификации

procedure TfrmMAC.mniNSticker_printerClick(Sender: TObject);
begin

  // задаем принтер по умолчанию
  frmStickCheck.frpStickCheck.Report.PrintOptions.Printer := f_print_576;

  frmStickCheck.frpStickCheck.ShowReport();
  frmStickCheck.frpStickCheck.Print;
end;


// блок печати номера ремонта
procedure TfrmMAC.mniRangeClick(Sender: TObject);
var
  f_range: Integer;
  f_startNumber: Integer;
  i: Integer;
begin
 // гасим и зажигаем необходимые функции
  mniRange.Enabled := False;
  mniSh_range.Enabled := True;
  mniResetRange.Enabled := True;
// выбираем начальный номер и диапазон
  f_startNumber := StrToIntDef(InputBox('Ввод начального номера ремонта', 'Введите номер ремонта', '1'), 1);
  f_range := StrToIntDef(InputBox('Ввод диапазона ремонта', 'Введите диапазон от 1 до 100', '0'), 0);
  // открываем таблицу для записи
  fdService.Close;
  fdService.Open;
  fdService.First;
  if f_range in [1..100] then
  begin
    for i := 0 to f_range - 1 do
    begin
      fdService.Append;
      fdService.Fields[0].AsString := IntToStr(f_startNumber + i);
      fdService.Next;
    end;

  end
  else
  begin
    ShowMessage('Некорректный ввод');
  end;
//  frmTestGrid.Show;
end;
//  печать этикетки "На списание"  *****************************************************************

procedure TfrmMAC.mniServece_Write_off_showClick(Sender: TObject);
var
  i: Integer;
  f_checked: Integer;
begin
       // задаем место открытие окна
  frmStickCheck.Top := 5;
  frmStickCheck.Left := 5;
  // гасим и зажигаем необходимые пункты меню
  mniSh_range.Enabled := False;
  mniPr_range.Enabled := True;

  // позже реализуем выбор шрифта       &&&&&&&&&&&&&&&&&&&&&&&&??????????????????????

//     f_checked := StrToIntDef(InputBox('Ввод размера шрифта','Введите размер шрифта','14'), 14);

  frmStickCheck.Show;
  frmStickCheck.frpWrite_off.ShowReport();

end;
 // Печать

procedure TfrmMAC.mniServece_Write_off_printClick(Sender: TObject);
begin
   // задаем принтер по умолчанию
  frmStickCheck.rpLabService.Report.PrintOptions.Printer := f_print_2824;

  frmStickCheck.frpWrite_off.ShowReport();
  frmStickCheck.frpWrite_off.Print;
end;



//**************************************************************************************************
// просмотр

procedure TfrmMAC.mniSh_rangeClick(Sender: TObject);
var
  f_checked: Integer;
begin
     // задаем место открытие окна
  frmStickCheck.Top := 5;
  frmStickCheck.Left := 5;
  // гасим и зажигаем необходимые пункты меню
  mniSh_range.Enabled := False;
  mniPr_range.Enabled := True;

  // позже реализуем выбор шрифта       &&&&&&&&&&&&&&&&&&&&&&&&??????????????????????

//     f_checked := StrToIntDef(InputBox('Ввод размера шрифта','Введите размер шрифта','14'), 14);

  frmStickCheck.Show;
  frmStickCheck.rpLabService.ShowReport();

end;
// печать

procedure TfrmMAC.mniPr_rangeClick(Sender: TObject);
begin
  // задаем принтер по умолчанию
  frmStickCheck.rpLabService.Report.PrintOptions.Printer := f_print_576;

  frmStickCheck.rpLabService.ShowReport();
  frmStickCheck.rpLabService.Print;
end;

// сброс
procedure TfrmMAC.mniResetRangeClick(Sender: TObject);
begin
 // гасим и зажигаем необходимые пункты меня
  mniRange.Enabled := True;
  mniSh_range.Enabled := False;
  mniPr_range.Enabled := False;
  mniResetRange.Enabled := False;
 // дата
  dtpMacAdress.Visible := False;

  mniDate_Apply.Enabled := True;
  mniDate_Show.Enabled := False;
  mniDate_Print.Enabled := False;
  mniDate_Calendar.Enabled := True;


 // закрытие отчетов
  frmStickCheck.Close;
 // очистка отчетов
  frmStickCheck.rpLabService.PreviewPages.Clear;

end;
// конец блока печати номера ремонта ***************************************************************
//**************************************************************************************************
// начало блока печати стикера даты

procedure TfrmMAC.mniDate_CalendarClick(Sender: TObject);
begin
  dtpMacAdress.Visible := True;
  dtpMacAdress.Date := Now;
end;
// apply

procedure TfrmMAC.mniDate_ApplyClick(Sender: TObject);
begin
  dtpMacAdress.Visible := False;     // выключаем календарь

  mniDate_Apply.Enabled := False;
  mniDate_Show.Enabled := True;
//  mniDate_Print.Enabled := True;
end;
// show
procedure TfrmMAC.mniDate_ShowClick(Sender: TObject);
var
  f_checked: Integer;
  f_date: string;
begin
 // гасим или зажигаем нужные пункты меню
  mniDate_Show.Enabled := False;
  mniDate_Print.Enabled := True;
// задаем место открытие окна
  frmStickCheck.Top := 5;
  frmStickCheck.Left := 5;

  f_date := DateToStr(dtpMacAdress.Date);

  f_date := DataModuleMacIterator.ReverseDate(f_date);

  if f_date = '' then
    f_date := '0000.00.00';

  f_checked := StrToIntDef(InputBox('Ввод размера шрифта', 'Введите размер шрифта от 16 до 22', '18'), 18);

// проверка
  if not (f_checked in [16..22]) then
    f_checked := 18;

  (frmStickCheck.rpLabDate.FindObject('memDate') as TfrxMemoView).Font.Size := f_checked;
  (frmStickCheck.rpLabDate.FindObject('memDate') as TfrxMemoView).Text := f_date;

  frmStickCheck.Show;
  frmStickCheck.rpLabDate.ShowReport();
end;
// print

procedure TfrmMAC.mniDate_PrintClick(Sender: TObject);
begin
// задаем принтер по умолчанию
  frmStickCheck.rpLabDate.Report.PrintOptions.Printer := f_print_576;

  frmStickCheck.rpLabDate.ShowReport();
  frmStickCheck.rpLabDate.Print;
end;
//  выбор даты в календаре

procedure TfrmMAC.dtpMacAdressClick(Sender: TObject);
begin
  mniDate_Calendar.Enabled := False;
end;


// конец блока печати стикера даты   ***************************************************************

// Меню - "Ведущий"& "Ведомый"

// master
procedure TfrmMAC.mniListShowClick(Sender: TObject);
begin
// задаем место открытие окна
  frmStickCheck.Top := 5;
  frmStickCheck.Left := 5;
// работа с меню
  mniListSlave.Enabled := False;
  mniListMaster.Enabled := False;
  mniListPrint.Enabled := True;

// показываем
  frmStickCheck.Show;
  frmStickCheck.frpModem.ShowReport();
end;
// slave
procedure TfrmMAC.mniListSlaveClick(Sender: TObject);
begin
 // задаем место открытие окна
  frmStickCheck.Top := 5;
  frmStickCheck.Left := 5;
// работа с меню
  mniListSlave.Enabled := False;
  mniListMaster.Enabled := False;
  mniListPrint.Enabled := True;

// переключение флага ведущего
   f_master := False;

// показываем
  frmStickCheck.Show;
  frmStickCheck.frpModem_s.ShowReport();
end;


// печать
procedure TfrmMAC.mniListPrintClick(Sender: TObject);
begin

  frmStickCheck.frpModem.ShowReport();
  if f_master then
  begin
  // задаем принтер по умолчанию
    frmStickCheck.frpModem.Report.PrintOptions.Printer := f_print_576;
    frmStickCheck.frpModem.Print;
  end
  else
  begin
      // задаем принтер по умолчанию
    frmStickCheck.frpModem_s.Report.PrintOptions.Printer := f_print_576;
    frmStickCheck.frpModem_s.Print;
  end;

end;
// сброс  Меню - "Ведущий"& "Ведомый"

procedure TfrmMAC.mniLisResetClick(Sender: TObject);
var
  i: Integer;
begin
  // работа с меню
  mniListSlave.Enabled := True;
  mniListMaster.Enabled := True;
  mniListPrint.Enabled := False;
 // сброс отчетов
// закрытие отчетов
  frmStickCheck.Close;

// очистка отчетов
  frmStickCheck.frpStickCheck.PreviewPages.Clear;

  // сброс master
  f_master := True;
end;








// **************** конец блока  Меню - "Ведущий"& "Ведомый"
// открытие формы со списком модулей и устройств

procedure TfrmMAC.mniLbShow_58_60Click(Sender: TObject);
begin
  if not (Sender is TMenuItem) then
    Exit;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ShowMessage('открыт 58х60');
      end;
    1:
      begin
        ShowMessage('открыт 100х72');
      end;
    2:
      begin
        ShowMessage('открыт 100х150');
      end;

  end;
end;

procedure TfrmMAC.mniListDeviceClick(Sender: TObject);
var
  i: Integer;
begin
//  frmMAC.Top := 10;
//  frmMAC.Left := 10;
  frmMAC.Hide;
  frmListDevice := TfrmListDevice.Create(nil);
  frmListDevice.Show;
end;

// процедура закрытия формы
procedure TfrmMAC.mniExitClick(Sender: TObject);
begin
  frmMAC.Close;
end;

// закрытие формы
procedure TfrmMAC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fdmtblMac.Close;
  fdmtblTitle.Close;
  fdmtblBarCode.Close;
end;

procedure TfrmMAC.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  f_question: Word;
  f_ini: TIniFile;
begin
    // отказ от записи в конфигурационный файл последнега адреса плюс 1
  if f_NoShowAddres then
  begin
    CanClose := True;
  end
  else
  begin
    f_question := MessageBox(handle, PChar('Сохранение MAC-адреса?'), PChar('Сохранить MAC-адрес в файл конфигурации!'), MB_YESNO + MB_ICONQUESTION);
    case f_question of
      IDYES:
        begin
          // описать загрузку ini-файла конфигурации print_config.ini
          if not (Length(f_LastMAC) = 8) then
          begin
            CanClose := True;
            Exit
          end;
//          f_iniPath := ExtractFilePath(Application.ExeName) + 'print_config.ini';
          f_ini := TIniFile.Create(path_mac);
          // Записываем файл конфигурации  выбранного семейства изделий
          case global_f_mac of
            0:
              begin
                IniOptions_mac.f_LastMAC_atlanta := f_LastMAC;
                IniOptions_mac.f_date_atlanta := DateToStr(now);
              end;
            1:
              begin
                IniOptions_mac.f_LastMAC_topaz := f_LastMAC;
                IniOptions_mac.f_date_topaz := DateToStr(now);
              end;
            2:
              begin
                IniOptions_mac.f_LastMAC_ksk := f_LastMAC;
                IniOptions_mac.f_date_ksk := DateToStr(now);
              end;
            3:
              begin
                IniOptions_mac.f_LastMAC_corundum := f_LastMAC;
                IniOptions_mac.f_date_corundum := DateToStr(now);
              end
          else
            Abort
          end;

//          IniOptions.f_LastMAC := f_LastMAC;     // последний mac-адрес плюс один
// сохраняем путь к принтерам по умолчанию
          IniOptions.f_print_924 := f_print_924;
          IniOptions.f_print_940 := f_print_940;
          IniOptions.f_print_908 := f_print_908;
          IniOptions.f_print_576 := f_print_576;
          IniOptions.f_print_160 := f_print_160;
          IniOptions.f_print_2824 := f_print_2824;

        // Дата
           // инициализируем переменные времени
          IniOptions_mac.f_date_valid := DateToStr(now);
          IniOptions_mac.f_time_valid := TimeToStr(now);

          IniOptions.SaveToFile(f_iniPath);
          IniOptions_mac.SaveToFile(path_mac);
//          ShowMessage('Сохраняем');
          MyFloatingMessage(3, frmMAC);
          // очищаем память
          f_ini.Free;
        end;
      IDNO:
        begin
//          ShowMessage('Не Сохраняем');
          MyFloatingMessage(4, frmMAC);
        end;
    end;
    CanClose := True;
  end;
end;


// шильд без mac-адреса

procedure TfrmMAC.mni_sh_shild_43_25_smallClick(Sender: TObject);
var
  f_nameDevice: string;
  f_font_size: Integer;
begin
// задаем место открытие окна
  frmFRBigLabel.Top := 5;
  frmFRBigLabel.Left := 5;

// запрашиваем размер шрифта для ввода наименования устройства
  f_font_size := StrToIntDef(InputBox('Размер печати шрифта устройства', 'Введите размер от 6 до 12', '8'), 10);
// проверяем корректность ввода шрифта
  if f_font_size in [6..12] then
    (frmFRBigLabel.rp_43_25_noMAC.FindObject('memNameDevice') as TFrxMemoView).Font.Size := f_font_size
  else
    (frmFRBigLabel.rp_43_25_noMAC.FindObject('memNameDevice') as TFrxMemoView).Font.Size := 8;
  f_nameDevice := edtDevice.Text; // полное название устройства

 // присваеваем переменной memNameDevice  полное название устройства
  (frmFRBigLabel.rp_43_25_noMAC.FindObject('memNameDevice') as TFrxMemoView).Text := f_nameDevice;

 // выводим на экран отчет
  frmFRBigLabel.Show;
  Self.SetFocus;
  frmFRBigLabel.rp_43_25_noMAC.ShowReport();

 // гасим и зажигаем нужные пункты меню
  mni_sh_shild_43_25_small.Enabled := False;
  mni_Pr_shild_43_25_small.Enabled := True;
end;


// печать
procedure TfrmMAC.mni_Pr_shild_43_25_smallClick(Sender: TObject);
begin
   // задаем принтер по умолчанию
  frmFRBigLabel.rp_43_25_noMAC.Report.PrintOptions.Printer := f_print_908;
  frmFRBigLabel.rp_43_25_noMAC.ShowReport();
  frmFRBigLabel.rp_43_25_noMAC.Print;
end;


// печать этикетки маркировки изделия
// просмотр

procedure TfrmMAC.mniMarking_show_58x40Click(Sender: TObject);
var
  i: Integer;
  f_size: Integer;
  f_text : string;
begin
  f_size := 8;
  if not (Sender is TMenuItem) then
    exit;

  case (Sender as TMenuItem).Tag of
    5840:
      begin
      // гасим и зажигаем пункты на главном меню
        mniMarking_show_58x40.Enabled := False;
        mniMarking_print_58x40.Enabled := True;
      // запрашиваем размер шрифта по умолчанию 8
        f_size := StrToIntDef(InputBox('Ввод размера шрифта', 'Введите размер от 6 до 32', '8'), 8);

        if f_size in [6..32] then
          ShowMessage('Размер шрифта: ' + IntToStr(f_size))
        else
          f_size := 8;

      // ввод необходимого текста
        f_text := (InputBox('Ввод текста для печати', 'Введите надпись', 'Этикетка пустая'));

      // заполняем отчет
        (frmMarking.rp_lab_58x40.FindObject('memTitle') as TfrxMemoView).Font.Size := f_size;
        (frmMarking.rp_lab_58x40.FindObject('memTitle') as TfrxMemoView).Text := f_text;

      // выводим отчет
        frmMarking.rp_lab_58x40.ShowReport();

      end;

    4325:
      begin
      // гасим и зажигаем пункты на главном меню
        mniMarking_show_43x25.Enabled := False;
        mniMarking_print_43x25.Enabled := True;

      // запрашиваем размер шрифта по умолчанию 8
        f_size := StrToIntDef(InputBox('Ввод размера шрифта', 'Введите размер от 6 до 24', '8'), 8);

        if f_size in [6..24] then
          ShowMessage('Размер шрифта: ' + IntToStr(f_size))
        else
          f_size := 8;

      // ввод необходимого текста
        f_text := (InputBox('Ввод текста для печати', 'Введите надпись', 'Этикетка пустая'));

      // заполняем отчет
        (frmMarking.rp_lab_43x25.FindObject('memTitle') as TfrxMemoView).Font.Size := f_size;
        (frmMarking.rp_lab_43x25.FindObject('memTitle') as TfrxMemoView).Text := f_text;

      // выводим отчет
        frmMarking.rp_lab_43x25.ShowReport();
      end;

    4012:
      begin

      // гасим и зажигаем пункты на главном меню
        mniMarking_show_40x12.Enabled := False;
        mniMarking_print_40x12.Enabled := True;

      // запрашиваем размер шрифта по умолчанию 8
        f_size := StrToIntDef(InputBox('Ввод размера шрифта', 'Введите размер от 6 до 18', '8'), 8);

        if f_size in [6..18] then
          ShowMessage('Размер шрифта: ' + IntToStr(f_size))
        else
          f_size := 8;

      // ввод необходимого текста
        f_text := (InputBox('Ввод текста для печати', 'Введите надпись', 'Этикетка пустая'));

      // заполняем отчет
        (frmMarking.rp_lab_40x12.FindObject('memTitle') as TfrxMemoView).Font.Size := f_size;
        (frmMarking.rp_lab_40x12.FindObject('memTitle') as TfrxMemoView).Text := f_text;

      // выводим отчет
        frmMarking.rp_lab_40x12.ShowReport();
      end;

  end;

// задаем место открытие окна
  frmMarking.Top := 5;
  frmMarking.Left := 5;
  frmMarking.Show;
  Self.SetFocus;
end;
// печать

procedure TfrmMAC.mniMarking_print_58x40Click(Sender: TObject);
var
  i: Integer;
begin
  if not (Sender is TMenuItem) then
    exit;

  case (Sender as TMenuItem).Tag of
    5840:
      begin
        frmMarking.rp_lab_58x40.Report.PrintOptions.Printer := f_print_2824;

        frmMarking.Show;
        frmMarking.rp_lab_58x40.Print;
      end;

    4325:
      begin
        frmMarking.rp_lab_43x25.Report.PrintOptions.Printer := f_print_908;

        frmMarking.Show;
        frmMarking.rp_lab_43x25.Print;
      end;

    4012:
      begin
        frmMarking.rp_lab_40x12.Report.PrintOptions.Printer := f_print_924;

        frmMarking.Show;
        frmMarking.rp_lab_40x12.Print;
      end;

  end;
end;


// сбрасываем отчеты
procedure TfrmMAC.mniMarking_ResetClick(Sender: TObject);
var
  i: integer;
begin
// сбрасываем отчеты
  frmMarking.Close;
// очистка отчетов
  frmMarking.rp_lab_58x40.PreviewPages.Clear;
  frmMarking.rp_lab_43x25.PreviewPages.Clear;
  frmMarking.rp_lab_40x12.PreviewPages.Clear;
// гасим и зажигаем необходимые пункты меню

  mniMarking_show_58x40.Enabled := True;
  mniMarking_print_58x40.Enabled := False;

  mniMarking_show_43x25.Enabled := True;
  mniMarking_print_43x25.Enabled := False;

  mniMarking_show_40x12.Enabled := True;
  mniMarking_print_40x12.Enabled := False;

end;

end.

