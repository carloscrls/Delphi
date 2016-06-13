unit UnitMiniCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,StrUtils, Vcl.WinXCtrls,
  Vcl.ExtCtrls, IdBaseComponent, IdComponent, IdIPWatch ;

type
  TForm2 = class(TForm)
    ButtonEXECINVENT: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    ButtonLEIP: TButton;
    MemoHD: TMemo;
    Memo_Ram: TMemo;
    MemoTAG: TMemo;
    MemoProcessador: TMemo;
    MemoOsName: TMemo;
    MemoHost: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ButtonCARRLABEL: TButton;
    Label8: TLabel;
    ButtonCarrMEMO: TButton;
    TimerLOCAL: TTimer;
    IdIPWatch1: TIdIPWatch;
    procedure ButtonEXECINVENTClick(Sender: TObject);
    procedure ButtonLEIPClick(Sender: TObject);
    procedure ButtonCARRLABELClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure ButtonCarrMEMOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TimerLOCALTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ip:string;
  arq: TextFile;
  x,y:integer;
implementation

{$R *.dfm}

procedure TForm2.ButtonEXECINVENTClick(Sender: TObject);
Var NomeHD,NomeRam,NomeTAG,NomeProcessador,NomeOsName,NomeHost:PAnsiChar;
linhas:integer;
begin
ButtonLEIP.Enabled:=false;
ButtonEXECINVENT.Enabled:=false;
ButtonCarrMEMO.Enabled:=true;
ButtonCARRLABEL.Enabled:=false;
//CarregaInfoDoBat↓
memo1.Lines.LoadFromFile('Y:\nslookup.TXT' ) ;
//Joga Na Label A Info Do Bat Hostname  ↓
Label1.Caption:=(Memo1.Lines[3]);

Linhas:=((Memo1.Lines[3].Length)-9);

label1.Caption:=RightStr(label1.Caption,linhas);

