unit expfilter;

interface


type
   TStringArray = array of String;


  TUniExportFilter = class
  private

  public
   F_AppPath : String;
   CurFileXPos, CurFileYPos : Integer;
   StartPos, StartPos2, IndexPos : Integer;
   constructor Create (const AppPath : String);
   procedure SetPosition (XPos,YPos : Integer);
   class function IsOLEObjectInstalled : boolean; virtual;
   function ReadString (MaxX : Integer): TStringArray; virtual; abstract;
   function ReadCell  (X, Y : Integer) : String; virtual; abstract;
   function OpenFile (const FileName : String; Visible : Boolean = false) : Boolean; virtual; abstract;
   procedure CloseFile (const SaveAsFileName : String = ''); virtual; abstract;
  end;


implementation
{ TUniExportFilter }

constructor TUniExportFilter.Create(const AppPath: String);
begin
 inherited Create;
 SetPosition (1,1);
 F_AppPath := AppPath;
end;

class function TUniExportFilter.IsOLEObjectInstalled: boolean;
begin
  Result := False;
end;

procedure TUniExportFilter.SetPosition(XPos, YPos: Integer);
begin
 CurFileXPos := XPos;
 CurFileYPos := YPos;
end;

end.
