object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 40
    Width = 35
    Height = 15
    Caption = 'cpf_pk'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 88
    Top = 88
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 88
    Top = 136
    Width = 49
    Height = 15
    Caption = 'endereco'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 88
    Top = 184
    Width = 43
    Height = 15
    Caption = 'telefone'
    FocusControl = DBEdit4
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 628
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 128
    ExplicitWidth = 240
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 288
    Width = 628
    Height = 154
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 56
    Width = 154
    Height = 23
    DataField = 'cpf_pk'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 104
    Width = 19
    Height = 23
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 152
    Width = 19
    Height = 23
    DataField = 'endereco'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 88
    Top = 200
    Width = 154
    Height = 23
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=cadastro;Initial Catalog=cadastro'
    LoginPrompt = False
    Left = 536
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 536
    Top = 176
    object ADOQuery1cpf_pk: TIntegerField
      FieldName = 'cpf_pk'
    end
    object ADOQuery1nome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1endereco: TStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1telefone: TIntegerField
      FieldName = 'telefone'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 536
    Top = 48
  end
end
