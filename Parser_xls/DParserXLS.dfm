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
    Left = 80
    Top = 16
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
    Left = 24
    Top = 16
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
    Left = 160
    Top = 16
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
end
