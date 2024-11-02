object dm_Application_mysql: Tdm_Application_mysql
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 723
  Width = 991
  object con_app_mysql: TFDConnection
    ConnectionName = 'db_angtel_composite'
    Params.Strings = (
      'Port=3306')
    Connected = True
    LoginDialog = fd_login_app_mysql
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object db_memTab_app_mysql: TFDMemTable
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
    Left = 32
    Top = 136
    object db_memTab_app_mysqlid_key: TAutoIncField
      FieldName = 'id_key'
    end
    object db_memTab_app_mysqldevice_name: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 19
      FieldName = 'device_name'
      Size = 45
    end
    object db_memTab_app_mysqldevice_selector: TStringField
      DisplayLabel = #1052#1086#1076#1091#1083#1100' '#1091#1089#1090'-'#1074#1072
      DisplayWidth = 32
      FieldName = 'device_selector'
      Size = 100
    end
    object db_memTab_app_mysqlid_serial: TStringField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      DisplayWidth = 16
      FieldName = 'id_serial'
      Size = 45
    end
    object db_memTab_app_mysqlethaddr: TStringField
      DisplayLabel = #1060#1080#1079#1040#1076#1088#1077#1089
      DisplayWidth = 19
      FieldName = 'ethaddr'
      Size = 45
    end
    object db_memTab_app_mysqldevice_version: TStringField
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
    object db_memTab_app_mysqloriginal_version: TStringField
      DisplayLabel = #1058#1077#1082#1091#1097#1072#1103
      DisplayWidth = 11
      FieldName = 'original_version'
      Size = 45
    end
    object db_memTab_app_mysqlproposed_version: TStringField
      DisplayLabel = #1055#1088#1077#1076#1083#1086#1078#1077#1085#1085#1072#1103
      DisplayWidth = 19
      FieldName = 'proposed_version'
      Size = 45
    end
  end
  object con_app_shishkinzel: TFDConnection
    ConnectionName = 'db_angtel_composite'
    LoginPrompt = False
    Left = 184
    Top = 48
  end
  object fd_g_fiooing_memTable: TFDQuery
    Connection = con_app_mysql
    SQL.Strings = (
      'SELECT * FROM db_angtel_composite.db_composite_tb')
    Left = 104
    Top = 136
  end
  object fd_reader_db_composite_tb: TFDBatchMoveSQLReader
    Connection = con_app_mysql
    TableName = 'db_angtel_composite.db_composite_tb'
    Left = 104
    Top = 208
  end
  object fd_move_db_composite_tb: TFDBatchMove
    Reader = fd_reader_db_composite_tb_name
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 40
    Top = 208
  end
  object fd_manager_app_mysql: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 336
    Top = 24
  end
  object fd_reader_db_composite_tb_name: TFDBatchMoveSQLReader
    Connection = con_app_mysql
    TableName = 'db_angtel_composite.db_composite_tb'
    Left = 168
    Top = 208
  end
  object fd_writer_name: TFDBatchMoveTextWriter
    DataDef.Fields = <>
    Left = 200
    Top = 368
  end
  object fd_reader_name: TFDBatchMoveSQLReader
    Connection = con_app_mysql
    ReadSQL = 
      'select distinct device_name from db_angtel_composite.db_composit' +
      'e_tb order by device_name '
    Left = 104
    Top = 368
  end
  object fd_move_name: TFDBatchMove
    Reader = fd_reader_name
    Writer = fd_writer_name
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 24
    Top = 368
  end
  object fd_g_attempt: TFDQuery
    Connection = con_app_mysql
    SQL.Strings = (
      'select min(attempt) as att_min, max(attempt) as att_max '
      'from db_angtel_composite.db_composite_tb;')
    Left = 24
    Top = 464
  end
  object fd_login_app_mysql: TFDGUIxLoginDialog
    Provider = 'Forms'
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077
    HistoryEnabled = True
    HistoryStorage = hsFile
    HistoryKey = 'D:\Embarcadero\Projects\MyJob\Application_mysql\registry.txt'
    VisibleItems.Strings = (
      'Server='#1057#1077#1088#1074#1077#1088' '
      'Port='#1055#1086#1088#1090' '
      'Database='#1041#1044' '
      'User_Name='#1048#1084#1103' '
      'Password='#1055#1072#1088#1086#1083#1100)
    OnShow = fd_login_app_mysqlShow
    OnLogin = fd_login_app_mysqlLogin
    Left = 320
    Top = 104
  end
  object fd_g_select_row: TFDQuery
    Connection = con_app_mysql
    Left = 720
    Top = 208
  end
  object fd_g_All_row: TFDQuery
    Connection = con_app_mysql
    Left = 624
    Top = 208
  end
  object fd_g_Mac: TFDQuery
    Connection = con_app_mysql
    SQL.Strings = (
      'SELECT (@cnt := @cnt + 1) as '#39#8470#39','
      'device_name as '#39#1048#1084#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072#39','
      'ethaddr, id_serial as '#39#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088#39','
      'device_version, attempt as '#39#1053#1086#1084#1077#1088' '#1087#1086#1087#1099#1090#1082#1080#39' ,'
      'request_date as '#39#1044#1072#1090#1072' '#1079#1072#1087#1088#1086#1089#1072#39', '
      'original_version as '#39#1058#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103#39','
      'proposed_version as '#39#1055#1088#1077#1076#1086#1083#1078#1077#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103#39','
      'device_selector as '#39#1057#1086#1089#1090#1072#1074' '#1084#1086#1076#1091#1083#1103#39'  '
      'FROM db_angtel_composite.db_composite_tb'
      'CROSS JOIN (SELECT @cnt := 0) as dummy '
      'WHERE id_serial BETWEEN :p_start and :p_end'
      'ORDER BY id_serial ;')
    Left = 728
    Top = 24
    ParamData = <
      item
        Name = 'P_START'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'P_END'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
