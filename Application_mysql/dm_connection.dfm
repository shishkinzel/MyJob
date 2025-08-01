object dm_Application_mysql: Tdm_Application_mysql
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 723
  Width = 991
  object con_app_mysql: TFDConnection
    Params.Strings = (
      'Database=db_angtel_composite'
      'Password=00000000'
      'Server=172.17.17.151'
      'User_Name=user'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 24
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
    Left = 48
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
  object fd_g_All_Table: TFDQuery
    Connection = con_app_mysql
    SQL.Strings = (
      'SELECT * FROM db_angtel_composite.db_composite_tb')
    Left = 136
    Top = 200
  end
  object fd_writer_name: TFDBatchMoveTextWriter
    DataDef.Fields = <>
    Left = 128
    Top = 560
  end
  object fd_reader_name: TFDBatchMoveSQLReader
    Connection = con_app_mysql
    ReadSQL = 
      'select distinct device_name from db_angtel_composite.db_composit' +
      'e_tb order by device_name '
    Left = 40
    Top = 552
  end
  object fd_move_name: TFDBatchMove
    Reader = fd_reader_name
    Writer = fd_writer_name
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 40
    Top = 488
  end
  object fd_g_attempt: TFDQuery
    Connection = con_app_mysql
    SQL.Strings = (
      'select min(attempt) as att_min, max(attempt) as att_max '
      'from db_angtel_composite.db_composite_tb;')
    Left = 920
    Top = 120
  end
  object fd_g_All_row: TFDQuery
    Connection = con_app_mysql
    Left = 920
    Top = 16
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
    Left = 912
    Top = 536
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
  object fd_g_Select_One: TFDQuery
    Connection = con_app_mysql
    Left = 424
    Top = 16
  end
  object fd_g_Select_Two: TFDQuery
    Connection = con_app_mysql
    Left = 424
    Top = 64
  end
  object fd_g_Select_Three: TFDQuery
    Connection = con_app_mysql
    Left = 424
    Top = 112
  end
  object fd_g_Select_Four: TFDQuery
    Connection = con_app_mysql
    Left = 424
    Top = 160
  end
  object fd_g_Select_Five: TFDQuery
    Connection = con_app_mysql
    Left = 423
    Top = 208
  end
  object con_MemTable: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 536
    Top = 24
  end
  object fd_loc_sql_Table: TFDLocalSQL
    Connection = con_MemTable
    Active = True
    DataSets = <
      item
        DataSet = db_memTab_app_mysql
        Name = 'memTable'
      end>
    Left = 664
    Top = 24
  end
  object fd_g_Select_mt_one: TFDQuery
    Connection = con_MemTable
    SQL.Strings = (
      '')
    Left = 608
    Top = 72
  end
  object fd_move_MemTable: TFDBatchMove
    Reader = fd_reader_MemTable
    Writer = fd_writer_MemTable
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 56
    Top = 336
  end
  object fd_reader_MemTable: TFDBatchMoveSQLReader
    Connection = con_app_mysql
    ReadSQL = 'SELECT *'#13#10'FROM db_angtel_composite.db_composite_tb;'#13#10
    Left = 48
    Top = 400
  end
  object fd_writer_MemTable: TFDBatchMoveDataSetWriter
    DataSet = db_memTab_app_mysql
    Left = 168
    Top = 400
  end
  object fd_g_Select_mt_two: TFDQuery
    Connection = con_MemTable
    SQL.Strings = (
      '')
    Left = 608
    Top = 120
  end
  object fd_g_Select_mt_three: TFDQuery
    Connection = con_MemTable
    SQL.Strings = (
      '')
    Left = 608
    Top = 160
  end
  object fd_g_Select_mt_four: TFDQuery
    Connection = con_MemTable
    SQL.Strings = (
      '')
    Left = 608
    Top = 200
  end
  object fd_g_Select_mt_five: TFDQuery
    Connection = con_MemTable
    SQL.Strings = (
      '')
    Left = 608
    Top = 240
  end
  object fd_g_Select_six: TFDQuery
    Connection = con_app_mysql
    Left = 423
    Top = 264
  end
  object fd_g_Select_mt_six: TFDQuery
    Connection = con_MemTable
    Left = 607
    Top = 296
  end
end
