object dbMain: TdbMain
  OldCreateOrder = False
  Height = 215
  Width = 355
  object fd_mem_Dev: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'f_dev'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'f_id'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'f_mac'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'f_id_in'
        DataType = ftInteger
      end
      item
        Name = 'f_other'
        DataType = ftString
        Size = 20
      end>
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
    object fd_mem_Devf_dev: TStringField
      FieldName = 'f_dev'
      Size = 300
    end
    object fd_mem_Devf_id: TStringField
      FieldName = 'f_id'
    end
    object fd_mem_Devf_mac: TStringField
      FieldName = 'f_mac'
    end
    object fd_mem_Devf_id_in: TIntegerField
      FieldName = 'f_id_in'
    end
    object fd_mem_Devf_other: TStringField
      FieldName = 'f_other'
    end
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
