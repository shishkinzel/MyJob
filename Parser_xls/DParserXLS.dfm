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
    IndexDefs = <
      item
        Name = 'mem_specificationIndex1'
        Options = [ixNonMaintained]
      end>
    Indexes = <
      item
        Name = 'mem_specificationIndex1'
      end>
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
        Name = 'code'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'test'#13#10
        Fields = 'name'
      end>
    Indexes = <
      item
        Active = True
        Name = 'test'#13#10
        Fields = 'name'
      end>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
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
      end
      item
        Name = 'clear db_specification'
        SQL.Strings = (
          'TRUNCATE tb_specification')
      end>
    Connection = con_db_angtel_assortment
    Params = <>
    Macros = <>
    Left = 152
    Top = 24
  end
  object mv_tmc: TFDBatchMove
    Reader = read_mv_tmc
    Writer = write_mv_tmc
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 48
    Top = 120
  end
  object read_mv_tmc: TFDBatchMoveDataSetReader
    DataSet = mem_db_angtelTMC
    Left = 16
    Top = 184
  end
  object write_mv_tmc: TFDBatchMoveSQLWriter
    Connection = con_db_angtel_assortment
    TableName = 'tb_codetmc'
    Left = 88
    Top = 184
  end
end
