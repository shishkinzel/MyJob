unit MacAdressIterator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, dmMacIterator, FShild,
  frmFastReportMac, FFRBigLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, System.ImageList, Vcl.ImgList, Data.DB, Barcode,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, FFRSmallLabel, FListDevece,
  frmFReportIDandMAC, frmFReportBarCodeLong,  FShowSoft, frmFReportGen_QR,
  FireDAC.Stan.StorageJSON, frmFastReportList, fTest,Vcl.DBCtrls;


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
    mniLabelBig: TMenuItem;
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
      fileBarCode : TextFile;        // для хранения данных формирования штрих-кода
      fileBarCodeLong : TextFile;    // для хранения данных формирования длинного штрих-кода
      utilityMAC: Boolean;           // флаг утилиты false - Печать МАС- адресов
      fnameDevice: string;           // наименование устройства
      ffirstOrderBit: string;        // начальный МАС-адрес для итерации
      fstepIterator: string;         // шаг итерации МАС-адреса
      ffirstIdDevice: string;        // начальный серийный номер комплекта
      fquantityDevice: string;       // количество устройств
      stepPrintBarCode : Integer;     // шаг печати штрих-кода
      numberDeviceHigh : string;     // три старших разряда серийного номера
      fnumberDeviceHigh :  string;   // три старших разряда серийного номера с пробелами между триадами
      fbitBarCode : string;           // для печати mac в barcode
      ffirstIdDeviceBarCode : string; // для печати id в barcode
      macSize : Boolean;              // флаг для печати этикеток увеличенного mac-адреса
  public
  { Public declarations }
    const
      nameFile = 'id_mac_iterator.txt';
      nameBarCodeFile = 'bar_code.txt';
      nameFileBarCodeLong = 'bar_code_long.txt';
    var
      barCodeStream : TMemoryStream;
      idMAC: array[0..2] of Byte;
      idMACBarCode: array[0..2] of Byte;
  end;

var
  frmMAC: TfrmMAC;

implementation

uses
  IdGlobal, frxClass;
{$R *.dfm}
  // создание формы начальные настройки

procedure TfrmMAC.FormCreate(Sender: TObject);
begin
  utilityMAC := True;
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
end;


  procedure TfrmMAC.FormShow(Sender: TObject);
begin
   chkPrintTabClick(Self);
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
  // деактивируем группу mac adress
    lblHighOrderBit.Enabled := False;
    medtBit_4.Enabled := False;
    medtBit_5.Enabled := False;
    medtBit_6.Enabled := False;

    lblStepIterator.Enabled := False;
    seStepIterator.Enabled := False;

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
  s, numberS, rangeLast: string;
  s1, tmp, tmp1, tmp2: string;
  bit0, bit1, bit2: string;
  img: BITMAP;
begin
// установить шрифт отчета печати mac-адреса по умолчанию
  macSize := False;

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
  fnumberDeviceHigh := medtModule.Text + ' ' + medtDate.Text  + ' ' + medtGroup.Text;  // три старших разряда серийного номера с пробелами между триадами

//*******************************************************
  idModule := StrToIntDef(medtModule.Text, 0);
  idDate := StrToIntDef(medtDate.Text, 0);
  idGroup := StrToIntDef(medtGroup.Text, 0);
  idNumber := StrToIntDef(medtNumber.Text, 0);

// *******************************************************
  if not (chkPrintTab.Checked) then    // флажок печать этикетки снят
  begin
//
    if utilityMAC then           // утилита печати МАС-адресов выключена
    begin
//   формирование файла
      Rewrite(fileId);
      for i := 1 to quantity do
      begin
        beginNumberDevice := idNumber + (i - 1);
        numberS := Format('  ' + '%.3d', [beginNumberDevice]);
        s := Format('%.4d', [i]);
        Write(fileId, s);
        Write(fileId,DataModuleMacIterator.ArrayToString(idMAC));
        Write(fileId, fnumberDeviceHigh +  numberS);
        while stepMac <= stepIteration do
        begin
          DataModuleMacIterator.IncArrayOne(idMAC);
          Inc(stepMac);
        end;
        stepMac := 1;
        Writeln(fileId);
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
   //   формирование файла для этикетки
    barCodeStream := TMemoryStream.Create;
    Rewrite(fileId);
    for i := 1 to quantity do
    begin
      beginNumberDevice := idNumber + (i - 1);
      numberS := Format('%.3d', [beginNumberDevice]);
      s := Format('%.4d', [i]);
      Write(fileId, s);
      s := ' |' + medtModule.Text + medtDate.Text + medtGroup.Text;
      s1 := ' |' + medtModule.Text + ' ' + medtDate.Text  + ' ' + medtGroup.Text;
      Write(fileId, s);
      Write(fileId, numberS);
      Write(fileId, s1);
      Write(fileId, ' ' + numberS);
      Writeln(fileId);
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
   if chkAdvanceSetting.Checked  then
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
end;

// окончание блока выбора  **********************************************************

// процедура сброса

procedure TfrmMAC.btnRestartClick(Sender: TObject);
begin
if not(chkPrintTab.Checked) then
  begin
    if utilityMAC then
      edtDevice.SetFocus
    else
      medtBit_4.SetFocus;
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
    mniBarCodeLong.Enabled := False;
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
    mniLabel.Enabled := False;
    mniLabelAdvance.Enabled := False;
    chkPrintTab.Enabled := True;
    ShowMessage('Сбрасываем отчеты');
    btnApply.Enabled := True;
    btnRestart.Enabled := False;
// закрытие отчетов
    frmFRBigLabel.Close;
    frmFRSmallLabel.Close;
    frmShild.Close;
    frmFRList.Close;
