object dbMain: TdbMain
  OldCreateOrder = False
  Height = 215
  Width = 355
  object db_memTab_Clobal: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'name_dev'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'date_dev'
        DataType = ftDate
      end
      item
        Name = 'id_dev'
        DataType = ftLargeint
      end
      item
        Name = 'mac_dev'
        DataType = ftString
        Size = 17
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
    Top = 16
    object ss_memTab_Clobal_name_dev: TStringField
      Alignment = taCenter
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      FieldName = 'name_dev'
      Size = 120
    end
    object db_memTab_Clobal_date_dev: TDateField
      Alignment = taCenter
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date_dev'
      KeyFields = 'date_dev'
    end
    object db_memTab_Clobal_id_dev: TLargeintField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      FieldName = 'id_dev'
    end
    object db_memTab_Clobal_mac_dev: TStringField
      FieldName = 'mac_dev'
      Size = 17
    end
  end
  object db_memTab_Working: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'name_dev'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'date_dev'
        DataType = ftDate
      end
      item
        Name = 'id_dev'
        DataType = ftLargeint
      end
      item
        Name = 'mac_dev'
        DataType = ftString
        Size = 17
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
    Left = 144
    Top = 16
    object dm_memTab_Working_name_dev: TStringField
      Alignment = taCenter
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
      FieldName = 'name_dev'
      Size = 120
    end
    object dm_memTab_Working_date_dev: TDateField
      Alignment = taCenter
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date_dev'
      KeyFields = 'date_dev'
    end
    object dm_memTab_Working_id_dev: TLargeintField
      DisplayLabel = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
      FieldName = 'id_dev'
    end
    object dm_memTab_Working_mac_dev: TStringField
      FieldName = 'mac_dev'
      Size = 17
    end
  end
end
