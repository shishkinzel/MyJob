unit CursorHelper;

interface

uses
  Controls;

type
  TCursorHelper = class(TInterfacedObject, IUnknown)
  strict private
    FOldCursor: TCursor;
    FControl  : TControl;
  public
    class function Change(const aNewCursor: TCursor; Control : TControl = nil): IUnknown;
    class function ChangeToHourglass (Control : TControl = nil) : IUnknown;
    class function ChangeToSqlWait (Control : TControl = nil) : IUnknown;
    destructor Destroy; override;
  end;


implementation

uses
  Forms;

class function TCursorHelper.ChangeToHourglass (Control : TControl = nil): IUnknown;
begin
  result := Change(crHourGlass, Control);
end;

class function TCursorHelper.ChangeToSqlWait (Control : TControl = nil): IUnknown;
begin
  result := Change(crSQLWait, Control);
end;

destructor TCursorHelper.Destroy;
begin
  Screen.Cursor := FOldCursor;
  if Assigned (FControl) then
    FControl.Enabled := True;
  inherited;
end;

class function TCursorHelper.Change(const aNewCursor: TCursor; Control : TControl): IUnknown;
var
  tmpInstance: TCursorHelper;
begin
  tmpInstance := TCursorHelper.Create;
  tmpInstance.FOldCursor := Screen.Cursor;
  tmpInstance.FControl := Control;
  if Assigned (Control) then
    tmpInstance.FControl.Enabled := False;
  Result := tmpInstance;
  Screen.Cursor := aNewCursor;
end;

end.
