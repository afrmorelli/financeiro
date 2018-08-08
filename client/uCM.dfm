object cm: Tcm
  OldCreateOrder = False
  Height = 271
  Width = 415
  object sqlConexao: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'Port=211'
      'HostName=localhost'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/')
    Connected = True
    Left = 48
    Top = 40
  end
  object dspConexao: TDSProviderConnection
    ServerClassName = 'Tsm'
    Connected = True
    SQLConnection = sqlConexao
    Left = 56
    Top = 152
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    ProviderName = 'dspUsuario'
    RemoteServer = dspConexao
    Left = 152
    Top = 56
    object cdsUsuarioid: TIntegerField
      FieldName = 'id'
    end
    object cdsUsuarionome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsUsuariologin: TWideStringField
      FieldName = 'login'
      Size = 256
    end
    object cdsUsuariosenha: TWideStringField
      FieldName = 'senha'
      Size = 256
    end
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from usuario '
    Params = <>
    ProviderName = 'dspTemp'
    RemoteServer = dspConexao
    Left = 168
    Top = 208
  end
end
