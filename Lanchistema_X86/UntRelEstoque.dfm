inherited frmRelEstoque: TfrmRelEstoque
  Caption = 'frmRelEstoque'
  ClientHeight = 214
  ClientWidth = 366
  OnActivate = FormActivate
  ExplicitWidth = 382
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 366
    Height = 173
    ExplicitWidth = 366
    ExplicitHeight = 173
    inherited BitBtn1: TBitBtn
      Left = 181
      Top = 139
      Width = 76
      ExplicitLeft = 181
      ExplicitTop = 139
      ExplicitWidth = 76
    end
    inherited BitBtn2: TBitBtn
      Left = 270
      Top = 139
      Width = 76
      ExplicitLeft = 270
      ExplicitTop = 139
      ExplicitWidth = 76
    end
  end
  inherited Panel2: TPanel
    Width = 366
    ExplicitWidth = 366
    inherited Label1: TLabel
      Width = 364
      Caption = 'Relat'#243'rio de Estoque'
      ExplicitWidth = 364
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 16
    Top = 54
    Width = 153
    Height = 105
    Caption = 'ID'
    TabOrder = 2
    object EdtCod1: TLabeledEdit
      Left = 32
      Top = 32
      Width = 89
      Height = 21
      EditLabel.Width = 17
      EditLabel.Height = 13
      EditLabel.Caption = 'De:'
      TabOrder = 0
    end
    object EdtCod2: TLabeledEdit
      Left = 32
      Top = 72
      Width = 89
      Height = 21
      EditLabel.Width = 21
      EditLabel.Height = 13
      EditLabel.Caption = 'At'#233':'
      TabOrder = 1
    end
  end
  object RadioGroup1: TRadioGroup [3]
    Left = 175
    Top = 54
    Width = 82
    Height = 76
    Caption = 'Ordena'#231#227'o'
    Items.Strings = (
      'ID'
      'Nome')
    TabOrder = 3
  end
  object RadioGroup2: TRadioGroup [4]
    Left = 263
    Top = 54
    Width = 82
    Height = 76
    Caption = 'Status'
    Items.Strings = (
      'Todos'
      'Ativos'
      'Inativos')
    TabOrder = 4
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42515.889744398100000000
    ReportOptions.LastChange = 42526.799595034700000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 185
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 563.149970000000000000
          Width = 192.756030000000000000
          Height = 90.708720000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape2: TfrxShapeView
          Left = -3.779530000000000000
          Width = 740.787880000000000000
          Height = 90.708720000000000000
        end
        object Memo8: TfrxMemoView
          Left = -3.779530000000000000
          Top = 60.472480000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lanchonete dos hue tudo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Av. da Saudade, 255')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574830000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Centro - Laranjal Paulista')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Nome: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
        end
        object frxDBDataset1ID: TfrxMemoView
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1Unidade: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'Unidade'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Unidade"]')
          ParentFont = False
        end
        object frxDBDataset1Pr_venda: TfrxMemoView
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Pr_venda"]')
          ParentFont = False
        end
        object frxDBDataset1Pr_custo: TfrxMemoView
          Left = 480.000310000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Pr_custo"]')
          ParentFont = False
        end
        object frxDBDataset1Qtde_real: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'Qtde_real'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Qtde_real"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 480.000310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Custo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 570.709030000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 657.638220000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Width = 725.669760000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from Estoque')
    Left = 128
    Top = 193
  end
  inherited frxDBDataset1: TfrxDBDataset
    Left = 16
    Top = 193
  end
end
