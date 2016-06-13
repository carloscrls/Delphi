object Form2: TForm2
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 245
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Aguarde 30 segundos'
  ClientHeight = 20
  ClientWidth = 190
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 2
    Width = 186
    Height = 16
    Caption = 'Favor aguardar 30 segundos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 24
    Width = 14
    Height = 13
    Caption = 'HD'
  end
  object Label3: TLabel
    Left = 8
    Top = 43
    Width = 22
    Height = 13
    Caption = 'RAM'
  end
  object Label4: TLabel
    Left = 8
    Top = 62
    Width = 20
    Height = 13
    Caption = 'TAG'
  end
  object Label5: TLabel
    Left = 8
    Top = 81
    Width = 75
    Height = 13
    Caption = 'PROCESSADOR'
  end
  object Label6: TLabel
    Left = 8
    Top = 100
    Width = 89
    Height = 13
    Caption = 'WINDOWS MODEL'
  end
  object Label7: TLabel
    Left = 8
    Top = 119
    Width = 55
    Height = 13
    Caption = 'HOSTNAME'
  end
  object Label8: TLabel
    Left = 8
    Top = 138
    Width = 76
    Height = 13
    Caption = 'LOGON SERVER'
  end
  object ButtonEXECINVENT: TButton
    Left = 568
    Top = 51
    Width = 185
    Height = 25
    Caption = 'ExecInvent'
    TabOrder = 0
    Visible = False
    OnClick = ButtonEXECINVENTClick
  end
  object Edit1: TEdit
    Left = 568
    Top = 0
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'digite o ip do desktop p/ consultada'
    Visible = False
    OnClick = Edit1Click
  end
  object Memo1: TMemo
    Left = 588
    Top = 175
    Width = 185
    Height = 68
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object ButtonLEIP: TButton
    Left = 568
    Top = 27
    Width = 185
    Height = 25
    Caption = 'LE IP '
    TabOrder = 3
    Visible = False
    OnClick = ButtonLEIPClick
  end
  object MemoHD: TMemo
    Left = 208
    Top = 176
    Width = 185
    Height = 67
    Ctl3D = False
    Lines.Strings = (
      'Memo1')
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
  end
  object Memo_Ram: TMemo
    Left = 208
    Top = 249
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
    Visible = False
  end
  object MemoTAG: TMemo
    Left = 208
    Top = 320
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
    Visible = False
  end
  object MemoProcessador: TMemo
    Left = 399
    Top = 179
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
    Visible = False
  end
  object MemoOsName: TMemo
    Left = 399
    Top = 249
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
    Visible = False
  end
  object MemoHost: TMemo
    Left = 399
    Top = 320
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
    Visible = False
  end
  object ButtonCARRLABEL: TButton
    Left = 568
    Top = 99
    Width = 185
    Height = 25
    Caption = 'CARREGA PARA LABEL '
    TabOrder = 10
    Visible = False
    OnClick = ButtonCARRLABELClick
  end
  object ButtonCarrMEMO: TButton
    Left = 568
    Top = 74
    Width = 185
    Height = 25
    Caption = 'Carrega para MEMO'
    TabOrder = 11
    Visible = False
    OnClick = ButtonCarrMEMOClick
  end
  object TimerLOCAL: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerLOCALTimer
    Left = 160
    Top = 232
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryEnabled = False
    HistoryFilename = 'iphist.dat'
    Left = 152
    Top = 288
  end
end
