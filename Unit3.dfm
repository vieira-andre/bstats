object Form3: TForm3
  Left = 206
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Beisebol Stats '#8226' Defesa'
  ClientHeight = 371
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lb_Result: TLabel
    Left = 208
    Top = 272
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
  object lb_1: TLabel
    Left = 304
    Top = 24
    Width = 4
    Height = 13
    Visible = False
  end
  object lb_2: TLabel
    Left = 304
    Top = 80
    Width = 4
    Height = 13
    Visible = False
  end
  object lb_3: TLabel
    Left = 304
    Top = 136
    Width = 4
    Height = 13
    Visible = False
  end
  object rg_Options: TRadioGroup
    Left = 24
    Top = 16
    Width = 249
    Height = 241
    Caption = 'Estat'#237'sticas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object rb_ERA: TRadioButton
    Left = 40
    Top = 48
    Width = 201
    Height = 17
    Caption = 'M'#233'dia de corridas limpas (ERA)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = rb_ERAClick
  end
  object rb_WHIP: TRadioButton
    Left = 40
    Top = 80
    Width = 153
    Height = 33
    Caption = 'Walks plus hits per innings pitched (WHIP)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    WordWrap = True
    OnClick = rb_WHIPClick
  end
  object bt_Calcular: TButton
    Left = 24
    Top = 272
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
  object bt_Limpar: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 33
    Caption = '&Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = bt_LimparClick
  end
  object ed_Result: TEdit
    Left = 208
    Top = 288
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object ed_1: TEdit
    Left = 304
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 6
    Visible = False
    OnKeyPress = ed_1KeyPress
  end
  object ed_2: TEdit
    Left = 304
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 7
    Visible = False
    OnKeyPress = ed_2KeyPress
  end
  object ed_3: TEdit
    Left = 304
    Top = 152
    Width = 65
    Height = 21
    TabOrder = 8
    Visible = False
    OnKeyPress = ed_3KeyPress
  end
  object rb_KBB: TRadioButton
    Left = 40
    Top = 128
    Width = 89
    Height = 17
    Caption = 'Raz'#227'o K/BB'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = rb_KBBClick
  end
  object rb_K9: TRadioButton
    Left = 40
    Top = 160
    Width = 201
    Height = 17
    Caption = 'Strikeouts por 9 entradas (K/9)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = rb_K9Click
  end
  object rb_FPct: TRadioButton
    Left = 40
    Top = 192
    Width = 129
    Height = 17
    Caption = '% defensiva (FPct)'
    TabOrder = 11
    OnClick = rb_FPctClick
  end
  object rb_RF: TRadioButton
    Left = 40
    Top = 224
    Width = 121
    Height = 17
    Caption = 'Fator alcance (RF)'
    TabOrder = 12
    OnClick = rb_RFClick
  end
  object MainMenu: TMainMenu
    object Opes: TMenuItem
      Caption = '&Op'#231#245'es'
      object Ataque: TMenuItem
        Caption = '&Ataque'
        OnClick = AtaqueClick
      end
      object Medidas: TMenuItem
        Caption = '&Medidas'
        OnClick = MedidasClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = '&Sair'
        OnClick = SairClick
      end
    end
    object Sobre: TMenuItem
      Caption = '&Sobre'
      OnClick = SobreClick
    end
  end
end
