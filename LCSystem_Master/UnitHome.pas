unit UnitHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Menus;

type
  TFrmHome = class(TForm)
    PnlBTN: TPanel;
    PnlReport: TPanel;
    TlbrReg: TToolBar;
    ImageList1: TImageList;
    BTN_Purchases: TToolButton;
    BTN_Products: TToolButton;
    BTN_Categories: TToolButton;
    BTN_Contacts: TToolButton;
    BTN_Providers: TToolButton;
    BTN_Employees: TToolButton;
    BTN_Departments: TToolButton;
    TlbrReport: TToolBar;
    PnlHome: TPanel;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Categorias1: TMenuItem;
    Clientes1: TMenuItem;
    Contatos1: TMenuItem;
    Departamentos1: TMenuItem;
    Empresa1: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionrios1: TMenuItem;
    Compras1: TMenuItem;
    Produtos1: TMenuItem;
    Usurios1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    BTN_company: TToolButton;
    BTN_Users: TToolButton;
    FecharSair1: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure ProductsClick(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure UsersClick(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure BTN_UsersClick(Sender: TObject);
    procedure BTN_ProductsClick(Sender: TObject);
    procedure BTN_CategoriesClick(Sender: TObject);
    procedure BTN_EmployeesClick(Sender: TObject);
    procedure FecharSair1Click(Sender: TObject);
    procedure BTN_companyClick(Sender: TObject);
    procedure BTN_DepartmentsClick(Sender: TObject);
    procedure BTN_ProvidersClick(Sender: TObject);
    procedure BTN_ContactsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHome: TFrmHome;

implementation

{$R *.dfm}

uses UnitLogin, UnitUsers, UnitProducts, UnitCategories, UnitREGProducts,
   UnitEmployees, UnitCompany, UnitDepartments, UnitProvider, UnitContacts;

procedure TFrmHome.BTN_companyClick(Sender: TObject);
begin
  FrmCompany.ShowModal;
end;

procedure TFrmHome.BTN_ContactsClick(Sender: TObject);
begin
FrmContacts.ShowModal;
end;

procedure TFrmHome.BTN_DepartmentsClick(Sender: TObject);
begin
FRMDepartments.ShowModal;
end;

procedure TFrmHome.BTN_EmployeesClick(Sender: TObject);
begin
FrmEmployees.ShowModal;
end;

procedure TFrmHome.BTN_ProductsClick(Sender: TObject);
begin
    FrmProducts.ShowModal;
    FrmRegProducts.ADOQueryCat.Open;
    FrmRegProducts.ADOQueryCat.ExecSQL;
end;

procedure TFrmHome.BTN_ProvidersClick(Sender: TObject);
begin
FrmProvider.ShowModal;
end;

procedure TFrmHome.BTN_UsersClick(Sender: TObject);
begin
    FrmUsers.ShowModal;
end;

procedure TFrmHome.BTN_CategoriesClick(Sender: TObject);
begin
  FrmCategories.ShowModal;
end;

procedure TFrmHome.Categorias1Click(Sender: TObject);
begin
  FrmCategories.ShowModal;
end;

procedure TFrmHome.FecharSair1Click(Sender: TObject);
begin
Showmessage('Obrigado pela preferencia LCSystem');
Close;
end;

procedure TFrmHome.FormResize(Sender: TObject);
begin
 if (FrmHome.width < 858) Or (FrmHome.Height <589) then
    begin
      FrmHome.Width := 858;
      FrmHome.Height := 589;
    end;
end;

procedure TFrmHome.Login1Click(Sender: TObject);
begin
  FreeAndNil(FrmHome);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end;

procedure TFrmHome.Usurios1Click(Sender: TObject);
begin
   FrmUsers.ShowModal;
end;



procedure TFrmHome.ProductsClick(Sender: TObject);
begin
  FrmProducts.Showmodal;
end;

procedure TFrmHome.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmHome.UsersClick(Sender: TObject);
begin
  FrmUsers.Showmodal;
end;

end.
