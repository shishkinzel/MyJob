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
    mniPrQR_AdShow: TMenuItem;
    mniPrQR_Separator3: TMenuItem;
    mniPrQR_AdPrint: TMenuItem;
    mniPrQR_Separator4: TMenuItem;
    mniPrQR_AdReset: TMenuItem;
    pnlAdv: TPanel;
    lbledtOne: TLabeledEdit;
    lbledtTwo: TLabeledEdit;
    lbledtThree: TLabeledEdit;
    lbledtFour: TLabeledEdit;
    lbledtFive: TLabeledEdit;
    lbledtSix: TLabeledEdit;
    chkAdvance: TCheckBox;
    mniPrQR_Panel: TMenuItem;
    mniN43x25ST_no_mac: TMenuItem;
    mniN43x25Sh_no_mac: TMenuItem;
    mniN43x25Print_no_mac: TMenuItem;
    mni_30_20_mac_Label: TMenuItem;
    mni_30_20_mac_Show: TMenuItem;
    mni_30_20_mac_Print: TMenuItem;
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
    procedure mniPrQR_AdShowClick(Sender: TObject);
    procedure mniPrQR_AdPrintClick(Sender: TObject);
    procedure mniPrQR_StResetClick(Sender: TObject);
    procedure mniPrQR_PanelClick(Sender: TObject);
    procedure chkAdvanceMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure mniN43x25Print_no_macClick(Sender: TObject);
    procedure mni_30_20_mac_ShowClick(Sender: TObject);
    procedure mni_30_20_mac_PrintClick(Sender: TObject);
  private
    { Private declarations }

  public
        { Public declarations }
    var
      f_pos1: string;         // переменные для qr-кода
      f_pos2: string;         // переменные для qr-кода
      f_pos3: string;         // переменные для qr-кода
      f_pos4: string;         // переменные для qr-кода
      f_pos5: string;         // переменные для qr-кода
      f_pos6: string;         // переменные для qr-кода

      f_posAny : array [0 .. 5] of string;
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


procedure TfrmPrintSection.FormCreate(Sender: TObject);
var
  i, j : Integer;
//var
//  f_ini: TIniFile;
begin
//   изменение шрифта главного меню
  Screen.MenuFont.Size := 14;
  Screen.MenuFont.Name := 'Roboto';
// присваиваем переменным f_posX - начальные значения
  f_pos1 := lbledtOne.Text;
  f_pos2 := lbledtTwo.Text;
  f_pos3 := lbledtThree.Text;
  f_pos4 := lbledtFour.Text;
  f_pos5 := lbledtFive.Text;
  f_pos6 := lbledtSix.Text;
  // используем массив для сохранения исходных данных
  j := 0;
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TLabeledEdit then
    begin
       f_posAny[j] :=  (Self.Components[i] as TLabeledEdit).Text;
       Inc(j);
    end;
    end;
  end;
