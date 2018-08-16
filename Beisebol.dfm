object Form1: TForm1
  Left = 197
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Beisebol Stats '#8226' Ataque'
  ClientHeight = 448
  ClientWidth = 583
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
    Left = 192
    Top = 352
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
    Left = 288
    Top = 24
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
  object lb_2: TLabel
    Left = 288
    Top = 80
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
  object lb_3: TLabel
    Left = 288
    Top = 136
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
  object lb_4: TLabel
    Left = 288
    Top = 192
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
  object lb_5: TLabel
    Left = 288
    Top = 248
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
  object lb_6: TLabel
    Left = 400
    Top = 80
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
  object lb_7: TLabel
    Left = 400
    Top = 136
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
  object lb_8: TLabel
    Left = 400
    Top = 192
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
    Width = 233
    Height = 321
    Caption = 'Estat'#237'sticas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object rb_BA: TRadioButton
    Left = 40
    Top = 48
    Width = 161
    Height = 17
    Caption = 'M'#233'dia de rebatidas (BA)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = rb_BAClick
  end
  object rb_OBP: TRadioButton
    Left = 40
    Top = 80
    Width = 121
    Height = 17
    Caption = '% em base (OBP)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = rb_OBPClick
  end
  object rb_SLG: TRadioButton
    Left = 40
    Top = 112
    Width = 105
    Height = 17
    Caption = 'Slugging (SLG)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = rb_SLGClick
  end
  object rb_OPS: TRadioButton
    Left = 40
    Top = 144
    Width = 185
    Height = 17
    Caption = 'On-base plus slugging (OPS)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = rb_OPSClick
  end
  object ed_Result: TEdit
    Left = 192
    Top = 368
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
  object bt_Limpar: TButton
    Left = 24
    Top = 400
    Width = 73
    Height = 33
    Caption = '&Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = bt_LimparClick
  end
  object bt_Calcular: TButton
    Left = 24
    Top = 352
    Width = 73
    Height = 33
    Caption = '&Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = bt_CalcularClick
  end
  object rb_IsoP: TRadioButton
    Left = 40
    Top = 240
    Width = 153
    Height = 17
    Caption = 'Pot'#234'ncia isolada (IsoP)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = rb_IsoPClick
  end
  object rb_TB: TRadioButton
    Left = 40
    Top = 176
    Width = 121
    Height = 17
    Caption = 'Bases totais (TB)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = rb_TBClick
  end
  object rb_SecA: TRadioButton
    Left = 40
    Top = 208
    Width = 161
    Height = 17
    Caption = 'M'#233'dia secund'#225'ria (SecA)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = rb_SecAClick
  end
  object rb_BBK: TRadioButton
    Left = 40
    Top = 272
    Width = 89
    Height = 17
    Caption = 'Raz'#227'o BB/K'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = rb_BBKClick
  end
  object ed_1: TEdit
    Left = 288
    Top = 40
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Visible = False
    OnKeyPress = ed_1KeyPress
  end
  object ed_2: TEdit
    Left = 288
    Top = 96
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Visible = False
    OnKeyPress = ed_2KeyPress
  end
  object ed_3: TEdit
    Left = 288
    Top = 152
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Visible = False
    OnKeyPress = ed_3KeyPress
  end
  object ed_4: TEdit
    Left = 288
    Top = 208
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    Visible = False
    OnKeyPress = ed_4KeyPress
  end
  object ed_5: TEdit
    Left = 288
    Top = 264
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    Visible = False
    OnKeyPress = ed_5KeyPress
  end
  object ed_6: TEdit
    Left = 400
    Top = 96
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Visible = False
    OnKeyPress = ed_6KeyPress
  end
  object ed_7: TEdit
    Left = 400
    Top = 152
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    Visible = False
    OnKeyPress = ed_7KeyPress
  end
  object ed_8: TEdit
    Left = 400
    Top = 208
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    Visible = False
    OnKeyPress = ed_8KeyPress
  end
  object rb_SBP: TRadioButton
    Left = 40
    Top = 304
    Width = 137
    Height = 17
    Caption = '% de roubos (SB%)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = rb_SBPClick
  end
  object MainMenu: TMainMenu
    object Opes: TMenuItem
      Caption = '&Op'#231#245'es'
      object Defesa: TMenuItem
        Caption = '&Defesa'
        OnClick = DefesaClick
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
  object XPManifest1: TXPManifest
    Left = 552
    Top = 8
  end
end
