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
    Active = True
    Connection = con_app_mysql
    SQL.Strings = (
      'SELECT * FROM db_angtel_composite.db_composite_tb '
      
        'where request_date BETWEEN '#39'p_start=:p_date_start'#39' and '#39'p_end=:p' +
        '_date_end'#39';')
    Left = 840
    Top = 32
  end
end
