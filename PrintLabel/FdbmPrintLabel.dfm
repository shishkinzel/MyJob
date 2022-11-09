object dbmPrintLabel: TdbmPrintLabel
  OldCreateOrder = False
  Height = 215
  Width = 355
  object fdmtblPrint: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'id_blob'
        DataType = ftBlob
      end
      item
        Name = 'id_blob_scale'
        DataType = ftBlob
      end
      item
        Name = 'id_space'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mac'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mac_extended'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'id_mac'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_mac_blob'
        DataType = ftBlob
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
  end
  object brcdPrintLabel: TBarcode
    Left = 88
    Top = 24
  end
end
