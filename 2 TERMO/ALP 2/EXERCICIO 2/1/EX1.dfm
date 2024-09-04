object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 291
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl1: TLabel
    Left = 80
    Top = 64
    Width = 80
    Height = 15
    Caption = 'Valor da venda:'
  end
  object lbl2: TLabel
    Left = 84
    Top = 104
    Width = 76
    Height = 15
    Caption = 'Comiss'#227'o (%):'
  end
  object lbl3: TLabel
    Left = 54
    Top = 144
    Width = 106
    Height = 15
    Caption = 'Valor comissao (R$):'
  end
  object lbl4: TLabel
    Left = 179
    Top = 144
    Width = 3
    Height = 15
  end
  object edtvenda: TEdit
    Left = 176
    Top = 61
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtcomissao: TEdit
    Left = 176
    Top = 101
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object btncalcular: TButton
    Left = 344
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btncalcularClick
  end
end