// очистка отчетов
    frmFRBigLabel.rpBigLabel.PreviewPages.Clear;
    frmFRSmallLabel.rpSmallLabel.PreviewPages.Clear;
    frmShild.rpShild.PreviewPages.Clear;
    frmFRList.frxrprtList.PreviewPages.Clear;
// гасим окна печати
    mniPrintBig.Enabled := False;
    mniPrintSmall.Enabled := False;
    mniPrintShild.Enabled := False;
// зажигаем окна просмотра
     mniShowBig.Enabled := True;
     mniShowSmall.Enabled := True;
     mniShowShild.Enabled := True;
  end;
end;

// печать штрих кода *******************************************************
procedure TfrmMAC.mniApplyBarCodeClick(Sender: TObject);
var
  beginNumberDevice, range, stepMac, stepBarCode, numberBarCode: Integer;
  numBarCodeFR: Integer;
  s, numberS, numberSLong, rangeLast: string;
  s1, tmp, tmp1: string;
begin
// отключаем пунк меню "Применить"
   mniApplyBarCodeLong.Enabled := False;
// отключаем пункт QR-код семейство Топаз
  mniQRIDMAC.Enabled := False;
// открываем таблицу для заполниния **************************************
  range := stepIteration;
  stepMac := 1;
  stepBarCode := 1;
  numberBarCode := 1;
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
  while numberBarCode <= quantity do
  begin
    beginNumberDevice := idNumber + (numberBarCode - 1);
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
  numberS, numberSLong, rangeLast: string;
  s, s1, tmp, tmp1: string;
  hardWare: string;
begin
// гасим пунк -"Применить"
  mniApplay_IDandMAC.Enabled := False;
// открываем таблицу для заполниния **************************************
  range := stepIteration;
  stepMac := 1;
  stepBarCode := 1;
  numberBarCode := 1;
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
  if not (stepPrintBarCode in [5..10]) then
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
  while numberBarCode <= quantity do
  begin
    beginNumberDevice := idNumber + (numberBarCode - 1);
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


// процедура обработки генерации QR-кода
//начало блока *************************************************************************************

// процедура открытия окна для генератора QR-кода с выбором РМП
procedure TfrmMAC.mniShow_ORClick(Sender: TObject);
begin
  mniGen_QR_Apply.Enabled := True;
  frmShowSoft.cbb_rmp.Visible := True;
  frmShowSoft.mmoShowSoft.Enabled := False;
  frmShowSoft.btnCount.Enabled := False;
  frmShowSoft.btnApply.Enabled := False;
  frmShowSoft.ShowModal;
end;

procedure TfrmMAC.mniGen_QR_ApplyClick(Sender: TObject);
var
  i: Integer;
  tmp, s1: string;
begin
// активируем инструменты для  QR-кода
  mniGen_QR_ShowPrev.Enabled := True;
  mniGen_QR_Export.Enabled := True;
  mniGen_QR_Print.Enabled := True;
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
// предосмотр отчета генератора QR-кода
procedure TfrmMAC.mniGen_QR_ShowPrevClick(Sender: TObject);
begin
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
end;
// окончание блока генератора QR-кода **************************************************************

// обработка кнопок главного меню  *****************************************************************
procedure TfrmMAC.mnifrPrintClick(Sender: TObject);
begin
  if utilityMAC then
  begin
    frmFReport.frxrprtMac.ShowReport();
    frmFReport.frxrprtMac.Print;
  end
  else
  begin
    frmFRList.frxrprtList.ShowReport();
    frmFRList.frxrprtList.Print;
  end;
end;


procedure TfrmMAC.pdf1Click(Sender: TObject);
begin
  frmFReport.frxrprtMac.ShowReport();
  frmFReport.frxrprtMac.Export(frmFReport.frxpdfxprtMac);
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
  frmFRBigLabel.rpBigLabel.ShowReport;
  frmFRBigLabel.rpBigLabel.Print;
end;

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


// печать маленькой этикетки
procedure TfrmMAC.mniPrintSmallClick(Sender: TObject);
begin
  frmFRSmallLabel.rpSmallLabel.ShowReport;
  frmFRSmallLabel.rpSmallLabel.Print;
end;

// BarCode для шильда
procedure TfrmMAC.mniShowShildClick(Sender: TObject);
begin
   // задаем место открытие окна
  frmShild.Top := 5;
  frmShild.Left := 5;

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
  frmShild.rpShild.ShowReport;
  frmShild.rpShild.Print;
end;
// открытие отчета печати mac-адреса или общий отчет

procedure TfrmMAC.mnifrViewClick(Sender: TObject);
begin
  if utilityMAC then       // утилита mac адресов отключена true
  begin
    frmFReport.Show;
    frmFReport.frxprvwMac.Clear;
    frmFReport.frxrprtMac.ShowReport();
  end
  else
  begin
   // меняем размер шрифта при печати mac-адреса
//  ((frmFRSmallLabel.rpSmallLabel.FindObject('MTitle') as TFrxMemoView).Text := edtmod.text;
    if macSize then
      (frmFRList.frxrprtList.FindObject('MACadress') as TfrxMemoView).Font.Size := 10
    else
      (frmFRList.frxrprtList.FindObject('MACadress') as TfrxMemoView).Font.Size := 12;
   // задаем место открытие окна
    frmFRList.Top := 5;
    frmFRList.Left := 5;

    frmFRList.Show;
    Self.SetFocus;
    frmFRList.frxprvwList.Clear;
    frmFRList.frxrprtList.ShowReport();
  end;
end;




// открытие формы со списком модулей и устройств

procedure TfrmMAC.mniListDeviceClick(Sender: TObject);
var
  i: Integer;
begin
  frmMAC.Top := 10;
  frmMAC.Left := 10;
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

end.




