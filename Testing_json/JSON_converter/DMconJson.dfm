object dm_conJson: Tdm_conJson
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 519
  Width = 780
  object db_memTab_conJson_statistic: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_key_statistic'
        DataType = ftAutoInc
      end
      item
        Name = 'attempt'
        DataType = ftInteger
      end
      item
        Name = 'selector'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'request_serial'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'request_date'
        DataType = ftDateTime
      end
      item
        Name = 'original_version'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'proposed_version'
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
    Left = 224
    Top = 32
    object db_memTab_conJson_statisticid_key_statistic: TAutoIncField
      DisplayLabel = 'id_key_st'
      DisplayWidth = 9
      FieldName = 'id_key_statistic'
    end
    object intgrfld_memTab_conJson_statisticattempt: TIntegerField
      FieldName = 'attempt'
    end
    object db_memTab_conJson_statisticselector: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1103
      DisplayWidth = 36
      FieldName = 'selector'
      Size = 50
    end
    object db_memTab_conJson_statisticrequest_serial: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 19
      FieldName = 'request_serial'
    end
    object dtmfld_memTab_conJson_statisticrequest_date: TDateTimeField
      FieldName = 'request_date'
    end
    object db_memTab_conJson_statisticoriginal_version: TStringField
      DisplayLabel = #1054#1088#1080#1075#1080#1085#1072#1083#1100#1085#1099#1081
      DisplayWidth = 20
      FieldName = 'original_version'
    end
    object db_memTab_conJson_statisticproposed_version: TStringField
      DisplayLabel = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1099#1081
      DisplayWidth = 20
      FieldName = 'proposed_version'
    end
  end
  object db_memTab_conJson: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Id_key_db'
        DataType = ftAutoInc
      end
      item
        Name = 'deviceName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'selector'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'serialId'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ethaddr'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'version'
        DataType = ftString
        Size = 30
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
    Left = 56
    Top = 32
    object db_memTab_conJsonId_key_db: TAutoIncField
      Alignment = taCenter
      DisplayLabel = 'Id_key'
      DisplayWidth = 6
      FieldName = 'Id_key_db'
    end
    object db_memTab_conJsondeviceName: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      DisplayWidth = 32
      FieldName = 'deviceName'
      Size = 50
    end
    object db_memTab_conJsonselector: TStringField
      DisplayLabel = #1052#1086#1076#1091#1083#1100' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      DisplayWidth = 52
      FieldName = 'selector'
      Size = 100
    end
    object db_memTab_conJsonserialId: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'serialId'
    end
    object db_memTab_conJsonethaddr: TStringField
      DisplayLabel = 'mac-'#1072#1076#1088#1077#1089
      DisplayWidth = 24
      FieldName = 'ethaddr'
      Size = 30
    end
    object db_memTab_conJsonversion: TStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      DisplayWidth = 24
      FieldName = 'version'
      Size = 30
    end
  end
  object db_memTab_CompositeTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_key'
        DataType = ftAutoInc
      end
      item
        Name = 'device_name'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'device_selector'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'id_serial'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ethaddr'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'device_version'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'attempt'
        DataType = ftInteger
      end
      item
        Name = 'request_date'
        DataType = ftDateTime
      end
      item
        Name = 'original_version'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'proposed_version'
        DataType = ftString
        Size = 45
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
    Left = 104
    Top = 104
    object db_memTab_CompositeTableid_key: TAutoIncField
      FieldName = 'id_key'
    end
    object db_memTab_CompositeTabledevice_name: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 19
      FieldName = 'device_name'
      Size = 45
    end
    object db_memTab_CompositeTabledevice_selector: TStringField
      DisplayLabel = #1052#1086#1076#1091#1083#1100' '#1091#1089#1090'-'#1074#1072
      DisplayWidth = 32
      FieldName = 'device_selector'
      Size = 100
    end
    object db_memTab_CompositeTableid_serial: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'id_serial'
      Size = 45
    end
    object db_memTab_CompositeTableethaddr: TStringField
      DisplayLabel = #1060#1080#1079#1040#1076#1088#1077#1089
      DisplayWidth = 19
      FieldName = 'ethaddr'
      Size = 45
    end
    object db_memTab_CompositeTabledevice_version: TStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1087#1088#1086#1096#1080#1074#1082#1080
      DisplayWidth = 16
      FieldName = 'device_version'
      Size = 45
    end
    object intgrfld_memTab_CompositeTableattempt: TIntegerField
      FieldName = 'attempt'
    end
    object dtmfld_memTab_CompositeTablerequest_date: TDateTimeField
      FieldName = 'request_date'
    end
    object db_memTab_CompositeTableoriginal_version: TStringField
      DisplayLabel = #1058#1077#1082#1091#1097#1072#1103
      DisplayWidth = 11
      FieldName = 'original_version'
      Size = 45
    end
    object db_memTab_CompositeTableproposed_version: TStringField
      DisplayLabel = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1072#1103
      DisplayWidth = 19
      FieldName = 'proposed_version'
      Size = 45
    end
  end
  object fdbtchmvdtstrdr_conJson_reader: TFDBatchMoveDataSetReader
    DataSet = db_memTab_CompositeTable
    Left = 72
    Top = 344
  end
  object fdbtchmvsqlwrtr_conJson_writer: TFDBatchMoveSQLWriter
    Connection = con_conJson
    TableName = 'db_composite_tb'
    Left = 256
    Top = 344
  end
  object fdbtchmv_conJson_BatchMove: TFDBatchMove
    Reader = fdbtchmvdtstrdr_conJson_reader
    Writer = fdbtchmvsqlwrtr_conJson_writer
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 304
    Top = 208
  end
  object con_conJson: TFDConnection
    Params.Strings = (
      'Database=db_angtel_composite'
      'User_Name=root'
      'Password=@Zel00000000'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 368
    Top = 32
  end
  object fd_script_ClearDB: TFDScript
    SQLScripts = <
      item
        Name = 'Clear db_composite_tb'
        SQL.Strings = (
          'TRUNCATE db_composite_tb')
      end>
    Connection = con_conJson
    Transaction = fd_transaction_ClearDB
    Params = <>
    Macros = <>
    Left = 648
    Top = 24
  end
  object fd_transaction_ClearDB: TFDTransaction
    Connection = con_conJson
    Left = 512
    Top = 24
  end
  object fd_dialog_ClearDB: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 664
    Top = 336
  end
  object con_RemoteBase: TFDConnection
    Params.Strings = (
      'Database=db_angtel_composite'
      'User_Name=shishkinzel'
      'Password=@Zel00000000'
      'Server=172.17.17.76'
      'DriverID=MySQL')
    Left = 360
    Top = 96
  end
end
