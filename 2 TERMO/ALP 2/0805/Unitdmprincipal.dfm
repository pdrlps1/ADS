object dmprincipal: Tdmprincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=profe' +
      'ssor'
    LoginPrompt = False
    Left = 200
    Top = 200
  end
  object adoquerycliente: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cliente')
    Left = 192
    Top = 288
    object adoqueryclientecpf: TFMTBCDField
      FieldName = 'cpf'
      Precision = 28
      Size = 6
    end
    object adoqueryclienteendereco: TStringField
      FieldName = 'endereco'
      Size = 35
    end
    object adoqueryclientenome: TStringField
      FieldName = 'nome'
      Size = 35
    end
    object adoqueryclientecidade: TStringField
      FieldName = 'cidade'
      Size = 35
    end
    object adoqueryclienteuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object adoqueryclientecep: TFMTBCDField
      FieldName = 'cep'
      Precision = 28
      Size = 6
    end
    object adoqueryclientetelefone: TFMTBCDField
      FieldName = 'telefone'
      Precision = 28
      Size = 6
    end
  end
  object adoqueryfornecedor: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from fornecedor')
    Left = 144
    Top = 408
  end
end