object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 445
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 2
    Width = 42
    Height = 16
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 283
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 16
    Top = 302
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 16
    Top = 321
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 16
    Top = 340
    Width = 31
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 16
    Top = 359
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 16
    Top = 378
    Width = 31
    Height = 13
    Caption = 'Label7'
  end
  object Label8: TLabel
    Left = 16
    Top = 397
    Width = 31
    Height = 13
    Caption = 'Label8'
  end
  object Button1: TButton
    Left = 8
    Top = 66
    Width = 185
    Height = 25
    Caption = 'Executar Inventario'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 8
    Top = 97
    Width = 185
    Height = 135
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Top = 35
    Width = 185
    Height = 25
    Caption = 'LE IP '
    TabOrder = 3
    OnClick = Button2Click
  end
  object MemoHD: TMemo
    Left = 216
    Top = 24
    Width = 185
    Height = 67
    Ctl3D = False
    Lines.Strings = (
      'Memo1')
    ParentCtl3D = False
    TabOrder = 4
  end
  object Memo_Ram: TMemo
    Left = 216
    Top = 97
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object MemoTAG: TMemo
    Left = 216
    Top = 168
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object MemoProcessador: TMemo
    Left = 407
    Top = 27
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object MemoOsName: TMemo
    Left = 407
    Top = 97
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object MemoHost: TMemo
    Left = 407
    Top = 168
    Width = 185
    Height = 67
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
  end
  object Button3: TButton
    Left = 8
    Top = 233
    Width = 185
    Height = 25
    Caption = 'CARREGA PARA LABEL '
    TabOrder = 10
    OnClick = Button3Click
  end
end
