unit UnitCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdComponent,
  IdBaseComponent, IdIPWatch;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ShowAll: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ShowAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
WinExec('C:\CLIENTINFO\INFO.bat',SW_HIDE);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
memo1.Lines.LoadFromFile('C:\CLIENTINFO\CLientINFO.txt' ) ;
Label1.Caption:=Memo1.Lines[1];
Label2.Caption:=Memo1.Lines[2];
Label3.Caption:=Memo1.Lines[12];
Label4.Caption:=Memo1.Lines[13];
Label5.Caption:=Memo1.Lines[14];
Label6.Caption:=Memo1.Lines[24];
Label7.Caption:=Memo1.Lines[31];


end;


procedure TForm2.ShowAllClick(Sender: TObject);
begin
if memo1.Align=AlClient then
begin
Memo1.Align:=AlNone;
Memo1.Height:=33 ;
Memo1.Width:= 345;
ShowAll.Caption:='ShowAll';

end
else
begin
Memo1.Align:=AlClient;
ShowAll.Caption:='ShowNone';
end;
end;

end.
