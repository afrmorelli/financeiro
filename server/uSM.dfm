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
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 80
    Top = 328
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 88
    Top = 224
  end
end
