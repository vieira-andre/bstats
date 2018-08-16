object Form2: TForm2
  Left = 330
  Top = 180
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Beisebol Stats '#8226' Medidas'
  ClientHeight = 256
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lb_Result: TLabel
    Left = 152
    Top = 160
    Width = 68
    Height = 13
    Caption = 'Resultado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lb_Valor: TLabel
    Left = 248
    Top = 104
    Width = 4
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object rg_Options: TRadioGroup
    Left = 24
    Top = 16
    Width = 193
    Height = 129
    Caption = 'Convers'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object rb_KmhMph: TRadioButton
    Left = 40
    Top = 48
    Width = 97
    Height = 17
    Hint = 'Velocidade'
    Caption = 'Km/h '#8212' Mph'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = rb_KmhMphClick
  end
  object rb_MFt: TRadioButton
    Left = 40
    Top = 80
    Width = 105
    Height = 17
    Hint = 'Dist'#226'ncia'
    Caption = 'Metros '#8212' P'#233's'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = rb_MFtClick
  end
  object bt_Calcular: TButton
    Left = 24
    Top = 160
    Width = 75
    Height = 33
    Caption = '&Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bt_CalcularClick
  end
  object ed_Result: TEdit
    Left = 152
    Top = 176
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object bt_Limpar: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 33
    Caption = '&Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = bt_LimparClick
  end
  object ed_Valor: TEdit
    Left = 248
    Top = 120
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnKeyPress = ed_ValorKeyPress
  end
  object rb_CF: TRadioButton
    Left = 40
    Top = 112
    Width = 145
    Height = 17
    Hint = 'Temperatura'
    Caption = 'Celsius '#8212' Fahrenheit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = rb_CFClick
  end
  object gb_Ops: TGroupBox
    Left = 248
    Top = 24
    Width = 129
    Height = 65
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    object cb_1: TCheckBox
      Left = 8
      Top = 16
      Width = 105
      Height = 17
      TabOrder = 0
      OnClick = cb_1Click
    end
    object cb_2: TCheckBox
      Left = 8
      Top = 40
      Width = 105
      Height = 17
      TabOrder = 1
      OnClick = cb_2Click
    end
  end
  object MainMenu: TMainMenu
    object Opes: TMenuItem
      Caption = '&Op'#231#245'es'
      object Ataque: TMenuItem
        Caption = '&Ataque'
        OnClick = AtaqueClick
      end
      object Defesa: TMenuItem
        Caption = '&Defesa'
        OnClick = DefesaClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = 'Sai&r'
        OnClick = SairClick
      end
    end
    object Sobre: TMenuItem
      Caption = '&Sobre'
      OnClick = SobreClick
    end
  end
end
