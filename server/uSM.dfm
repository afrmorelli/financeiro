object SM: TSM
  OldCreateOrder = False
  Height = 409
  Width = 464
  object fdConexao: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Database=financeiro'
      'Password=amor4893'
      'Server=18.228.69.90'
      'User_Name=root')
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 208
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 56
    Top = 120
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 392
    Top = 48
  end
  object fbConexaoPG: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'Database=financeiro'
      'Password=amor4893'
      'Server=18.228.69.90'
      'User_Name=root')
    Connected = True
    LoginPrompt = False
    Left = 272
    Top = 48
  end
  object fdQueryTemp: TFDQuery
    Connection = fbConexaoPG
    Left = 272
    Top = 136
  end
  object dspTemp: TDataSetProvider
    DataSet = fdQueryTemp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 264
    Top = 248
  end
  object fdQueryUsuario: TFDQuery
    Filtered = True
    Connection = fbConexaoPG
    SQL.Strings = (
      'Select * from usuario'
      'where id = :pId')
    Left = 376
    Top = 152
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQueryUsuarioid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQueryUsuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object fdQueryUsuariologin: TWideStringField
      FieldName = 'login'
      Origin = '"login"'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object fdQueryUsuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = fdQueryUsuario
    Left = 392
    Top = 248
  end
end
