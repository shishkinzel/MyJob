object dbMain: TdbMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 215
  Width = 355
  object fd_mem_Dev: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 24
    Top = 16
  end
  object conDev: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Embarcadero\Proj' +
      'ects\MyJob\DB_AngTel\db\db_angtel.mdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 240
    Top = 8
  end
  object tbl_Dev: TADOTable
    Connection = conDev
    CursorType = ctStatic
    LockType = ltReadOnly
    Left = 104
    Top = 80
  end
  object tbl_DevAll: TADOTable
    Connection = conDev
    CursorType = ctStatic
    LockType = ltReadOnly
    Left = 104
    Top = 144
  end
  object ds_DevAll: TDataSource
    DataSet = tbl_DevAll
    Left = 168
    Top = 143
  end
  object ds_Dev: TDataSource
    DataSet = tbl_Dev
    Left = 160
    Top = 79
  end
end
