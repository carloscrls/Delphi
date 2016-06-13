unit UnitSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    X: TButton;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure XClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses PRINCIPAL;

procedure TForm1.Button1Click(Sender: TObject);
begin
FRMPrincipal.ShowModal;
Form1.Destroy;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:= ProgressBar1.Position + 1 ;
if (ProgressBar1.Position=21) then
begin
  Timer1.Enabled:=false;
  //FRMPrincipal.ShowModal;

  FreeAndNil(Form1); //Libera o form de Login da memória
  Application.CreateForm(TFRMPrincipal, FRMPrincipal); //Cria a janela main
  Application.Run; //Roda a aplicação
end;

if (ProgressBar1.Position=1) then
begin
  Label1.Caption:=('Carregando Cadastros');
end;
if (ProgressBar1.Position=2) then
begin
  Label1.Caption:=('Carregando Cadastros.');
end;
if (ProgressBar1.Position=3) then
begin
  Label1.Caption:=('Carregando Cadastros..');
end;
if (ProgressBar1.Position=4) then
begin
  Label1.Caption:=('Carregando Cadastros...');
end;

if (ProgressBar1.Position=5) then
begin
  Label1.Caption:=('Carregando Formulários');
end;
if (ProgressBar1.Position=6) then
begin
  Label1.Caption:=('Carregando Formulários.');
end;
if (ProgressBar1.Position=7) then
begin
  Label1.Caption:=('Carregando Formulários..');
end;
if (ProgressBar1.Position=8) then
begin
  Label1.Caption:=('Carregando Formulários...');
end;

if (ProgressBar1.Position=9) then
begin
  Label1.Caption:=('Carregando Fluxos');
end;
if (ProgressBar1.Position=10) then
begin
  Label1.Caption:=('Carregando Fluxos.');
end;
if (ProgressBar1.Position=11) then
begin
  Label1.Caption:=('Carregando Fluxos..');
end;
if (ProgressBar1.Position=12) then
begin
  Label1.Caption:=('Carregando Fluxos...');
end;


if (ProgressBar1.Position=13) then
begin
  Label1.Caption:=('Carregando Cargas e Descargas');
end;
if (ProgressBar1.Position=14) then
begin
  Label1.Caption:=('Carregando Cargas e Descargas.');
end;
if (ProgressBar1.Position=15) then
begin
  Label1.Caption:=('Carregando Cargas e Descargas..');
end;
if (ProgressBar1.Position=16) then
begin
  Label1.Caption:=('Carregando Cargas e Descargas...');
end;


if (ProgressBar1.Position=17) then
begin
  Timer1.Interval:=450;
  Label1.Caption:=('Created by Carlos Magno Silva Tavares');
end;
if (ProgressBar1.Position=18) then
begin
  Timer1.Interval:=450;
  Label1.Caption:=('Created by Carlos Magno Silva Tavares.');
end;
if (ProgressBar1.Position=19) then
begin
  Timer1.Interval:=450;
  Label1.Caption:=('Created by Carlos Magno Silva Tavares..');
end;
if (ProgressBar1.Position=20) then
begin
  Timer1.Interval:=450;
  Label1.Caption:=('Created by Carlos Magno Silva Tavares...');
end;






end;

procedure TForm1.XClick(Sender: TObject);
begin
CLOSE;
end;

end.
