object frmPadraoRel: TfrmPadraoRel
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'frmPadraoRel'
  ClientHeight = 249
  ClientWidth = 422
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
    Top = 41
    Width = 422
    Height = 208
    Align = alClient
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 240
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 422
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 420
      Height = 39
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Relat'#243'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 56
      ExplicitHeight = 22
    end
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42502.670121203700000000
    ReportOptions.LastChange = 42502.670121203700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 57
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    Left = 304
    Top = 57
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    Left = 352
    Top = 57
  end
end
