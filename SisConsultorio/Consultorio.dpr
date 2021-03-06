program Consultorio;

uses
  Vcl.Forms,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {FrmMenuPrincipal},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntPadrao1 in 'UntPadrao1.pas' {FrmPadrao1},
  UntCadUsuario in 'UntCadUsuario.pas' {FrmCadUsuario},
  UntCadPerfil in 'UntCadPerfil.pas' {FrmCadPerfil},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  UntAtendimento in 'UntAtendimento.pas' {FrmAtendimento},
  UntPesqData in 'UntPesqData.pas' {pesqData},
  UntPesqString in 'UntPesqString.pas' {pesqString},
  UntPadraoRel in 'UntPadraoRel.pas' {FrmPadraoRel},
  UntRelAtendimento in 'UntRelAtendimento.pas' {FrmRelAtendimento},
  UntRelmedxPac in 'UntRelmedxPac.pas' {FrmRelMedxPac};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPadrao1, FrmPadrao1);
  Application.CreateForm(TFrmCadUsuario, FrmCadUsuario);
  Application.CreateForm(TFrmCadPerfil, FrmCadPerfil);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmAtendimento, FrmAtendimento);
  Application.CreateForm(TpesqData, pesqData);
  Application.CreateForm(TpesqString, pesqString);
  Application.CreateForm(TFrmPadraoRel, FrmPadraoRel);
  Application.CreateForm(TFrmRelAtendimento, FrmRelAtendimento);
  Application.CreateForm(TFrmRelMedxPac, FrmRelMedxPac);
  Application.Run;
end.
