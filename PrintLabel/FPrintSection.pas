unit FPrintSection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus;

type
  TfrmPrintSection = class(TForm)
    mmPrintSection: TMainMenu;
    mniLabel: TMenuItem;
    mniLabelAdvanced: TMenuItem;
    mniID: TMenuItem;
    mniMAC: TMenuItem;
    mniNlittle: TMenuItem;
    mniNbig: TMenuItem;
    sepLab1: TMenuItem;
    mniNResetLab1: TMenuItem;
    mniNbig58_60: TMenuItem;
    mniNbig100_72: TMenuItem;
    mniNbig100_150: TMenuItem;
    sepLab2: TMenuItem;
    mniNResetLab2: TMenuItem;
    mniNidExecute: TMenuItem;
    mniNShowID: TMenuItem;
    mniNPrintID: TMenuItem;
    mniNLab3: TMenuItem;
    mniNResetLab3: TMenuItem;
    mniNmacExecute: TMenuItem;
    mniNLab4: TMenuItem;
    mniNResetLab4: TMenuItem;
    mniNShowmac: TMenuItem;
    mniNPrintmac: TMenuItem;
    mniNbig_mac: TMenuItem;
    pmmiSh30_20: TMenuItem;
    pmmiPr30_20: TMenuItem;
    pmmiSh58_40: TMenuItem;
    pmmiPr58_40: TMenuItem;
    pmmiSh58_40_mac: TMenuItem;
    pmmiPr58_40_mac: TMenuItem;
    pmmiSh58_60: TMenuItem;
    pmmiPr58_60: TMenuItem;
    pmmiSh100_72: TMenuItem;
    pmmiPr100_72: TMenuItem;
    pmmiSh100_150: TMenuItem;
    pmmiPr100_150: TMenuItem;
    ilPrintSelection_16: TImageList;
    ilPrintSelection_24_sub: TImageList;
    fonPrintSection: TImage;
    lbl_count: TLabel;
    lbl_dev: TLabel;
    lbl_id: TLabel;
    lbl_mac: TLabel;
    lbl_pac: TLabel;
    lbl_step: TLabel;
    mmReport: TMainMenu;
    mniSingleReport: TMenuItem;
    mniSRApply: TMenuItem;
    mniSRShow: TMenuItem;
    mniSRSep1: TMenuItem;
    mniSRSave: TMenuItem;
    mniSRPrint: TMenuItem;
    mniSRSep2: TMenuItem;
    mniSRReset: TMenuItem;
    mniTopaz: TMenuItem;
    mniCorund: TMenuItem;
    mniTopApply: TMenuItem;
    mniTopShow: TMenuItem;
    mniTopSep1: TMenuItem;
    mniTopSave: TMenuItem;
    mniTopPrint: TMenuItem;
    mniTopSep2: TMenuItem;
    mniTopReset: TMenuItem;
    mniCorApply: TMenuItem;
    mniCorShow: TMenuItem;
    mniCorSep1: TMenuItem;
    mniCorSave: TMenuItem;
    mniCorPrint: TMenuItem;
    mniCorSep2: TMenuItem;
    mniCorReset: TMenuItem;
    mniN43x25ST: TMenuItem;
    mniN43x25Sh: TMenuItem;
    mniN43x25Print: TMenuItem;
    mmPrintQR: TMainMenu;
    mniPrQR_Standart: TMenuItem;
    mniPrQR_Advanced: TMenuItem;
    mniPrQR_StApply: TMenuItem;
    mniPrQR_StShow: TMenuItem;
    mniPrQR_Separator1: TMenuItem;
    mniPrQR_StPrint: TMenuItem;
    mniPrQR_Separator2: TMenuItem;
    mniPrQR_StReset: TMenuItem;
    mniPrQR_AdApply: TMenuItem;
    mniPrQR__AdShow: TMenuItem;
    mniPrQR_Separator3: TMenuItem;
    mniPrQR__AdPrint: TMenuItem;
    mniPrQR_Separator4: TMenuItem;
    mniPrQR__AdReset: TMenuItem;
    pnlAdv: TPanel;
    lbledtOne: TLabeledEdit;
    lbledtTwo: TLabeledEdit;
    lbledtThree: TLabeledEdit;
    lbledtFour: TLabeledEdit;
    lbledtFive: TLabeledEdit;
    lbledtSix: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniNShowmacClick(Sender: TObject);
    procedure mniNResetLab4Click(Sender: TObject);
    procedure mniNPrintmacClick(Sender: TObject);
    procedure mniNPrintIDClick(Sender: TObject);
    procedure mniSRShowClick(Sender: TObject);
    procedure mniSRApplyClick(Sender: TObject);
    procedure mniTopApplyClick(Sender: TObject);
    procedure mniTopShowClick(Sender: TObject);
    procedure mniTopPrintClick(Sender: TObject);
    procedure mniTopSaveClick(Sender: TObject);
    procedure mniSRSaveClick(Sender: TObject);
    procedure mniSRResetClick(Sender: TObject);
    procedure mniCorApplyClick(Sender: TObject);
    procedure mniCorShowClick(Sender: TObject);
    procedure mniCorPrintClick(Sender: TObject);
    procedure mniCorSaveClick(Sender: TObject);
