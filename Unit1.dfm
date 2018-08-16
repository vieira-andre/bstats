object Form1: TForm1
  Left = 190
  Top = 116
  BorderStyle = bsSingle
  Caption = 'Beisebol Stats '#187' Rebatedor'
  ClientHeight = 292
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lb_Result: TLabel
    Left = 192
    Top = 192
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
  object lb_AB: TLabel
    Left = 288
    Top = 24
    Width = 124
    Height = 13
    Caption = 'Vezes ao bast'#227'o (AB)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_H: TLabel
    Left = 288
    Top = 80
    Width = 78
    Height = 13
    Caption = 'Rebatidas (H)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_2B: TLabel
    Left = 384
    Top = 80
    Width = 68
    Height = 13
    Caption = 'Duplas (2B)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_3B: TLabel
    Left = 480
    Top = 80
    Width = 67
    Height = 13
    Caption = 'Triplas (3B)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_HR: TLabel
    Left = 576
    Top = 80
    Width = 92
    Height = 13
    Caption = 'Home runs (HR)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_BB: TLabel
    Left = 288
    Top = 136
    Width = 64
    Height = 13
    Caption = 'Walks (BB)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_HBP: TLabel
    Left = 384
    Top = 136
    Width = 107
    Height = 13
    Caption = 'Hits by pitch (HBP)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lb_SF: TLabel
    Left = 512
    Top = 136
    Width = 125
    Height = 13
    Caption = 'Flies de sacrif'#237'cio (SF)'
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
    Height = 161
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
    Cursor = crHandPoint
    Caption = 'M'#233'dia de rebatidas (BA)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = rb_BAClick
  end
  object rb_OBP: TRadioButton
    Left = 40
    Top = 80
    Width = 121
    Height = 17
    Cursor = crHandPoint
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
    Cursor = crHandPoint
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
    Cursor = crHandPoint
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
    Top = 208
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object ed_AB: TEdit
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
    TabOrder = 6
    Visible = False
    OnKeyPress = ed_ABKeyPress
  end
  object ed_H: TEdit
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
    TabOrder = 7
    Visible = False
    OnKeyPress = ed_HKeyPress
  end
  object ed_2B: TEdit
    Left = 384
    Top = 96
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnKeyPress = ed_2BKeyPress
  end
  object ed_3B: TEdit
    Left = 480
    Top = 96
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Visible = False
    OnKeyPress = ed_3BKeyPress
  end
  object ed_HR: TEdit
    Left = 576
    Top = 96
    Width = 65
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Visible = False
    OnKeyPress = ed_HRKeyPress
  end
  object ed_BB: TEdit
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
    TabOrder = 11
    Visible = False
    OnKeyPress = ed_BBKeyPress
  end
  object ed_HBP: TEdit
    Left = 384
    Top = 152
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
    OnKeyPress = ed_HBPKeyPress
  end
  object ed_SF: TEdit
    Left = 512
    Top = 152
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
    OnKeyPress = ed_SFKeyPress
  end
  object bt_Limpar: TButton
    Left = 24
    Top = 240
    Width = 73
    Height = 25
    Caption = '&Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = bt_LimparClick
  end
  object bt_Calcular: TButton
    Left = 24
    Top = 200
    Width = 73
    Height = 25
    Caption = '&Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = bt_CalcularClick
  end
  object MainMenu: TMainMenu
    object Opes: TMenuItem
      Caption = '&Op'#231#245'es'
      object Arremessador: TMenuItem
        Caption = '&Arremessador'
        OnClick = ArremessadorClick
      end
      object Medidas: TMenuItem
        Caption = '&Medidas'
        OnClick = MedidasClick
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
