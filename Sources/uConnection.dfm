object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 218
  Width = 333
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=CadastroCarros'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 48
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 51
    Top = 160
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'carros'
    TableName = 'carros'
    Left = 48
    Top = 88
    object FDTable1codigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object FDTable1marca: TWideStringField
      FieldName = 'marca'
      Origin = 'marca'
    end
    object FDTable1modelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 70
    end
    object FDTable1cor: TWideStringField
      FieldName = 'cor'
      Origin = 'cor'
    end
    object FDTable1anofabricacao: TDateField
      FieldName = 'anofabricacao'
      Origin = 'anofabricacao'
    end
  end
end