//    procedure mniN43x25ShClick(Sender: TObject);
    procedure mniN43x25PrintClick(Sender: TObject);
    procedure pmmiPr30_20Click(Sender: TObject);
    procedure pmmiPr58_40_macClick(Sender: TObject);
    procedure pmmiPr58_40Click(Sender: TObject);
    procedure mniServeceSettingClick(Sender: TObject);
    procedure mniPrQR_AdvancedClick(Sender: TObject);
    procedure mniPrQR_StApplyClick(Sender: TObject);
    procedure mniPrQR_StShowClick(Sender: TObject);
    procedure mniPrQR_StPrintClick(Sender: TObject);
    procedure mniPrQR_AdApplyClick(Sender: TObject);
    procedure mniPrQR__AdShowClick(Sender: TObject);
    procedure mniPrQR__AdPrintClick(Sender: TObject);
    procedure mniPrQR_StResetClick(Sender: TObject);

  private
    { Private declarations }
    var
      f_print_924: string;
      f_print_940: string;
      f_print_908: string;
      f_print_2824: string;
  public
    { Public declarations }
    var
    f_pos1 : string;         // переменные для qr-кода
    f_pos2 : string;         // переменные для qr-кода
    f_pos3 : string;         // переменные для qr-кода
    f_pos4 : string;         // переменные для qr-кода
    f_pos5 : string;         // переменные для qr-кода
    f_pos6 : string;         // переменные для qr-кода
  end;

var
  frmPrintSection: TfrmPrintSection;

implementation

uses
  FSelection, F_FR_Label, F_FR_List, FMain, FShowSoft, unit_ini, IniFiles, F_FR_Table, FdbmPrintLabel, FTest,
  frxClass, frxBarcode, frxPreview, frxDesgn, frxBarcode2D;
{$R *.dfm}

procedure TfrmPrintSection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// убираем пункты
  frmPrintSection.lbledtOne.Visible := False;
  frmPrintSection.lbledtTwo.Visible := False;
  frmPrintSection.lbledtThree.Visible := False;
  frmPrintSection.lbledtFour.Visible := False;
  frmPrintSection.lbledtFive.Visible := False;
  frmPrintSection.lbledtSix.Visible := False;

  frmPrintSection.lbledtOne.Enabled := False;
  frmPrintSection.lbledtTwo.Enabled := False;
  frmPrintSection.lbledtThree.Enabled := False;
  frmPrintSection.lbledtFour.Enabled := False;
  frmPrintSection.lbledtFive.Enabled := False;
  frmPrintSection.lbledtSix.Enabled := False;

  mniNResetLab4Click(Self);
  ModalResult := mrOk;
  Close;
end;
//   изменение шрифта главного меню

procedure TfrmPrintSection.FormCreate(Sender: TObject);
var
  f_ini: TIniFile;
begin
  Screen.MenuFont.Size := 14;
  Screen.MenuFont.Name := 'Roboto';
 // принтеры по умолчанию
