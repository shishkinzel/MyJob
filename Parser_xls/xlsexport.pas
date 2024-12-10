unit xlsexport;

interface
Uses Variants, expfilter, classes;

const 
 Excel = 'Excel.Application';
 xlCenter = -4108;
 xlLeft   = -4131;

 xlBottom = -4107;
 xlRight = -4152;
 xlTop = -4160;


Type

   TXLSExporter = class (TUniExportFilter)
   private
     procedure MerCen(const R : string; HorCenter : Boolean = True; Vertical : Integer = xlCenter); // Объеденить ячейки
   protected
     VFile  : Variant;
   public
     class function IsOLEObjectInstalled : boolean; override;
     function ReadString (MaxX : Integer): TStringArray; override;
     function ReadCell  (X, Y : Integer) : String; override;
     function OpenFile (const FileName : String; Visible : Boolean) : Boolean;  override;
     procedure CloseFile (const SaveAsFileName : String);  override;
     procedure GetSheets (T : TStrings);
     property VExcel : Variant read VFile;
   end;

implementation
Uses  ActiveX,ComObj, SysUtils, IdGlobal, FParserXLS;


 { TExporterFilter }

procedure TXLSExporter.CloseFile(const SaveAsFileName: String);
begin
 VFile.DisplayAlerts := False;
 if (SaveAsFileName <> '') then VFile.ActiveWorkBook.SaveAs (F_AppPath +  SaveAsFileName);
 VFile.Quit;
 VFile := Unassigned;
end;

procedure TXLSExporter.GetSheets(T: TStrings);
var
  I: Integer;
begin
  T.Clear;
  for I := 1 to VFile.WorkBooks[1].WorkSheets.Count do
    T.Add(VFile.WorkBooks[1].WorkSheets[i].Name);
end;

class function TXLSExporter.IsOLEObjectInstalled: boolean;    // проверка существования OLE-объекта CLSID - создан - true
var
  ClassID: TCLSID;
  Rez : HRESULT;
begin
  Rez := CLSIDFromProgID(PWideChar(WideString(Excel)), ClassID);
  Result := (Rez = S_OK);
end;

procedure TXLSExporter.MerCen(const R: string; HorCenter : Boolean; Vertical : Integer);
begin
  VFile.Range[R].Select;
  if (HorCenter) then  VFile.Selection.HorizontalAlignment := xlCenter;
  VFile.Selection.VerticalAlignment := Vertical;
  VFile.Selection.WrapText:= true;
  VFile.Selection.Orientation := 0;
  VFile.Selection.ShrinkToFit := False;
  VFile.Selection.MergeCells := False;
  VFile.Selection.Merge;
end;


function TXLSExporter.OpenFile(const FileName: String;
  Visible: Boolean): Boolean;
begin
  Result := IsOLEObjectInstalled;
  if (not Result) then Exit;
  VFile := CreateOleObject(Excel);
  VFile.Visible := Visible;
  VFile.WorkBooks.Open(F_AppPath +  FileName);
  SetPosition (1,1);
end;

function TXLSExporter.ReadCell(X, Y: Integer): String;
begin
  Result := VFile.Cells [Y,X].Value
end;

function TXLSExporter.ReadString(MaxX: Integer): TStringArray;
var
 i : Integer;
begin
  SetLength (Result, MaxX);
  for i := 1 to MaxX do
    Result [i-1] :=  VFile.Cells [CurFileYPos,i].Value;
  inc (CurFileYPos);
end;

end.
