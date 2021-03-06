﻿unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,StrUtils ;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Button2: TButton;
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
    Button3: TButton;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ip:string;
  var  arq: TextFile;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
Var NomeHD,NomeRam,NomeTAG,NomeProcessador,NomeOsName,NomeHost:PAnsiChar;
begin
Button2.Enabled:=false;
Button1.Enabled:=false;
Button3.Enabled:=true;
//CarregaInfoDoBat↓
memo1.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\nslookup.TXT' ) ;
//Joga Na Label A Info Do Bat Hostname  ↓
Label1.Caption:=Memo1.Lines[3];
label1.Caption:=RightStr(label1.Caption,22);
if Label1.Caption<>'' then
BEGIN
//Cria Diretorio ↓
ForceDirectories('\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption);
  //executar os comandos na pasta

  //GeraBATTAG ↓
  AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\TAG.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  bios get serialnumber '+  ' > \\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\TAG.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraOSNAME ↓
  AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\OSName.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  os get name '+  ' > \\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\OsName.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraProcessador ↓
  AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\Processador.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  cpu get name '+  ' > \\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\Processador.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraRAM ↓
  AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\RAM.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+'  memorychip get capacity '+  ' > \\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\RAM.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraHD ↓
  AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\HD.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'wmic /node:'+IP+' diskdrive get size '+  ' > \\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\HD.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

  //GeraHOSTNAME↓
  AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\HOSTNAME.bat');//associa um caminho
  Rewrite(arq); //Gera arquivo
  Writeln(arq,'nslookup '+IP+' > \\rioclaro\public\it\INFO_MAQUINAS\'+label1.Caption+'\HOSTNAME.txt' );  //Grava linha
  CloseFile(arq);   //fecha arquivo e salva

   //ExecBatS↓
    NomeTAG:=PAnsiChar (AnsiString('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\TAG.bat'));
    WinExec(NomeTAG,SW_hide);

    NomeOSName:=PAnsiChar (AnsiString('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\OSName.bat'));
    WinExec(NomeOSName,SW_hide);

    NomeProcessador:=PAnsiChar (AnsiString('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\Processador.bat'));
    WinExec(NomeProcessador,SW_hide);

    NomeRam:=PAnsiChar (AnsiString('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\RAM.bat'));
    WinExec(NomeRam,SW_hide);

    NomeHost:=PAnsiChar (AnsiString('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\HOSTNAME.bat'));
    WinExec(NomeHost,SW_hide);

    NomeHD:=PAnsiChar (AnsiString('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\HD.bat'));
    WinExec(NomeHD,SW_hide);



   //Mostra os diretorios em uma mensagem para teste ↓
    ShowMessage( NomeTAG+#13+
                 NomeOSName+#13+
                 NomeProcessador+#13+
                 NomeRam+#13+
                 NomeHost+#13+
                 NomeHD+#13);
   //carrega os MEMOS com infos da maquina Auditada
     MemoTAG.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\TAG.TXT' ) ;
     MemoHD.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\HD.TXT' ) ;
     MemoProcessador.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\PROCESSADOR.TXT' ) ;
     MemoHost.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\hostname.TXT' ) ;
     memoOsname.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\OsName.TXT' ) ;
     Memo_Ram.Lines.LoadFromFile('\\rioclaro\public\it\INFO_MAQUINAS\'+Label1.Caption+'\RAM.TXT' ) ;

     end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Button2.Enabled:=false;
Button1.Enabled:=true;
Button3.Enabled:=false;
ip:=Edit1.Text;
//GeraBAT HOSTNAME ↓
AssignFile(arq,'\\rioclaro\public\it\INFO_MAQUINAS\NAME.bat');//associa um caminho
Rewrite(arq); //Gera arquivo
Writeln(arq,'nslookup '+IP+' > \\rioclaro\public\it\INFO_MAQUINAS\nslookup.TXT' );  //Grava linha
CloseFile(arq);   //fecha arquivo e salva
showmessage('Gerando arquivos para ip '+ip);
//ExecBat↓
WinExec('\\rioclaro\public\it\INFO_MAQUINAS\NAME.bat',SW_hide);
end;

procedure TForm2.Button3Click(Sender: TObject);
VAR PENT1,PENT2,PENT3,PENT4,TOTAL,HD:REAL;
begin
Button2.Enabled:=true;
Button1.Enabled:=false;
Button3.Enabled:=false;
if LABEL1.Caption<>'' then
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
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
Button1.Enabled:=false;
Button2.Enabled:=true;
Button3.Enabled:=false;

end;

end.