//  f_ini := TIniFile.Create(f_print_config);
  IniOptions.LoadFromFile(f_print_config);
  f_print_924 := IniOptions.f_print_924;
  f_print_940 := IniOptions.f_print_940;
  f_print_908 := IniOptions.f_print_908;
  f_print_2824 := IniOptions.f_print_2824;
//  f_ini.Free;
// присваиваем переменным f_posX - начальные значения
  f_pos1 := lbledtOne.Text;
  f_pos2 := lbledtTwo.Text;
  f_pos3 := lbledtThree.Text;
  f_pos4 := lbledtFour.Text;
  f_pos5 := lbledtFive.Text;
  f_pos6 := lbledtSix.Text;

end;

procedure TfrmPrintSection.FormShow(Sender: TObject);
var
  i: Integer;
begin
// Заполняем поля "Введеные данные устройства"
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TLabel) then
    begin
      case (Self.Components[i] as TLabel).Tag of
        100:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[0];
        101:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[1];
        102:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[2];
        103:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[3];
        104:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[4];
        105:
          (Self.Components[i] as TLabel).Caption := frmMain.f_myarray[5];
      end;
    end;
  end;

end;


// вызываем отчеты

procedure TfrmPrintSection.mniNShowmacClick(Sender: TObject);
var
  i: Integer;
  f_fontSize : Integer;
