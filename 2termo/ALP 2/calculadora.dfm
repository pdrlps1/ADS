object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 578
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbln1: TLabel
    Left = 57
    Top = 139
    Width = 145
    Height = 15
    Caption = 'Informe o primeiro numero'
  end
  object lbln2: TLabel
    Left = 56
    Top = 187
    Width = 146
    Height = 15
    Caption = 'Informe o segundo numero'
  end
  object lblresultado: TLabel
    Left = 440
    Top = 139
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object lblresult: TLabel
    Left = 512
    Top = 139
    Width = 6
    Height = 15
    Caption = '0'
  end
  object edtn1: TEdit
    Left = 232
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 0
    OnClick = edtn1Click
  end
  object edtn2: TEdit
    Left = 232
    Top = 184
    Width = 121
    Height = 23
    TabOrder = 1
    OnClick = edtn2Click
  end
  object btncalcular: TButton
    Left = 280
    Top = 232
    Width = 75
    Height = 25
    Caption = '&Calcular'
    TabOrder = 2
    OnClick = btncalcularClick
  end
  object btnlimpar: TButton
    Left = 376
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btnlimparClick
  end
  object btnsoma: TButton
    Left = 296
    Top = 296
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = btnsomaClick
  end
  object btnsubtracao: TButton
    Left = 400
    Top = 296
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = btnsubtracaoClick
  end
  object btnmultiplicacao: TButton
    Left = 296
    Top = 344
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 6
    OnClick = btnmultiplicacaoClick
  end
  object btndivisao: TButton
    Left = 400
    Top = 344
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 7
    OnClick = btndivisaoClick
  end
end
