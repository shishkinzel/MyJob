object dbMain: TdbMain
  OldCreateOrder = False
  Height = 215
  Width = 355
  object fd_mem_Dev: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 24
    Top = 16
  end
  object conDev: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Embarcadero\Proj' +
      'ects\MyJob\DB_AngTel\db\db_angtel.mdb;Persist Security Info=Fals' +
      'e;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 240
    Top = 8
  end
  object tbl_Dev: TADOTable
    Active = True
    Connection = conDev
    CursorType = ctStatic
    TableName = 'dbDevice'
    Left = 296
    Top = 8
  end
  object tbl_DevAll: TADOTable
    Active = True
    Connection = conDev
    CursorType = ctStatic
    TableName = 'dbDevAll'
    Left = 296
    Top = 64
  end
end