begin
  if not (Sender is TMenuItem) then
    exit;

  frmFR_Label.Top := 10;
  frmFR_Label.Left := 10;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i].Tag = (Sender as TMenuItem).Tag then
    begin
      case Self.Components[i].Tag of
        101:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            mniNShowID.Enabled := False;
            mniNPrintID.Enabled := True;
            frmFR_Label.Show;
            frmFR_Label.frStic_id_40_12.ShowReport();
          end;
        102:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            mniNShowmac.Enabled := False;
            mniNPrintmac.Enabled := True;

          // выбираем шрифт печати
            if frmMain.f_size_sticker then
              (frmFR_Label.frStic_mac_40_12.FindObject('mac') as TfrxMemoView).Font.Size := 11
            else
              (frmFR_Label.frStic_mac_40_12.FindObject('mac') as TfrxMemoView).Font.Size := 13;

            frmFR_Label.Show;
            frmFR_Label.frStic_mac_40_12.ShowReport();

          end;
        3020:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            pmmiSh30_20.Enabled := False;
            pmmiPr30_20.Enabled := True;

          //  работаем с этикеткой 3020
            (frmFR_Label.frLabel_30_20.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtPackage.Text;
            frmFR_Label.Show;
            frmFR_Label.frLabel_30_20.ShowReport();

          end;
        4325:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            mniN43x25Print.Enabled := True;
            mniN43x25Sh.Enabled := False;

          //  работаем с этикеткой 4325
          // выбор шрифта от 6 до 10 пунктов
            f_fontSize := StrToIntDef(InputBox('Ввод размера шрифта наименования устройства', 'Введите размер от 6 до 10', '8'), 8);
            if f_fontSize in [6..10] then
              ShowMessage('Размер шрифта: ' + IntToStr(f_fontSize))
            else
              f_fontSize := 8;

            (frmFR_Label.frLabel_43_25.FindObject('memNameDev') as TfrxMemoView).Font.Size := f_fontSize;
            (frmFR_Label.frLabel_43_25.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtDevice.Text;
            frmFR_Label.Show;
            frmFR_Label.frLabel_43_25.ShowReport();
          end;
        5840:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            pmmiSh58_40.Enabled := False;
            pmmiPr58_40.Enabled := True;
          //  работаем с этикеткой 5840
            (frmFR_Label.frLabel_58_40.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtDevice.Text;
            frmFR_Label.Show;
            frmFR_Label.frLabel_58_40.ShowReport();
          end;
        5841:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            pmmiSh58_40_mac.Enabled := False;
            pmmiPr58_40_mac.Enabled := True;
          //  работаем с этикеткой 5841
          (frmFR_Label.frLabel_58_40_adv.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtDevice.Text;
            frmFR_Label.Show;
            frmFR_Label.frLabel_58_40_adv.ShowReport();
          end;
        5860:
          begin
            if Self.CanFocus then
              self.SetFocus;
                    // гасим и зажигаем необходимые пункты меню
            pmmiSh58_60.Enabled := False;
            pmmiPr58_60.Enabled := True;
          end;
        10072:
          begin
            if Self.CanFocus then
              self.SetFocus;
                    // гасим и зажигаем необходимые пункты меню
            pmmiSh100_72.Enabled := False;
            pmmiPr100_72.Enabled := True;
          end;
        100150:
          begin
            if Self.CanFocus then
              self.SetFocus;
                    // гасим и зажигаем необходимые пункты меню
            pmmiSh100_150.Enabled := False;
            pmmiPr100_150.Enabled := True;
          end;
      else
        Continue;
      end;
    end;
  end;

end;

procedure TfrmPrintSection.mniPrQR_AdvancedClick(Sender: TObject);
begin
  pnlAdv.Enabled := True;
  if lbledtOne.CanFocus then
    lbledtOne.SetFocus;
end;








// вызываем печать
procedure TfrmPrintSection.pmmiPr30_20Click(Sender: TObject);
begin
   frmFR_Label.frLabel_30_20.Report.PrintOptions.Printer := f_print_940;

  frmFR_Label.frLabel_30_20.ShowReport();
  frmFR_Label.frLabel_30_20.Print;
end;

procedure TfrmPrintSection.mniN43x25PrintClick(Sender: TObject);
begin
 frmFR_Label.frLabel_43_25.Report.PrintOptions.Printer := f_print_908;

  frmFR_Label.Show;
  frmFR_Label.frLabel_43_25.Print;
end;

procedure TfrmPrintSection.pmmiPr58_40Click(Sender: TObject);
begin
  frmFR_Label.frLabel_58_40.Report.PrintOptions.Printer := f_print_2824;

  frmFR_Label.Show;
  frmFR_Label.frLabel_58_40.Print;
end;

procedure TfrmPrintSection.pmmiPr58_40_macClick(Sender: TObject);
begin
   frmFR_Label.frLabel_58_40_adv.Report.PrintOptions.Printer := f_print_2824;

  frmFR_Label.Show;
  frmFR_Label.frLabel_58_40_adv.Print;
end;

procedure TfrmPrintSection.mniNPrintIDClick(Sender: TObject);
begin
  frmFR_Label.frStic_id_40_12.Report.PrintOptions.Printer := f_print_924;

  frmFR_Label.frStic_id_40_12.ShowReport();
  frmFR_Label.frStic_id_40_12.Print;
end;

procedure TfrmPrintSection.mniNPrintmacClick(Sender: TObject);
begin
  frmFR_Label.frStic_mac_40_12.Report.PrintOptions.Printer := f_print_924;

  frmFR_Label.frStic_mac_40_12.ShowReport();
  frmFR_Label.frStic_mac_40_12.Print;
end;


// сбрасываем все
procedure TfrmPrintSection.mniNResetLab4Click(Sender: TObject);
begin
// сбрасываем отчеты
  frmFR_Label.Close;
  frmFR_Label.frStic_mac_40_12.PreviewPages.Clear;

 // гасим и зажигаем необходимые пункты меню
  // серийный номер
  mniNShowID.Enabled := True;
  mniNPrintID.Enabled := False;
  // mac-адресс
  mniNShowmac.Enabled := True;
  mniNPrintmac.Enabled := False;
  //label 30_20
  pmmiSh30_20.Enabled := True;
  pmmiPr30_20.Enabled := False;
  //label 43_25
  mniN43x25Sh.Enabled := True;
  mniN43x25Print.Enabled := False;
  //label 58_40
  pmmiSh58_40.Enabled := True;
  pmmiPr58_40.Enabled := False;
    //label 58_40_mac
  pmmiSh58_40_mac.Enabled := True;
  pmmiPr58_40_mac.Enabled := False;

  //label 58_60
  pmmiSh58_60.Enabled := True;
  pmmiPr58_60.Enabled := False;
  //label 100_72
  pmmiSh100_72.Enabled := True;
  pmmiPr100_72.Enabled := False;
  //label 100_150
  pmmiSh100_150.Enabled := True;
  pmmiPr100_150.Enabled := False;

end;
 {Работа с вторым пунктом меню}

 // Простой отчет
// выполнить
procedure TfrmPrintSection.mniSRApplyClick(Sender: TObject);
begin
  (frmFR_Table.frxReTabList.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtDevice.Text;
  (frmFR_Table.frxReTabList.FindObject('memmac') as TfrxMemoView).Text := frmMain.medtMAC.Text;
  (frmFR_Table.frxReTabList.FindObject('memID') as TfrxMemoView).Text := frmMain.medtID.Text;
  (frmFR_Table.frxReTabList.FindObject('memStep') as TfrxMemoView).Text := frmMain.seStep.Value.ToString;
  (frmFR_Table.frxReTabList.FindObject('memQuantity') as TfrxMemoView).Text := frmMain.seCount.Value.ToString;

end;

// просмотр
procedure TfrmPrintSection.mniSRShowClick(Sender: TObject);
begin
  frmFR_Table.Show;
  frmFR_Table.frxReTabList.ShowReport();
end;
// сохранить отчет в pdf
procedure TfrmPrintSection.mniSRSaveClick(Sender: TObject);
begin
  frmFR_Table.frxReTabList.ShowReport();
 frmFR_Table.frxReTabList.Export(frmFR_Table.frxExPDF);
end;


{Семейство Топаз }
// выполнить
procedure TfrmPrintSection.mniTopApplyClick(Sender: TObject);
var
  f_step: Integer;
  i: Integer;
  f_hw: string;
begin
  i := 0;
 // кодирум hw топаза
  f_hw := InputBox('Введите Hard Ware модуля Топаз', 'Введите HW ', '00.01.10');
  (frmFR_Table.frxReTopaz.FindObject('mem_hw') as TfrxMemoView).Text := f_hw;
  (frmFR_Table.frxReTopaz.FindObject('bc_hw') as TfrxBarcode2DView).Text := f_hw;

  f_step := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 1 до 10', '10'), 10);

  if f_step in [1..10] then
  begin
    try
  // пытаемся заполнить отчет
      dbmPrintLabel.fdmtblReport.Close;
      dbmPrintLabel.fdmtblReport.Open;
      dbmPrintLabel.fdmtblReport.First;
      dbmPrintLabel.fdmtblPrint.First;
      while not dbmPrintLabel.fdmtblPrint.Eof do
      begin
        with dbmPrintLabel.fdmtblPrint do
        begin
          if i = 0 then
          begin
           {Записываем код из таблицы в отчет}
            dbmPrintLabel.fdmtblReport.Append;
            dbmPrintLabel.fdmtblReport.Fields[0] := Fields[0];
            dbmPrintLabel.fdmtblReport.Fields[1] := Fields[6];
            dbmPrintLabel.fdmtblReport.Fields[2] := Fields[4];
            dbmPrintLabel.fdmtblReport.Next;
          end;
          Inc(i);
          if i = f_step then
            i := 0;
          Next;
        end;
      end;
    except
      on E: Exception do
      begin
        ShowMessage('Некорректный ввод!');
        Abort
      end;
    end;
//      frmTest.Show;
    (frmFR_Table.frxReTopaz.FindObject('memNameDevice') as TfrxMemoView).Text := frmMain.edtPackage.Text;
    (frmFR_Table.frxReTopaz.FindObject('memStep') as TfrxMemoView).Text := frmMain.seStep.Value.ToString;
  end;
end;
//просмотр
procedure TfrmPrintSection.mniTopShowClick(Sender: TObject);
begin
  frmFR_Table.Show;
  frmFR_Table.frxReTopaz.ShowReport();
end;

// сохранить отчет в pdf
procedure TfrmPrintSection.mniTopSaveClick(Sender: TObject);
begin
 frmFR_Table.frxReTopaz.ShowReport();
 frmFR_Table.frxReTopaz.Export(frmFR_Table.frxExPDF);
end;

// печать
procedure TfrmPrintSection.mniTopPrintClick(Sender: TObject);
begin
  frmFR_Table.frxReTopaz.ShowReport();
  frmFR_Table.frxReTopaz.Print;
end;

{Семейство Корунд }
// выполнить
procedure TfrmPrintSection.mniCorApplyClick(Sender: TObject);
var
  f_step: Integer;
  i: Integer;
begin
  i := 0;
  f_step := StrToIntDef(InputBox('Шаг печати штрих-кода', 'Введите шаг печати от 1 до 5', '5'), 5);

  if f_step in [1..5] then
  begin
    try
  // пытаемся заполнить отчет
      dbmPrintLabel.fdmtblReport.Close;
      dbmPrintLabel.fdmtblReport.Open;
      dbmPrintLabel.fdmtblReport.First;
      dbmPrintLabel.fdmtblPrint.First;
      while not dbmPrintLabel.fdmtblPrint.Eof do
      begin
        with dbmPrintLabel.fdmtblPrint do
        begin
          if i = 0 then
          begin
           {Записываем код из таблицы в отчет}
            dbmPrintLabel.fdmtblReport.Append;
            dbmPrintLabel.fdmtblReport.Fields[0] := Fields[6];
            dbmPrintLabel.fdmtblReport.Next;
          end;
          Inc(i);
          if i = f_step then
            i := 0;
          Next;
        end;
      end;
    except
      on E: Exception do
      begin
        ShowMessage('Некорректный ввод!');
        Abort
      end;
    end;
//      frmTest.Show;
    (frmFR_Table.frxReCor.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtPackage.Text;
    (frmFR_Table.frxReCor.FindObject('memStepQR') as TfrxMemoView).Text := f_step.ToString;
    (frmFR_Table.frxReCor.FindObject('memStepIter') as TfrxMemoView).Text := frmMain.seStep.Value.ToString;
    (frmFR_Table.frxReCor.FindObject('memCounDev') as TfrxMemoView).Text := frmMain.seCount.Value.ToString;
  end;
end;

//просмотр

procedure TfrmPrintSection.mniCorShowClick(Sender: TObject);
begin
  frmFR_Table.Show;
  frmFR_Table.frxReCor.ShowReport();
end;

// печать
procedure TfrmPrintSection.mniCorPrintClick(Sender: TObject);
begin
  frmFR_Table.frxReCor.ShowReport();
  frmFR_Table.frxReCor.Print;
end;

// сохранить отчет в pdf
procedure TfrmPrintSection.mniCorSaveClick(Sender: TObject);
begin
  frmFR_Table.frxReCor.ShowReport();
  frmFR_Table.frxReCor.Export(frmFR_Table.frxExPDF);
end;

{сброс всех отчетов}
procedure TfrmPrintSection.mniSRResetClick(Sender: TObject);
begin
// закрываем отчеты
  frmFR_Table.Close;
 // очищаем отчеты
  frmFR_Table.frxReCor.PreviewPages.Clear;
  frmFR_Table.frxReTopaz.PreviewPages.Clear;
  frmFR_Table.frxReTabList.PreviewPages.Clear;

  frmFR_Table.frxReTabList.PreviewPagesList.Clear;
end;
{работа над печатью этикеток}
//43x25  - пытаюсь создать дизайн
// просмотр
//procedure TfrmPrintSection.mniN43x25ShClick(Sender: TObject);

//begin
//  (frmFR_Label.frLabel_43_25.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtDevice.Text;
//  frmFR_Label.Show;
//  frmFR_Label.frLabel_43_25.ShowReport();
//// гасим и зажигаем необходимые пункты меню
//  mniN43x25Print.Enabled := True;
//  mniN43x25Sh.Enabled := False;
//end;
// печать
 {добавление пункта меню - ремонт}
  procedure TfrmPrintSection.mniServeceSettingClick(Sender: TObject);
  var
  f_count : Integer;   // количество печатываемых номерков
begin

end;

{
 Разработка отчета для печати qr-кода, стандартный и расширенный бланк
}

// стандартный бланк - выполнить
procedure TfrmPrintSection.mniPrQR_StApplyClick(Sender: TObject);
begin
 // гасим и зажигаем необходимые пункты меню
  mniPrQR_StApply.Enabled := False;
  mniPrQR_StShow.Enabled := True;

  (frmFR_List.frxRe.FindObject('memJobPlace') as TfrxMemoView).Text := frmShowSoft.f_rmp;
  (frmFR_List.frxRe.FindObject('memNameDevice') as TfrxMemoView).Text := frmShowSoft.f_nameDevice;
  (frmFR_List.frxRe.FindObject('bcPlace') as TfrxBarcode2DView).Text := frmShowSoft.fTextSoft;
  (frmFR_List.frxRe.FindObject('memTextCode') as TfrxMemoView).Text := frmShowSoft.fTextSoft;
end;




// просмотр стандартный бланк
procedure TfrmPrintSection.mniPrQR_StShowClick(Sender: TObject);
begin
 // гасим и зажигаем необходимые пункты меню
  mniPrQR_StPrint.Enabled := True;
  frmFR_List.Show;
  frmFR_List.frxRe.ShowReport();
end;


// печать стандартный бланк

procedure TfrmPrintSection.mniPrQR_StPrintClick(Sender: TObject);
begin
  frmFR_List.frxRe.ShowReport();
  frmFR_List.frxRe.Print;
end;
// расширенный бланк - выполнить
procedure TfrmPrintSection.mniPrQR_AdApplyClick(Sender: TObject);
begin
  // гасим и зажигаем необходимые пункты
  mniPrQR_AdApply.Enabled := False;
  pnlAdv.Enabled := False;

  mniPrQR__AdShow.Enabled := True;

   // присваиваем переменным f_posX - начальные значения
  f_pos1 := lbledtOne.Text;
  f_pos2 := lbledtTwo.Text;
  f_pos3 := lbledtThree.Text;
  f_pos4 := lbledtFour.Text;
  f_pos5 := lbledtFive.Text;
  f_pos6 := lbledtSix.Text;



  // считываем стандартные поля
  (frmFR_List.frxRe.FindObject('memNameDevice') as TfrxMemoView).Text := frmShowSoft.f_nameDevice;
  (frmFR_List.frxRe.FindObject('bcPlace') as TfrxBarcode2DView).Text := frmShowSoft.fTextSoft;
  (frmFR_List.frxRe.FindObject('memTextCode') as TfrxMemoView).Text := frmShowSoft.fTextSoft;

  // прописываем переменные в короткие qr-кода
   (frmFR_List.frxRe.FindObject('memJobPlace') as TfrxMemoView).Text := frmShowSoft.f_rmp

  end;


// просмотр расширенный бланк

procedure TfrmPrintSection.mniPrQR__AdShowClick(Sender: TObject);
begin
  frmFR_List.Show;
  frmFR_List.frxRe_adv.ShowReport();
end;

// печать расширенный бланк
procedure TfrmPrintSection.mniPrQR__AdPrintClick(Sender: TObject);
begin
  frmFR_List.frxRe_adv.ShowReport();
  frmFR_List.frxRe_adv.Print;
end;
// сброс стандартного и расширенного бланка

procedure TfrmPrintSection.mniPrQR_StResetClick(Sender: TObject);
var
  i: Integer;
begin
     // гасим и зажигаем необходимые пункты
  mniPrQR_StApply.Enabled := True;
  mniPrQR_StShow.Enabled := False;

  mniPrQR_AdApply.Enabled := True;
  pnlAdv.Enabled := True;

  // присваиваем TLabelEdit - начальные значения
  lbledtOne.Text := 'ap-map';
  lbledtTwo.Text := 'pyenv activate ap-dev';
  lbledtThree.Text := 'exit';
  lbledtFour.Text := 'admin';
  lbledtFive.Text := 'angtel';
  lbledtSix.Text := 'root';
end;

end.

