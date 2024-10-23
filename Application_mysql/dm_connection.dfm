object dm_Application_mysql: Tdm_Application_mysql
  OldCreateOrder = False
  Height = 723
  Width = 991
  object con_app_mysql: TFDConnection
    ConnectionName = 'db_angtel_composite'
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object db_memTab_app_mysql: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 144
  end
  object fd_g_Date: TFDQuery
    Connection = con_app_mysql
    SQL.Strings = (
      'SELECT (@cnt := @cnt + 1) AS '#39#8470#39','
      'device_name as '#39#1048#1084#1103' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072#39','
      'ethaddr, id_serial as '#39#1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088#39','
      'device_version, attempt as '#39#1053#1086#1084#1077#1088' '#1087#1086#1087#1099#1090#1082#1080#39' ,'
      'request_date as '#39#1044#1072#1090#1072' '#1079#1072#1087#1088#1086#1089#1072#39', '
      
        'original_version as '#39#1058#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103#39', proposed_version as '#39#1055#1088#1077#1076#1086 +
        #1083#1078#1077#1085#1085#1072#1103' '#1074#1077#1088#1089#1080#1103#39' '
      'FROM db_angtel_composite.db_composite_tb'
      'CROSS JOIN (SELECT @cnt := 0) AS dummy '
      'WHERE request_date BETWEEN :p_start and :p_end'
      'ORDER BY request_date ;')
    Left = 840
    Top = 32
    ParamData = <
      item
        Name = 'P_START'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'P_END'
        DataType = ftDateTime
        ParamType = ptInput
      end>
  end
end
