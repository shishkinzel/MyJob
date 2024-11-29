unit oofice;

interface
Uses Variants, expfilter, uOpenOffice;

type
  TOpenOffice = class (TUniExportFilter)
  private
    OC : TOOCalc;
    OCSheet : TOOCalcSheet;


    function NewWidth (W : Integer) : Integer;
    procedure MakeBorder (Range : TOOCalcCellRange;  W : Integer); overload;
    procedure MakeBorder (Cell : TOOCalcCell;  W : Integer); overload;

    procedure MerCen(const R : string; HorCenter: TOpenHA; Vertical: TOpenVA);


  public
    class function IsOLEObjectInstalled : boolean; override;
    constructor Create (const AppPath : String);
    function ReadString (MaxX : Integer): TStringArray; override;
    function ReadCell  (X, Y : Integer) : String; override;
    function OpenFile (const FileName : String; Visible : Boolean = false) : Boolean; override;
    procedure CloseFile (const SaveAsFileName : String = ''); override;
  end;


implementation
uses ActiveX, ComObj, SysUtils, IdGlobal, Graphics, FParserXLS;

const  Officemanager = 'com.sun.star.ServiceManager';


procedure TOpenOffice.CloseFile(const SaveAsFileName: String);
begin
  if SaveAsFileName <> '' then
   OC.SaveDocument (F_AppPath +  SaveAsFileName,'Excel97');
  OC.CloseDocument;
  OC.Free;
end;

class function TOpenOffice.IsOLEObjectInstalled: boolean;
var
  ClassID: TCLSID;
  Rez : HRESULT;
begin
  Rez := CLSIDFromProgID(PWideChar(WideString(OfficeManager)), ClassID);
  Result := (Rez = S_OK);
end;

function TOpenOffice.OpenFile(const FileName: String;
  Visible: Boolean): Boolean;
var
  OpenMode:TOpenOM;
begin
 OpenMode := [];
 if not Visible then OpenMode :=OpenMode + [oomHidden];
 OC := TOOCalc.Create;
 OC.Connect := True;
 OC.OpenDocument(F_AppPath + FileName,OpenMode ,ommAlwaysNoWarn);
 OCSheet := OC.Sheets[0];
end;

constructor TOpenOffice.Create(const AppPath: String);
begin
 inherited Create (AppPath);
 SetPosition(0,0);
end;

procedure TOpenOffice.MerCen(const R: string; HorCenter: TOpenHA;
  Vertical: TOpenVA);
var
   CR : TOOCalcCellRange;
begin
 CR := OC.Sheets[0].CellRangeByName [R];
 CR.VertAlignment := Vertical;
 CR.HoriAlignment := HorCenter;
 CR.TextWrap := True;
 CR.Merge  := True;
end;


procedure TOpenOffice.MakeBorder(Range: TOOCalcCellRange; W: Integer);
begin
  Range.Border.Left:=BLine(clBlack,0,NewWidth(W),0);
  Range.Border.Right:=BLine(clBlack,0,NewWidth(W),0);
  Range.Border.Top:=BLine(clBlack,0,NewWidth(W),0);
  Range.Border.Bottom:=BLine(clBlack,0,NewWidth(W),0);
end;

procedure TOpenOffice.MakeBorder(Cell: TOOCalcCell; W: Integer);
begin
  Cell.Border.Left:=BLine(clBlack,0,NewWidth(W),0);
  Cell.Border.Right:=BLine(clBlack,0,NewWidth(W),0);
  Cell.Border.Top:=BLine(clBlack,0,NewWidth(W),0);
  Cell.Border.Bottom:=BLine(clBlack,0,NewWidth(W),0);
end;

function TOpenOffice.NewWidth(W: Integer): Integer;
begin
  if W = 1 then Result := 26
           else Result := 35;
end;

function TOpenOffice.ReadCell(X, Y: Integer): String;
begin
  Result := OCSheet.Cell [x-1, y-1].AsText;
end;

function TOpenOffice.ReadString(MaxX: Integer): TStringArray;
var
 i : Integer;
begin
  SetLength (Result, MaxX);
  for i := 1 to MaxX do
    Result [i-1] :=   OCSheet.Cell [i-1, CurFileYPos].AsText;
  inc (CurFileYPos);
end;

end.

