object DataModule1: TDataModule1
  Height = 480
  Width = 694
  object FDQuery1: TFDQuery
    Left = 288
    Top = 192
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Sistema_Academico_db'
      'User_Name=postgres'
      'Password=root'
      'Server=127.0.0.1'
      'DriverID=PG')
    Left = 224
    Top = 200
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Gustavo Erthal\Desktop\ProjetoSistemaAcademico\lib\libp' +
      'q.dll'
    Left = 368
    Top = 192
  end
end
