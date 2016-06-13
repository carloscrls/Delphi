unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, db;

type
  TFrmLogin = class(TForm)
    PnlLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BTN_Enter: TButton;
    edt_id: TEdit;
    edt_pass: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure BTN_EnterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;


implementation

{$R *.dfm}

uses UnitHome, UnitDM;



procedure TFrmLogin.BTN_EnterClick(Sender: TObject);

var verif: boolean;

begin
  //DM � o nome do form e ADOQueryUs � o nome da query(busca) respons�vel pela tabela users
  DM.ADOQueryUs.close;
  DM.ADOQueryUs.SQL.Clear;
  // os comandos a cima fecham e limpam a query
  DM.ADOQueryUs.SQL.add('Select * from "users" where "id" = :id');
  DM.ADOQueryUs.Parameters.ParamByName('id').Value := edt_id.Text;
  {Um comando SQL � atribuido a query, selecionando a tebela usuario onde o campo ID seja
    igual ao texto que o usuario ira inserir no edt_id}
  DM.ADOQueryUs.Open;
  try
    if (Not DM.ADOQueryUs.isEmpty) and (edt_pass.Text = DM.ADOQueryUs.FieldByName('pass').AsString) then
    {Se o resultado retornado pela query nao for vazio (Ou seja, aquele usuario existe)
    e o valor do campo edit senha for igual a busca da cary no campo senha do mesmo registro}
      begin
        Modalresult := mrok;
        verif := true;
      end
    else
      begin
         application.MessageBox('Senha ou usu�rio incorretos!','Aten��o',MB_OK+MB_ICONINFORMATION);
         edt_pass.Clear;
         edt_pass.SetFocus;
         verif := false;
      end;
  finally
    DM.ADOQueryUs.Close;
  end;


  if (verif = true) then
  begin
      FreeAndNil(FrmLogin); //Libera o form de Login da mem�ria
      Application.CreateForm(TFrmHome, FrmHome); //Cria a janela main
      Application.Run; //Roda a aplica��o
  end;
end;





procedure TFrmLogin.FormActivate(Sender: TObject);
begin
  edt_id.SetFocus;
end;

procedure TFrmLogin.Label4Click(Sender: TObject);
begin
  close;
end;

end.
