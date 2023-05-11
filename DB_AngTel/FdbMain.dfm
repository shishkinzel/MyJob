object dbMain: TdbMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
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
    Connection = conDev
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'dbDevice'
    Left = 104
    Top = 80
    object tbl_Devkey: TIntegerField
      FieldName = 'key'
      Visible = False
    end
    object tbl_DevNameDev: TWideStringField
      FieldName = 'NameDev'
      Size = 150
    end
    object tbl_Devid: TFloatField
      FieldName = 'id'
    end
    object tbl_Devmac: TWideStringField
      FieldName = 'mac'
    end
  end
  object tbl_DevAll: TADOTable
    Connection = conDev
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'dbDevAll'
    Left = 104
    Top = 144
    object tbl_DevAllkey: TAutoIncField
      FieldName = 'key'
      ReadOnly = True
      Visible = False
    end
    object tbl_DevAllnameDev: TWideStringField
      FieldName = 'nameDev'
      Size = 150
    end
    object tbl_DevAllid_first: TWideStringField
      FieldName = 'id_first'
    end
    object tbl_DevAllid_last: TWideStringField
      FieldName = 'id_last'
    end
    object tbl_DevAllmac_first: TWideStringField
      FieldName = 'mac_first'
      Size = 30
    end
    object tbl_DevAllmac_last: TWideStringField
      FieldName = 'mac_last'
      Size = 30
    end
    object tbl_DevAlldev_date: TDateTimeField
      FieldName = 'dev_date'
    end
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
