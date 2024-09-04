object frmmedia: Tfrmmedia
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo de M'#233'dia Anual'
  ClientHeight = 307
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 158
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -32
    ExplicitTop = 8
    ExplicitWidth = 780
    object Label6: TLabel
      Left = 336
      Top = 80
      Width = 32
      Height = 15
      Caption = 'Status'
    end
    object Label5: TLabel
      Left = 336
      Top = 40
      Width = 33
      Height = 15
      Caption = 'M'#233'dia'
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 156
      Align = alLeft
      TabOrder = 9
      ExplicitLeft = 0
      ExplicitTop = -3
      object Label7: TLabel
        Left = 89
        Top = 2
        Width = 88
        Height = 15
        Caption = 'Nome do Aluno:'
      end
      object Label1: TLabel
        Left = 119
        Top = 31
        Width = 58
        Height = 15
        Caption = 'Bimestre 1:'
      end
      object Label2: TLabel
        Left = 116
        Top = 63
        Width = 61
        Height = 15
        Caption = 'Bimestre 2: '
      end
      object Label4: TLabel
        Left = 119
        Top = 95
        Width = 58
        Height = 15
        Caption = 'Bimestre 3:'
      end
      object Label3: TLabel
        Left = 119
        Top = 132
        Width = 58
        Height = 15
        Caption = 'Bimestre 4:'
      end
    end
    object edtn1: TEdit
      Left = 192
      Top = 32
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object edtn2: TEdit
      Left = 192
      Top = 64
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object edtn3: TEdit
      Left = 192
      Top = 93
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object edtn4: TEdit
      Left = 192
      Top = 130
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object edtmedia: TEdit
      Left = 375
      Top = 35
      Width = 121
      Height = 23
      Enabled = False
      TabOrder = 5
    end
    object edtstatus: TEdit
      Left = 374
      Top = 77
      Width = 121
      Height = 23
      Enabled = False
      TabOrder = 6
    end
    object btncalcular: TButton
      Left = 319
      Top = 127
      Width = 75
      Height = 25
      Caption = '&Calcular'
      TabOrder = 7
      OnClick = btncalcularClick
    end
    object btnlimpar: TButton
      Left = 400
      Top = 127
      Width = 75
      Height = 25
      Caption = '&Limpar'
      TabOrder = 8
      OnClick = btnlimparClick
    end
    object edtnome: TEdit
      Left = 192
      Top = 3
      Width = 304
      Height = 23
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 266
    Width = 506
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 208
    ExplicitWidth = 185
    object lblhora: TLabel
      Left = 1
      Top = 10
      Width = 504
      Height = 15
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblhora'
      ExplicitTop = 0
      ExplicitWidth = 661
    end
    object lbldata: TLabel
      Left = 1
      Top = 25
      Width = 504
      Height = 15
      Align = alBottom
      Alignment = taCenter
      Caption = 'lbldata'
      ExplicitLeft = 0
      ExplicitTop = 16
      ExplicitWidth = 649
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 158
    Width = 506
    Height = 108
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 296
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lbalunos: TListBox
      Left = 1
      Top = 1
      Width = 504
      Height = 106
      Align = alClient
      Columns = 3
      ItemHeight = 15
      TabOrder = 0
      ExplicitLeft = -55
      ExplicitTop = 25
      ExplicitWidth = 661
      ExplicitHeight = 216
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
    Top = 8
  end
end
