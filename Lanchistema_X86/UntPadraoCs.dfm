object frmPadraoCs: TfrmPadraoCs
  Left = 0
  Top = 0
  Caption = 'frmPadraoCs'
  ClientHeight = 428
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 121
    Align = alTop
    TabOrder = 0
    object btn_filtrar_ft: TButton
      Left = 518
      Top = 82
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 0
      OnClick = btn_filtrar_ftClick
    end
    object GroupBox1: TGroupBox
      Left = 122
      Top = 16
      Width = 167
      Height = 91
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object Label1: TLabel
        Left = 22
        Top = 28
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Label2: TLabel
        Left = 18
        Top = 55
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 44
        Top = 24
        Width = 102
        Height = 21
        Date = 42529.446343379630000000
        Time = 42529.446343379630000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 44
        Top = 51
        Width = 102
        Height = 21
        Date = 42529.446352615740000000
        Time = 42529.446352615740000000
        TabOrder = 1
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 16
      Width = 108
      Height = 91
      Caption = 'Data'
      Items.Strings = (
        'Inclus'#227'o'
        'Altera'#231#227'o')
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 162
    Width = 605
    Height = 266
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 456
    ExplicitTop = 312
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 8
      Top = 6
      Width = 585
      Height = 203
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 605
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitTop = 95
    object edt_nome: TLabeledEdit
      Left = 88
      Top = 11
      Width = 201
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'edt_nome'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object btn_filtrar_sc: TButton
      Left = 295
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
    end
  end
  object FDQryCons: TFDQuery
    Connection = DM.FDConnection1
    Left = 296
    Top = 257
  end
end
