object frmcadcliente: Tfrmcadcliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 523
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 17
    Height = 15
    Caption = 'cpf'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 49
    Height = 15
    Caption = 'endereco'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 184
    Width = 35
    Height = 15
    Caption = 'cidade'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 232
    Width = 11
    Height = 15
    Caption = 'uf'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 24
    Top = 280
    Width = 19
    Height = 15
    Caption = 'cep'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 24
    Top = 328
    Width = 43
    Height = 15
    Caption = 'telefone'
    FocusControl = DBEdit7
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 628
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 208
    ExplicitWidth = 240
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 403
    Width = 628
    Height = 120
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
    Left = 24
    Top = 56
    Width = 439
    Height = 23
    DataField = 'cpf'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 104
    Width = 529
    Height = 23
    DataField = 'endereco'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 152
    Width = 529
    Height = 23
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 200
    Width = 529
    Height = 23
    DataField = 'cidade'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 248
    Width = 34
    Height = 23
    DataField = 'uf'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 296
    Width = 439
    Height = 23
    DataField = 'cep'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 24
    Top = 344
    Width = 439
    Height = 23
    DataField = 'telefone'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = dmprincipal.adoquerycliente
    Left = 320
    Top = 248
  end
end