//label1.Caption:=RightStr(label1.Caption,22);
if Label1.Caption<>'' then
BEGIN
//Cria Diretorio ↓
ForceDirectories('Y:\'+label1.Caption);
  //executar os comandos na pasta

  //GeraBATTAG ↓
  AssignFile(arq,'Y:\'+label1.Caption+'\TAG.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  bios get serialnumber '+  ' > Y:\'+label1.Caption+'\TAG.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraOSNAME ↓
  AssignFile(arq,'Y:\'+label1.Caption+'\OSName.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  os get name '+  ' > Y:\'+label1.Caption+'\OsName.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraProcessador ↓
  AssignFile(arq,'Y:\'+label1.Caption+'\Processador.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  cpu get name '+  ' > Y:\'+label1.Caption+'\Processador.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraRAM ↓
  AssignFile(arq,'Y:\'+label1.Caption+'\RAM.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  memorychip get capacity '+  ' > Y:\'+label1.Caption+'\RAM.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraHD ↓
  AssignFile(arq,'Y:\'+label1.Caption+'\HD.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+' diskdrive get size '+  ' > Y:\'+label1.Caption+'\HD.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraHOSTNAME↓
  AssignFile(arq,'Y:\'+label1.Caption+'\HOSTNAME.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'nslookup '+IP+' > Y:\'+label1.Caption+'\HOSTNAME.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

   //ExecBatS↓
    NomeTAG:=PAnsiChar (AnsiString('Y:\'+Label1.Caption+'\TAG.bat'));
    WinExec(NomeTAG,SW_hide);

    NomeOSName:=PAnsiChar (AnsiString('Y:\'+Label1.Caption+'\OSName.bat'));
    WinExec(NomeOSName,SW_hide);

    NomeProcessador:=PAnsiChar (AnsiString('Y:\'+Label1.Caption+'\Processador.bat'));
    WinExec(NomeProcessador,SW_hide);

    NomeRam:=PAnsiChar (AnsiString('Y:\'+Label1.Caption+'\RAM.bat'));
    WinExec(NomeRam,SW_hide);

    NomeHost:=PAnsiChar (AnsiString('Y:\'+Label1.Caption+'\HOSTNAME.bat'));
    WinExec(NomeHost,SW_hide);

    NomeHD:=PAnsiChar (AnsiString('Y:\'+Label1.Caption+'\HD.bat'));
    WinExec(NomeHD,SW_hide);



   //Mostra os diretorios em uma mensagem para teste ↓
    //ShowMessage( NomeTAG+#13+
    //             NomeOSName+#13+
    //             NomeProcessador+#13+
    //             NomeRam+#13+
    //             NomeHost+#13+
    //             NomeHD+#13);
   //carrega os MEMOS com infos da maquina Auditada

 //carregar do memo para label

//fim do carregar da memo para label


     end;
end;

procedure TForm2.ButtonLEIPClick(Sender: TObject);
begin
Label1.Caption:='';
Label2.Caption:='';
Label3.Caption:='';
Label4.Caption:='';
Label5.Caption:='';
Label6.Caption:='';
Label7.Caption:='';
Label8.Caption:='';
MEMO1.Clear;
MemoHD.Clear;
Memo_Ram.Clear;
MemoTAG.Clear;
MemoProcessador.Clear;
MemoOsName.Clear;
MemoHost.Clear;

ButtonLEIP.Enabled:=false;
ButtonEXECINVENT.Enabled:=true;
ButtonCarrMEMO.Enabled:=false;
ButtonCARRLABEL.Enabled:=false;
ip:=Edit1.Text;
//GeraBAT HOSTNAME ↓
AssignFile(arq,'Y:\NAME.bat');//associa um caminho
Rewrite(arq); //Gera arquivo
Writeln(arq,'nslookup '+IP+' > Y:\nslookup.TXT' );  //Grava linha
CloseFile(arq);   //fecha arquivo e salva
//showmessage('Gerando arquivos para ip '+ip);
//ExecBat↓
WinExec('Y:\NAME.bat',SW_hide);
end;

procedure TForm2.ButtonCarrMEMOClick(Sender: TObject);
begin
ButtonLEIP.Enabled:=false;
ButtonEXECINVENT.Enabled:=false;
ButtonCarrMEMO.Enabled:=false;
ButtonCARRLABEL.Enabled:=true;

 if fileexists('Y:\'+Label1.Caption+'\TAG.TXT' ) and
 fileexists('Y:\'+Label1.Caption+'\HD.TXT' ) and
 fileexists('Y:\'+Label1.Caption+'\PROCESSADOR.TXT' ) and
 fileexists('Y:\'+Label1.Caption+'\hostname.TXT' ) and
 fileexists('Y:\'+Label1.Caption+'\OsName.TXT' ) and
 fileexists('Y:\'+Label1.Caption+'\RAM.TXT' ) then
 begin

     MemoHD.Lines.LoadFromFile('Y:\'+Label1.Caption+'\HD.TXT' ) ;
     MemoProcessador.Lines.LoadFromFile('Y:\'+Label1.Caption+'\PROCESSADOR.TXT' ) ;
     MemoHost.Lines.LoadFromFile('Y:\'+Label1.Caption+'\hostname.TXT' ) ;
     memoOsname.Lines.LoadFromFile('Y:\'+Label1.Caption+'\OsName.TXT' ) ;
     Memo_Ram.Lines.LoadFromFile('Y:\'+Label1.Caption+'\RAM.TXT' ) ;
     MemoTAG.Lines.LoadFromFile('Y:\'+Label1.Caption+'\TAG.TXT' ) ;
 end;
end;

procedure TForm2.ButtonCARRLABELClick(Sender: TObject);
VAR PENT1,PENT2,PENT3,PENT4,TOTAL,HD:REAL;
begin
ButtonLEIP.Enabled:=true;
ButtonEXECINVENT.Enabled:=false;
ButtonCarrMEMO.Enabled:=false;
ButtonCARRLABEL.Enabled:=false;
if
(MemoHD.Lines[1]<>'')and
(MemoHD.Text<>'')and
(Memo_Ram.Text<>'')and
(MemoTAG.Text<>'')and
(MemoProcessador.Text<>'')and
(MemoOsName.Text<>'')and
(MemoHost.Text<>'')and
(LABEL1.Caption<>'') then
BEGIN
HD:= STRTOFLOAT (MemoHD.Lines[1]);
HD:=HD/1092390172;
Label2.Caption:=(FLOATTOSTR(HD))+' GB';

//label2.Caption:=RightStr(label1.Caption,22);[

  if Memo_Ram.Lines[1]<>'' then
  BEGIN
  PENT1:=STRTOFLOAT (Memo_Ram.Lines[1]);
  PENT1:= (PENT1/1073741824);
  TOTAL:=PENT1;
  END;
    if Memo_Ram.Lines[2]<>'' then
    BEGIN
    PENT2:=STRTOFLOAT (Memo_Ram.Lines[2]);
    PENT2:= (PENT2/1073741824);
    TOTAL:= PENT1+PENT2;
    END;
      if Memo_Ram.Lines[3]<>'' then
      BEGIN
      PENT3:=STRTOFLOAT (Memo_Ram.Lines[3]);
      PENT3:= (PENT3/1073741824);
      TOTAL:= PENT1+PENT2+PENT3;
      END;
        if Memo_Ram.Lines[4]<>'' then
        BEGIN
        PENT4:=STRTOFLOAT (Memo_Ram.Lines[4]);
        PENT4:= (PENT4/1073741824);
        TOTAL:= PENT1+PENT2+PENT3+PENT4;
        END;
Label3.Caption:=FLOATTOSTR(TOTAL)+' GB';
//label3.Caption:=RightStr(label1.Caption,22);

Label4.Caption:=MemoTAG.Lines[1];
//label4.Caption:=RightStr(label1.Caption,22);

Label5.Caption:=MemoProcessador.Lines[1]+MemoProcessador.Lines[2];
//label5.Caption:=RightStr(label1.Caption,22);

Label6.Caption:=MemoOsName.Lines[2];
//label6.Caption:=RightStr(label1.Caption,22);

Label7.Caption:=MemoHost.Lines[3];
//label7.Caption:=RightStr(label1.Caption,22);

Label8.Caption:=MemoHost.Lines[0];
label8.Caption:=RightStr(label8.Caption,21);

end;
close;
end;

procedure TForm2.Edit1Click(Sender: TObject);
begin
  if Edit1.Text='digite o ip do desktop p/ consultada' then
  begin
  edit1.clear;
  end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin

ButtonLEIP.Enabled:=true;
ButtonEXECINVENT.Enabled:=false;
ButtonCarrMEMO.Enabled:=false;
ButtonCARRLABEL.Enabled:=false;
MEMO1.Clear;
MemoHD.Clear;
Memo_Ram.Clear;
MemoTAG.Clear;
MemoProcessador.Clear;
MemoOsName.Clear;
MemoHost.Clear;
TimerLOCAL.Enabled:=true;
Edit1.Text:=IdIPWatch1.LocalIP;
X:=0;
Y:=0;


end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
WinExec('net use y: /DELETE ',SW_hide);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
WinExec('net use y: \\rioclaro\public\it\INFO_MAQUINAS',SW_HIDE);
end;

procedure TForm2.TimerLOCALTimer(Sender: TObject);
var faixa:string;
begin
  x:=x+1;

  if x=1 then
    begin
    Edit1.Clear;
    Edit1.Text:=IdIPWatch1.LocalIP;
    ButtonLEIP.Click;
    end;

   if x=2 then
    begin
    ButtonEXECINVENT.Click;
    end;

   if x=3 then
    begin
     ButtonCarrMEMO.Click;
    end;

   if x=4 then
    begin
     ButtonCARRLABEL.Click;
     x:=0;
     TimerLOCAL.Enabled:=false;
    end;
end;

end.
