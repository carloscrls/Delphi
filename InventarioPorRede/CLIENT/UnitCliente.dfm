object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 236
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    458
    236)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 47
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 66
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 16
    Top = 85
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label4: TLabel
    Left = 16
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label5: TLabel
    Left = 16
    Top = 123
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label6: TLabel
    Left = 16
    Top = 142
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label7: TLabel
    Left = 16
    Top = 160
    Width = 553
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 376
    Top = 39
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = 'gera'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 345
    Height = 33
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 376
    Top = 70
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = 'carrega'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ShowAll: TButton
    Left = 376
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = 'Show'
    TabOrder = 3
    OnClick = ShowAllClick
  end
end