procedure TfrmPrintSection.FormShow(Sender: TObject);
var
  i: Integer;
  begin
    // Заполняем поля "Введеные данные устройства"
    for I := 0 to Self.ComponentCount - 1 do
    begin
      if (Self.Components[I] is TLabel) then
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
        4324:
          begin
            if Self.CanFocus then
              self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
            mniN43x25Print_no_mac.Enabled := True;
            mniN43x25Sh_no_mac.Enabled := False;

          //  работаем с этикеткой 4325_no_mac
          // выбор шрифта от 6 до 10 пунктов
            f_fontSize := StrToIntDef(InputBox('Ввод размера шрифта наименования устройства', 'Введите размер от 6 до 10', '8'), 8);
            if f_fontSize in [6..10] then
              ShowMessage('Размер шрифта: ' + IntToStr(f_fontSize))
            else
              f_fontSize := 8;

            (frmFR_Label.frLabel_43_25_no_mac.FindObject('memNameDev') as TfrxMemoView).Font.Size := f_fontSize;
            (frmFR_Label.frLabel_43_25_no_mac.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtDevice.Text;
            frmFR_Label.Show;
            frmFR_Label.frLabel_43_25_no_mac.ShowReport();
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

// ********************************** Сдесь печать средней этикетки без mac
procedure TfrmPrintSection.mniN43x25Print_no_macClick(Sender: TObject);
begin
  frmFR_Label.frLabel_43_25_no_mac.Report.PrintOptions.Printer := f_print_908;

  frmFR_Label.Show;
  frmFR_Label.frLabel_43_25_no_mac.Print;
end;
//

procedure TfrmPrintSection.mniN43x25PrintClick(Sender: TObject);
begin
  frmFR_Label.frLabel_43_25.Report.PrintOptions.Printer := f_print_908;

  frmFR_Label.Show;
  frmFR_Label.frLabel_43_25.Print;
end;


procedure TfrmPrintSection.pmmiPr58_40Click(Sender: TObject);
begin
  frmFR_Label.frLabel_58_40.Report.PrintOptions.Printer := f_print_160;

  frmFR_Label.Show;
  frmFR_Label.frLabel_58_40.Print;
end;

procedure TfrmPrintSection.pmmiPr58_40_macClick(Sender: TObject);
begin
   frmFR_Label.frLabel_58_40_adv.Report.PrintOptions.Printer := f_print_160;

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
{&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
}
// формируем этикетку 30х20 с mac-адресом
 // show

procedure TfrmPrintSection.mni_30_20_mac_ShowClick(Sender: TObject);
var
  i: Integer;
begin
  if Self.CanFocus then
    self.SetFocus;
          // гасим и зажигаем необходимые пункты меню
  mni_30_20_mac_Show.Enabled := False;
  mni_30_20_mac_Print.Enabled := True;

          //  работаем с этикеткой 3020
  (frmFR_Label.frLabel_30_20_mac.FindObject('memNameDev') as TfrxMemoView).Text := frmMain.edtPackage.Text;
  frmFR_Label.Show;
  frmFR_Label.frLabel_30_20_mac.ShowReport();
end;
 // print

procedure TfrmPrintSection.mni_30_20_mac_PrintClick(Sender: TObject);
var
  i: Integer;
begin
  frmFR_Label.frLabel_30_20_mac.Report.PrintOptions.Printer := f_print_940;

  frmFR_Label.frLabel_30_20_mac.ShowReport();
  frmFR_Label.frLabel_30_20_mac.Print;
end;
{ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 }

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
  //label 30_20_maac
  mni_30_20_mac_Show.Enabled := True;
  mni_30_20_mac_Print.Enabled := False;
  //label 43_25
  mniN43x25Sh.Enabled := True;
  mniN43x25Print.Enabled := False;
  //label 43_25_no_mac
  mniN43x25Sh_no_mac.Enabled := True;
  mniN43x25Print_no_mac.Enabled := False;
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
// гасим и зажигаем необходимые пункты меню
  mniSRApply.Enabled := False;
  mniSRShow.Enabled := True;
  mniSRSave.Enabled := True;
  mniSRPrint.Enabled := True;
  mniSRReset.Enabled := True;

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
 // активируем и деактивируем необходимые окна
  mniTopApply.Enabled := False;
  mniTopShow.Enabled := True;
  mniTopSave.Enabled := True;
  mniTopPrint.Enabled := True;
  mniTopReset.Enabled := True;

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
            dbmPrintLabel.fdmtblReport.Fields[2] := Fields[8];
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
// задание регистров букв mac-адреса
  f_lower: Integer;
  f_mac_lower: string;
begin
// активируем и деактивируем необходимые окна
  mniCorApply.Enabled := False;
  mniCorShow.Enabled := True;
  mniCorSave.Enabled := True;
  mniCorPrint.Enabled := True;
  mniCorReset.Enabled := True;

  i := 0;
  f_mac_lower := '';
// выбираем регистр букв в mac-адресе
  f_lower := MessageDlg('Хотите оставить в верхнем регистре?', mtConfirmation, mbYesNo, 0);

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
            case f_lower of
              6:
              begin
                dbmPrintLabel.fdmtblReport.Fields[0] := Fields[6];
              end;
              7:
              begin
                f_mac_lower := Fields[6].AsString;
                dbmPrintLabel.fdmtblReport.Fields[0].AsString := f_mac_lower.ToLower;
              end
              else
              begin
                dbmPrintLabel.fdmtblReport.Fields[0] := Fields[6];
              end;
            end;

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

{ сброс всех отчетов }
procedure TfrmPrintSection.mniSRResetClick(Sender: TObject);
begin
// гасим и зажигаем необходимые пункты меню
  // простой отчет
  mniSRApply.Enabled := True;
  mniSRShow.Enabled := False;
  mniSRSave.Enabled := False;
  mniSRPrint.Enabled := False;
  mniSRReset.Enabled := False;

  // семейство Топаз
  mniTopApply.Enabled := True;
  mniTopShow.Enabled := False;
  mniTopSave.Enabled := False;
  mniTopPrint.Enabled := False;
  mniTopReset.Enabled := False;

  // семейство Корунд
  mniCorApply.Enabled := True;
  mniCorShow.Enabled := False;
  mniCorSave.Enabled := False;
  mniCorPrint.Enabled := False;
  mniCorReset.Enabled := False;

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
  f_count: Integer;   // количество печатываемых номерков
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
  (frmFR_List.frxRe.FindObject('bq_Place') as TfrxBarcode2DView).Text := frmShowSoft.fTextSoft;
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

{***********************************************************************************************************************}
// показать панель расширения
procedure TfrmPrintSection.mniPrQR_PanelClick(Sender: TObject);
begin
  pnlAdv.Visible := True;               // активируем окно с расширенными настройками для печати
  mniPrQR_Panel.Enabled := False;

  if pnlAdv.CanFocus then
    pnlAdv.SetFocus;
end;

// расширенный бланк - выполнить
procedure TfrmPrintSection.mniPrQR_AdApplyClick(Sender: TObject);
begin
  // гасим и зажигаем необходимые пункты
  mniPrQR_AdApply.Enabled := False;
  mniPrQR_AdShow.Enabled := True;

  // считываем стандартные поля
  (frmFR_List.frxRe_adv.FindObject('memJobPlace') as TfrxMemoView).Text := frmShowSoft.f_rmp;
  (frmFR_List.frxRe_adv.FindObject('memNameDevice') as TfrxMemoView).Text := frmShowSoft.f_nameDevice;
  (frmFR_List.frxRe_adv.FindObject('bq_Place') as TfrxBarcode2DView).Text := frmShowSoft.fTextSoft;
  (frmFR_List.frxRe_adv.FindObject('memTextCode') as TfrxMemoView).Text := frmShowSoft.fTextSoft;

  // прописываем переменные в короткие qr-кода
  (frmFR_List.frxRe_adv.FindObject('memTitleUSB') as TfrxMemoView).Text := f_pos1;
  (frmFR_List.frxRe_adv.FindObject('bq_ap_map') as TfrxBarcode2DView).Text := f_pos1;
  (frmFR_List.frxRe_adv.FindObject('memTitlePython') as TfrxMemoView).Text := f_pos2;
  (frmFR_List.frxRe_adv.FindObject('bq_python') as TfrxBarcode2DView).Text := f_pos2;
  (frmFR_List.frxRe_adv.FindObject('memExit') as TfrxMemoView).Text := f_pos3;
  (frmFR_List.frxRe_adv.FindObject('bq_Exit') as TfrxBarcode2DView).Text := f_pos3;
  (frmFR_List.frxRe_adv.FindObject('memAdmin') as TfrxMemoView).Text := f_pos4;
  (frmFR_List.frxRe_adv.FindObject('bq_Admin') as TfrxBarcode2DView).Text := f_pos4;
  (frmFR_List.frxRe_adv.FindObject('memAngtel') as TfrxMemoView).Text := f_pos5;
  (frmFR_List.frxRe_adv.FindObject('bq_Angtel') as TfrxBarcode2DView).Text := f_pos5;
  (frmFR_List.frxRe_adv.FindObject('memRoot') as TfrxMemoView).Text := f_pos6;
  (frmFR_List.frxRe_adv.FindObject('bq_Root') as TfrxBarcode2DView).Text := f_pos6;

end;
// просмотр расширенный бланк

procedure TfrmPrintSection.mniPrQR_AdShowClick(Sender: TObject);
begin
  mniPrQR_AdPrint.Enabled := True;
  frmFR_List.Show;
  frmFR_List.frxRe_adv.ShowReport();
end;


// печать расширенный бланк
procedure TfrmPrintSection.mniPrQR_AdPrintClick(Sender: TObject);
begin
  frmFR_List.frxRe_adv.ShowReport();
  frmFR_List.frxRe_adv.Print;
end;
{**********************************************************************************************************************}
// действие чекбокса "Применить"

procedure TfrmPrintSection.chkAdvanceMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i, j: Integer;
  f_question: Integer;
begin
  // присваиваем переменным f_posX - знечения из labEdit
  f_pos1 := lbledtOne.Text;
  f_pos2 := lbledtTwo.Text;
  f_pos3 := lbledtThree.Text;
  f_pos4 := lbledtFour.Text;
  f_pos5 := lbledtFive.Text;
  f_pos6 := lbledtSix.Text;

  f_question := Application.MessageBox(PChar('Вы хотите применить изменения?'), 'Потверждение', MB_YESNO + MB_ICONQUESTION);
  case f_question of
    6:
      begin
        pnlAdv.Visible := False;
        mniPrQR_Panel.Visible := False;
      end;
    7:
      begin
        chkAdvance.Checked := False;
        // присваиваем TLabelEdit - начальные значения
        j := 0;
        for i := 0 to Self.ComponentCount - 1 do
        begin
          if Self.Components[i] is TLabeledEdit then
          begin
            (Self.Components[i] as TLabeledEdit).Text := f_posAny[j];
            Inc(j);
          end;
        end;
      end;
  end;
end;

{**********************************************************************************************************************}

// сброс стандартного и расширенного бланка

procedure TfrmPrintSection.mniPrQR_StResetClick(Sender: TObject);
var
  i, j: Integer;
begin
     // гасим и зажигаем необходимые пункты
  mniPrQR_StApply.Enabled := True;
  mniPrQR_StShow.Enabled := False;

  mniPrQR_AdApply.Enabled := True;
  pnlAdv.Enabled := True;
  pnlAdv.Visible := False;

  chkAdvance.Checked := False;
  mniPrQR_Panel.Enabled := True;
  mniPrQR_Panel.Visible := True;

  mniPrQR_AdShow.Enabled := False;
  mniPrQR_AdPrint.Enabled := False;

// присваиваем TLabelEdit - начальные значения
  j := 0;
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TLabeledEdit then
    begin
      (Self.Components[i] as TLabeledEdit).Text := f_posAny[j];
      Inc(j);
    end;
  end;
end;

end.
