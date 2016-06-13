program RetailSystem;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {FrmLogin},
  UnitHome in 'UnitHome.pas' {FrmHome},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitUsers in 'UnitUsers.pas' {FrmUsers},
  UnitREGUsers in 'UnitREGUsers.pas' {FrmRegUsers},
  UnitProducts in 'UnitProducts.pas' {FrmProducts},
  UnitREGProducts in 'UnitREGProducts.pas' {FrmREGProducts},
  UnitCategories in 'UnitCategories.pas' {FrmCategories},
  UnitREGCategories in 'UnitREGCategories.pas' {FrmREGCategories},
  UnitEmployees in 'UnitEmployees.pas' {FrmEmployees},
  UnitCompany in 'UnitCompany.pas' {FrmCompany},
  UnitREGCompany in 'UnitREGCompany.pas' {FrmREGCompany},
  UnitREGDepartaments in 'UnitREGDepartaments.pas' {FrmRegDepartaments},
  UnitDepartments in 'UnitDepartments.pas' {FRMDepartments},
  UnitREGEmployees in 'UnitREGEmployees.pas' {FrmREGEmployees},
  UnitProvider in 'UnitProvider.pas' {FrmProvider},
  UnitRegProvider in 'UnitRegProvider.pas' {FrmRegProvider},
  UnitRegContacts in 'UnitRegContacts.pas' {FrmREGContacts},
  UnitContacts in 'UnitContacts.pas' {FrmContacts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmHome, FrmHome);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmUsers, FrmUsers);
  Application.CreateForm(TFrmRegUsers, FrmRegUsers);
  Application.CreateForm(TFrmProducts, FrmProducts);
  Application.CreateForm(TFrmREGProducts, FrmREGProducts);
  Application.CreateForm(TFrmProducts, FrmProducts);
  Application.CreateForm(TFrmREGProducts, FrmREGProducts);
  Application.CreateForm(TFrmCategories, FrmCategories);
  Application.CreateForm(TFrmREGCategories, FrmREGCategories);
  Application.CreateForm(TFrmEmployees, FrmEmployees);
  Application.CreateForm(TFrmCompany, FrmCompany);
  Application.CreateForm(TFrmREGCompany, FrmREGCompany);
  Application.CreateForm(TFrmRegDepartaments, FrmRegDepartaments);
  Application.CreateForm(TFRMDepartments, FRMDepartments);
  Application.CreateForm(TFrmREGEmployees, FrmREGEmployees);
  Application.CreateForm(TFrmProvider, FrmProvider);
  Application.CreateForm(TFrmRegProvider, FrmRegProvider);
  Application.CreateForm(TFrmREGContacts, FrmREGContacts);
  Application.CreateForm(TFrmContacts, FrmContacts);
  Application.Run;
end.
