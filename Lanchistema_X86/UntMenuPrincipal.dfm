object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'LANCHISTEMA - MENU PRINCIPAL'
  ClientHeight = 446
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 729
    Height = 27
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 427
    Width = 729
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 220
      end
      item
        Width = 250
      end
      item
        Width = 440
      end
      item
        Width = 50
      end>
    ExplicitTop = 301
  end
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 729
    Height = 400
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 2
    ExplicitHeight = 274
    object BitBtn1: TBitBtn
      Left = 360
      Top = 168
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = ActCadFuncionario
                Caption = '&Funcion'#225'rios'
              end
              item
                Action = ActCadCategoria
                Caption = '&Categorias'
              end
              item
                Action = ActCadEstoque
                Caption = '&Estoque'
              end
              item
                Action = ActCadProduto
                Caption = '&Produtos'
              end>
            Caption = '&Cadastros'
          end
          item
            Items = <
              item
                Action = ActEntrada
                Caption = '&Entrada'
              end
              item
                Action = ActPedido
                Caption = '&Pedidos'
              end>
            Caption = '&Lan'#231'amentos'
          end
          item
            Items = <
              item
                Action = ActRelFuncionarios
                Caption = '&Lista de Funcion'#225'rios'
              end
              item
                Action = actRelCategorias
                Caption = 'L&ista de Categorias'
              end
              item
                Action = actRelEstoque
                Caption = 'Li&sta de Ingredientes'
              end
              item
                Action = actRelProdxCat
                Caption = 'Lis&ta Produtos/Categoria'
              end
              item
                Action = actRelProdutos
                Caption = 'List&a de Produtos'
              end
              item
                Action = actRelSugestao
                Caption = 'S&ugest'#227'o de Compras'
              end
              item
                Action = ActRelVenda
                Caption = '&Vendas por Data'
              end>
            Caption = '&Relat'#243'rios'
          end
          item
            Items = <
              item
                Action = ActCadUsuario
                Caption = '&Usu'#225'rios'
              end
              item
                Action = actCadPerfil
                Caption = '&Perfil'
              end
              item
                Action = ActSobre
                Caption = '&Sobre'
              end
              item
                Action = Action1
              end>
            Caption = '&Sistema'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 24
    Top = 48
    StyleName = 'Platform Default'
    object ActCadUsuario: TAction
      Category = 'Sistema'
      Caption = 'Usu'#225'rios'
      Hint = 'Cadastrar usuarios do sistema'
      OnExecute = ActCadUsuarioExecute
      OnUpdate = ActCadUsuarioUpdate
    end
    object ActCadFuncionario: TAction
      Category = 'Cadastros'
      Caption = 'Funcion'#225'rios'
      OnExecute = ActCadFuncionarioExecute
      OnUpdate = ActCadFuncionarioUpdate
    end
    object ActCadCategoria: TAction
      Category = 'Cadastros'
      Caption = 'Categorias'
      OnExecute = ActCadCategoriaExecute
      OnUpdate = ActCadCategoriaUpdate
    end
    object ActCadEstoque: TAction
      Category = 'Cadastros'
      Caption = 'Estoque'
      OnExecute = ActCadEstoqueExecute
      OnUpdate = ActCadEstoqueUpdate
    end
    object ActCadProduto: TAction
      Category = 'Cadastros'
      Caption = 'Produtos'
      OnExecute = ActCadProdutoExecute
      OnUpdate = ActCadProdutoUpdate
    end
    object ActEntrada: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Entrada'
      OnExecute = ActEntradaExecute
      OnUpdate = ActEntradaUpdate
    end
    object ActPedido: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Pedidos'
      OnExecute = ActPedidoExecute
      OnUpdate = ActPedidoUpdate
    end
    object ActSobre: TAction
      Category = 'Sistema'
      Caption = 'Sobre'
    end
    object ActRelVenda: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Vendas por Data'
      OnExecute = ActRelVendaExecute
    end
    object actCadPerfil: TAction
      Category = 'Sistema'
      Caption = 'Perfil'
      OnExecute = actCadPerfilExecute
      OnUpdate = actCadPerfilUpdate
    end
    object ActRelFuncionarios: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Lista de Funcion'#225'rios'
      OnExecute = ActRelFuncionariosExecute
    end
    object actRelCategorias: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Lista de Categorias'
      OnExecute = actRelCategoriasExecute
    end
    object actRelEstoque: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Lista de Ingredientes'
      OnExecute = actRelEstoqueExecute
    end
    object actRelProdxCat: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Lista Produtos/Categoria'
      OnExecute = actRelProdxCatExecute
    end
    object actRelSugestao: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Sugest'#227'o de Compras'
      OnExecute = actRelSugestaoExecute
    end
    object actRelProdutos: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Lista de Produtos'
      OnExecute = actRelProdutosExecute
    end
    object Action1: TAction
      Category = 'Sistema'
      Caption = 'Sair'
      OnExecute = Action1Execute
    end
  end
  object Timer1: TTimer
    Left = 88
    Top = 51
  end
  object QueryLogin: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select u.*, p.*'
      'from usuario u inner join perfil p'
      'on u.ID_perfil = p.id')
    Left = 32
    Top = 123
  end
  object FDQuery1: TFDQuery
    Left = 488
    Top = 291
  end
end
