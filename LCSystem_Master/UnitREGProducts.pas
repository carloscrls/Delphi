unit UnitREGProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Mask, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Data.Win.ADODB;

type
  TFrmREGProducts = class(TForm)
    e: TImageList;
    PnlReg: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PnlTool: TPanel;
    ToolBar1: TToolBar;
    BTN_Save: TToolButton;
    BTN_Cancel: TToolButton;
    ToolButton3: TToolButton;
    BTN_Exit: TToolButton;
    PnlProducts: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DSCategories2: TDataSource;
    ADOQueryCat: TADOQuery;
    ADOQueryCatid_category: TAutoIncField;
    ADOQueryCatname: TStringField;
    Label5: TLabel;
    procedure BTN_SaveClick(Sender: TObject);
    procedure BTN_CancelClick(Sender: TObject);
    procedure BTN_ExitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmREGProducts: TFrmREGProducts;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmREGProducts.BTN_CancelClick(Sender: TObject);
begin
  DM.ADODSProducts.Cancel;
  application.MessageBox('A ação foi cancelada','Informação',MB_OK+MB_ICONINFORMATION);
  BTN_Save.Enabled   := False;
  BTN_Cancel.Enabled := False;
  BTN_Exit.Enabled     := True;
  PnlReg.Enabled     := False;
end;

procedure TFrmREGProducts.BTN_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmREGProducts.BTN_SaveClick(Sender: TObject);
begin
  if (DBlookupComboBox1.Text <> '') then
    begin
      if (DBEdit1.Text <> '') then
        begin
          if (DBEdit2.Text <> '') then
            begin
              if (DBEdit3.text <> '') then
                begin
                  DM.ADODSProducts.Post;
                  application.MessageBox('O Registro foi salvo com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
                  BTN_save.Enabled   := False;
                  BTN_cancel.Enabled := False;
                  BTN_Exit.Enabled     := True;
                  PnlReg.Enabled     := False;
                end
              else
                begin
                  application.MessageBox('O campo quantidade está vazio!','Atenção',MB_OK+MB_ICONINFORMATION);
                end;
            end
          else
            begin
               application.MessageBox('O campo valor está vazio!','Atenção',MB_OK+MB_ICONINFORMATION);
            end;
        end
      else
        begin
          application.MessageBox('O campo descrição está vazio!','Atenção',MB_OK+MB_ICONINFORMATION);
        end;
    end
  else
    begin
      application.MessageBox('O campo Categoria está vazio!','Atenção',MB_OK+MB_ICONINFORMATION);
    end;




end;

procedure TFrmREGProducts.FormActivate(Sender: TObject);
begin
    FrmREGProducts.ADOQueryCat.Close;
    FrmREGProducts.ADOQueryCat.SQL.Add('SELECT id_category,name FROM categories ORDER BY NAME');
    FrmRegProducts.ADOQueryCat.Open;
    FrmRegProducts.ADOQueryCat.ExecSQL;
end;

end.
