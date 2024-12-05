object dm_parserxls: Tdm_parserxls
  OldCreateOrder = False
  Height = 614
  Width = 900
  object mem_specification: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'num'
        DataType = ftAutoInc
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 400
      end
      item
        Name = 'quantity'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'codetmc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'note'
        DataType = ftString
        Size = 50
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
    Left = 808
    Top = 88
    object atncfld_specification_num: TAutoIncField
      FieldName = 'num'
    end
    object strngfld_specification_name: TStringField
      FieldName = 'name'
      Size = 400
    end
    object strngfld_specification_quantity: TStringField
      FieldName = 'quantity'
      Size = 5
    end
    object strngfld_specification_codetmc: TStringField
      FieldName = 'codetmc'
      Size = 10
    end
    object strngfld_specificationnote: TStringField
      FieldName = 'note'
      Size = 50
    end
  end
  object mem_db_angtelTMC: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 808
    Top = 24
    object atncfld_db_angtelTMC_num: TAutoIncField
      FieldName = 'num'
    end
    object strngfld_db_angtelTMC_name: TStringField
      FieldName = 'name'
      Size = 400
    end
    object strngfld_db_angtelTMC_code: TStringField
      FieldName = 'code'
      Size = 10
    end
  end
  object mem_list_of_elements: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'num'
        DataType = ftAutoInc
      end
      item
        Name = 'position'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 400
      end
      item
        Name = 'quantity'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'codetmc'
        DataType = ftString
        Size = 10
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
    Left = 808
    Top = 144
    object AutoIncField1: TAutoIncField
      FieldName = 'num'
    end
    object strngfld_list_of_elements_position: TStringField
      FieldName = 'position'
    end
    object StringField1: TStringField
      FieldName = 'name'
      Size = 400
    end
    object StringField2: TStringField
      FieldName = 'quantity'
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'codetmc'
      Size = 10
    end
  end
  object con_db_angtel_assortment: TFDConnection
    Params.Strings = (
      'Database=db_angtel_assortment'
      'User_Name=shishkinzel'
      'Password=@Zel00000000'
      'Server=172.17.17.58'
      'DriverID=MySQL'
      'CharacterSet=utf8')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object fd_script_clear: TFDScript
    SQLScripts = <
      item
        Name = 'clear db_tmc'
        SQL.Strings = (
          'TRUNCATE tb_codetmc')
      end>
    Connection = con_db_angtel_assortment
    Params = <>
    Macros = <>
    Left = 176
    Top = 32
  end
end
