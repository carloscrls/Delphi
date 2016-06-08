inherited FrmRelMedxPac: TFrmRelMedxPac
  Caption = 'FrmRelMedxPac'
  ClientHeight = 448
  ClientWidth = 586
  ExplicitWidth = 592
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited SpeedButton1: TSpeedButton
    Left = 401
    Top = 376
    ExplicitLeft = 401
    ExplicitTop = 376
  end
  inherited SpeedButton2: TSpeedButton
    Left = 493
    Top = 376
    ExplicitLeft = 493
    ExplicitTop = 376
  end
  inherited Panel1: TPanel
    Width = 586
    ExplicitLeft = 16
    ExplicitWidth = 586
  end
  inherited StatusBar1: TStatusBar
    Top = 429
    Width = 586
    ExplicitLeft = 0
    ExplicitTop = 233
    ExplicitWidth = 349
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      ''
      
        'SELECT      Funcionario.FUN_NOME, Paciente.PAC_NOME, SUM (Atendi' +
        'mento.AT_VALOR_MEDICO) as total ,count(atendimento.ID) as Qtdeco' +
        'nsulta'
      'FROM         Atendimento INNER JOIN'
      
        '                      Funcionario ON Atendimento.AT_ID_MEDICO = ' +
        'Funcionario.ID INNER JOIN'
      
        '                      Paciente ON Atendimento.AT_ID_PACIENTE = P' +
        'aciente.ID'
      '                      '
      
        '                      group by paciente.pac_nome , funcionario.F' +
        'un_nome'
      'order by funcionario.fun_nome')
    Left = 136
    Top = 0
  end
  inherited frxDBDataset1: TfrxDBDataset
    FieldAliases.Strings = (
      'FUN_NOME=FUN_NOME'
      'PAC_NOME=PAC_NOME'
      'total=total'
      'Qtdeconsulta=Qtdeconsulta')
    Left = 312
    Top = 0
  end
  inherited frxReport1: TfrxReport
    ReportOptions.CreateDate = 42508.858936226900000000
    ReportOptions.LastChange = 42508.906069629630000000
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 440
    Top = 0
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
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 279.685220000000000000
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."FUN_NOME"'
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
        end
        object frxDBDataset1FUN_NOME1: TfrxMemoView
          Left = 128.504020000000000000
          Top = 3.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'FUN_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."FUN_NOME"]')
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do medico ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.708720000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Paciente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 408.189240000000000000
          Top = 30.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#176' Consultas')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 495.118430000000000000
          Top = 30.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PAC_NOME: TfrxMemoView
          Left = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'PAC_NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PAC_NOME"]')
        end
        object frxDBDataset1Qtdeconsulta: TfrxMemoView
          Left = 408.189240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Qtdeconsulta'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Qtdeconsulta"]')
        end
        object frxDBDataset1total: TfrxMemoView
          Left = 495.118430000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'total'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."total"]')
          ParentFont = False
        end
      end
    end
  end
  inherited frxPDFExport1: TfrxPDFExport
    Left = 520
    Top = 0
  end
end
