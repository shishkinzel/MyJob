object dbmPrintLabel: TdbmPrintLabel
  OldCreateOrder = False
  Height = 215
  Width = 355
  object fdmtblPrint: TFDMemTable
    FieldDefs = <>
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
    Top = 24
    object ssPrintid: TStringField
      FieldName = 'id'
    end
    object blPrintid_blob: TBlobField
      FieldName = 'id_blob'
    end
    object blPrintid_blob_scale: TBlobField
      FieldName = 'id_blob_scale'
    end
    object ssPrintid_space: TStringField
      FieldName = 'id_space'
    end
    object ssPrintmac: TStringField
      FieldName = 'mac'
    end
    object ssPrintmac_extended: TStringField
      FieldName = 'mac_extended'
    end
    object ssPrintid_mac: TStringField
      DisplayWidth = 50
      FieldName = 'id_mac'
      Size = 50
    end
    object blid_mac_blob: TBlobField
      FieldName = 'id_mac_blob'
    end
    object sslPrintmac_lower: TStringField
      FieldName = 'mac_lower'
    end
  end
  object brcdPrintLabel: TBarcode
    ShowText = False
    Left = 88
    Top = 24
  end
  object fdmtblReport: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'f0'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'f1'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'f2'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'f3'
        DataType = ftString
        Size = 200
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
    Left = 16
    Top = 80
    object fdmtblReportf0: TStringField
      FieldName = 'f0'
      Size = 100
    end
    object fdmtblReportf1: TStringField
      FieldName = 'f1'
      Size = 150
    end
    object fdmtblReportf2: TStringField
      FieldName = 'f2'
      Size = 150
    end
    object fdmtblReportf3: TStringField
      FieldName = 'f3'
      Size = 200
    end
  end
end
