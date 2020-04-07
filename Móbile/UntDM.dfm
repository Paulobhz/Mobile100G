object DM: TDM
  OldCreateOrder = False
  Height = 330
  Width = 480
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\Projetos\Mobile100G\M'#243'bile\DataBase\mobile100.db'
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    BeforeConnect = FDConnBeforeConnect
    Left = 48
    Top = 32
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 416
    Top = 16
  end
end
