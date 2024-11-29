unit xlsmaker_truncated;

interface
Uses SysUtils;

function IsExcellInstalled : Boolean;    // Find Excell in SYS menu
function IsWordInstalled   : Boolean;
function GenerateXLSReport (TSIndex : Integer;
                            const RegionName : String;
                            DateOpen,DateClose : TDateTime;
                            FillAllAddress : Boolean;
                            var FileName : String) : Boolean;


function Application1_XLS  (const RegionName : String;
                            DateOpen,DateClose : TDateTime;
                            FillAllAddress : Boolean;
                            var FileName : String) : Boolean;

function Application1_XLS_1 (const RegionName : String;
                             const fhvs,fgvs : String;
                             var FileName : String) : Boolean;

function Arenada_XLS (TS_TYPE : Integer; sheetindex : Integer;
                      const fname, farenda : String) : Boolean;

function Arenada_XLS_NEW (arendasheetindex : Integer;
                           const fhvs, fgvs, farenda : String) : Boolean;

procedure Arenada_Export (const farenda : String);

function CheckArendaXLSFile (const fname : String) : Boolean;

function GenerateMvkXLSReport (RTYPE : Integer;
                               const RegionName : String;
                               DateOpen,DateClose : TDateTime;
                               var FileName : String) : Boolean;

procedure PrintXLSDocumentAndCloseBook;

procedure PrepareXLSDocForKPU (DocType,A : Integer; const asText : String);
procedure PrepareXLSDocForKPU_JILFOND (DocType,A : Integer; const asText : String);
procedure CompliteXLSDocForKPU_JILFOND (const Person : String);

procedure ReadStringForImportSP (var SP_PO,SP_N,SP_COL, SP_PRIM : String);
//procedure ReadStringForImportKPU_2 (var V_FLAT, V_UIN, V_TYPE, V_POK, V_DATE, TARIF : String);
procedure ReadStringForImport (var VA : array of String);
procedure WriteUIN (MinusPos: Integer; UIN : String);

procedure AddDataToXLS    (P:Integer; const V : String);
procedure AddDataToXLSPos (P:Integer; const V : String);

procedure CloseXLSDocForPKU (const FName : String);
procedure CloseXLSDoc;
procedure OpenXLSDocument (const FileName : String);
procedure OpenXLSDocumentForRead (const FileName : String);
procedure ReadStringForImportKPU (var V1,V2,V8,V9 : String);
function GenerateSvodCTPREport (const RegionName : String;
                                DateOpen,DateClose : TDateTime;
                                var FileName : String) : Boolean;

function ExcelListName (const fname : String):String;

procedure TEST_ME;

procedure FlushCurVXLSPos;

var
   VXLS : Variant;

implementation
Uses  Variants, ActiveX, ComObj, Classes, DateUtils, IdGlobal, FParserXLS;


const
 Excell = 'Excel.Application';
 Word   = 'Word.Application';
var
  CurVXLSPos, CurVXLSPosX : Integer;         // позиция курсора
  V_Arenda : Variant;
  V_HVS    : Variant;
  V_GVS    : Variant;

procedure FlushCurVXLSPos;               // процедура   сброса курсора
begin
 CurVXLSPos := 1;
end;



procedure ReadStringForImportKPU (var V1,V2,V8,V9 : String);
begin
 V1 := VXLS.Cells [CurVXLSPos,1];
 V2 := VXLS.Cells [CurVXLSPos,2];
 V8 := VXLS.Cells [CurVXLSPos,8];
 V9 := VXLS.Cells [CurVXLSPos,9];
 inc(CurVXLSPos);
end;


procedure ReadStringForImportSP (var SP_PO,SP_N,SP_COL, SP_PRIM : String);
begin
 SP_PO   := VXLS.Cells [CurVXLSPos,1];   // позиционное обозначение
 SP_N    := VXLS.Cells [CurVXLSPos,2];   // наименование
 SP_COL  := VXLS.Cells [CurVXLSPos,3];   // количество
 SP_PRIM := VXLS.Cells [CurVXLSPos,4];   // примечание

 inc(CurVXLSPos);
end;

procedure WriteUIN (MinusPos: Integer; UIN : String);
begin
 VXLS.Cells [CurVXLSPos-MinusPos,3].Value := UIN; // Serial
end;

//procedure ReadStringForImportKPU_2 (var V_FLAT, V_UIN, V_TYPE, V_POK, V_DATE, TARIF : String);
//begin
// V_FLAT   := VXLS.Cells [CurVXLSPos,1]; // Serial
// V_UIN   := VXLS.Cells [CurVXLSPos,2]; // Serial
// V_TYPE   := VXLS.Cells [CurVXLSPos,3]; // Type
// V_POK   := VXLS.Cells [CurVXLSPos,4]; // Value
// V_DATE  := VXLS.Cells [CurVXLSPos,5]; // Date
// TARIF   := VXLS.Cells [CurVXLSPos,6]; // Tarif
// inc(CurVXLSPos);
//end;

procedure ReadStringForImport (var VA : array of String);
var
I : Integer;
begin
 for i := 0 to Length(VA) - 1 do
  VA[i]  := VXLS.Cells [CurVXLSPos,i+1];
end;

procedure CloseXLSDoc;
begin
 VXLS.DisplayAlerts := False;
 VXLS.Quit;
 VXLS := Unassigned;
 CurVXLSPos := 0;
end;


procedure CloseXLSDocForPKU (const FName : String);
begin
 VXLS.DisplayAlerts := False;
 VXLS.ActiveWorkBook.SaveAs (FName);
 VXLS.Quit;
 VXLS := Unassigned;
end;

procedure OpenXLSDocumentForRead(const FileName : String);   // открытие xls документа для чтения
begin
 try
   VXLS := GetActiveOleObject (Excell);
 except
   VXLS := CreateOleObject(Excell);
 end;
  VXLS.Visible := False; // FALSE !!!!!!
  VXLS.WorkBooks.Open(FileName);
  CurVXLSPos := 1;
end;

function ExcelListName (const fname : String):String;      //
var
 V  : Variant;
 i  : Integer;
begin
 try
   V := GetActiveOleObject (Excell);
 except
   V := CreateOleObject(Excell);
 end;
  V.WorkBooks.Open(FName);
  V.Visible := False;
  Result := '';
  for i := 1 to V.Sheets.Count do
    Result := Result + #13#10 + V.Sheets[i].Name;
  delete (Result,1,2);
  V.Quit;
  V := Unassigned;
end;


procedure OpenXLSDocument (const FileName : String);
var
 V  : Variant;
begin
 try
   V := GetActiveOleObject (Excell);
 except
   V := CreateOleObject(Excell);
 end;
  V.WorkBooks.Open(FileName);
  V.Visible := True;
  CurVXLSPos := 1;
end;




procedure TEST_ME;
var
 R : Variant;
begin
  OpenXLSDocumentForRead ('c:\test.xls');
  R := VXLS.Range['A1', 'H20'];
  R.Copy (VXLS.Range ['A64',EmptyParam]);
  CloseXLSDocForPKU ('c:\test2.xls');
end;
