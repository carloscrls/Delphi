unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODSUsers: TADODataSet;
    DSUsers: TDataSource;
    ADODSUsersid: TStringField;
    ADODSUserspass: TStringField;
    ADOQueryUs: TADOQuery;
    ADODSProducts: TADODataSet;
    DSProducts: TDataSource;
    ADODSCategories: TADODataSet;
    DSCategories: TDataSource;
    ADODSProductsid_product: TIntegerField;
    ADODSProductsid_category: TIntegerField;
    ADODSProductsdescription_pr: TStringField;
    ADODSProductsproduct_value: TBCDField;
    ADODSProductsspecifications: TMemoField;
    ADODSProductsquantity: TIntegerField;
    ADODSCategoriesid_category: TAutoIncField;
    ADODSCategoriesname: TStringField;
    ADODSCategoriesdescription_ca: TMemoField;
    ADODSEmployees: TADODataSet;
    DSEmployees: TDataSource;
    ADODSEmployeesid_employee: TIntegerField;
    ADODSEmployeesid_department: TIntegerField;
    ADODSEmployeesCPF: TStringField;
    ADODSEmployeesname: TStringField;
    ADODSEmployeesaddress_em: TStringField;
    ADODSEmployeesCEP: TStringField;
    ADODSEmployeesstate_em: TStringField;
    ADODSEmployeesnumber: TStringField;
    ADODSEmployeesdistrict: TStringField;
    ADODSEmployeescomplement: TStringField;
    ADODSEmployeesemail: TStringField;
    ADODSEmployeessalary: TBCDField;
    ADODSEmployeesbranch_line: TStringField;
    ADODSEmployeesposition: TStringField;
    ADODSEmployeescommission: TIntegerField;
    ADODSEmployeesphone1: TStringField;
    ADODSEmployeesphone2: TStringField;
    ADODSEmployeescell1: TStringField;
    ADODSEmployeescell2: TStringField;
    ADODSCompany: TADODataSet;
    ADODSDepartments: TADODataSet;
    ADODSpurchases: TADODataSet;
    ADODSProvider: TADODataSet;
    ADODSContacts: TADODataSet;
    ADODSPurchase_item_product: TADODataSet;
    DSCompany: TDataSource;
    DSDepartments: TDataSource;
    DSPurchases: TDataSource;
    DSProvider: TDataSource;
    DSContacts: TDataSource;
    DSPurchases_item_product: TDataSource;
    ADODSCompanyid_company: TIntegerField;
    ADODSCompanyCNPJ: TStringField;
    ADODSCompanycompany_name: TStringField;
    ADODSCompanyfantasy_name: TStringField;
    ADODSCompanyaddress_co: TStringField;
    ADODSCompanyCEP: TStringField;
    ADODSCompanystate_co: TStringField;
    ADODSCompanycity: TStringField;
    ADODSCompanynumber: TStringField;
    ADODSCompanydistrict: TStringField;
    ADODSCompanyemail: TStringField;
    ADODSCompanyphone1: TStringField;
    ADODSCompanyphone2: TStringField;
    ADODSCompanycell1: TStringField;
    ADODSCompanycell2: TStringField;
    ADODSDepartmentsid_department: TIntegerField;
    ADODSDepartmentsid_company: TIntegerField;
    ADODSDepartmentsname: TStringField;
    ADODSDepartmentsemail: TStringField;
    ADODSpurchasesid_purchase: TIntegerField;
    ADODSpurchasesid_employee: TIntegerField;
    ADODSpurchasesid_provider: TIntegerField;
    ADODSpurchasestotal_value: TBCDField;
    ADODSpurchasesnf_key: TStringField;
    ADODSpurchasesdate_ins: TWideStringField;
    ADODSProviderid_provider: TIntegerField;
    ADODSProviderCPF_CNPJ: TStringField;
    ADODSProvidercompany_name: TStringField;
    ADODSProviderfantasy_name: TStringField;
    ADODSProvideraddress_pr: TStringField;
    ADODSProviderCEP: TStringField;
    ADODSProviderstate_pr: TStringField;
    ADODSProvidercity: TStringField;
    ADODSProvidernumber: TStringField;
    ADODSProviderdistrict: TStringField;
    ADODSProvideremail: TStringField;
    ADODSProviderphone1: TStringField;
    ADODSProviderphone2: TStringField;
    ADODSProvidercell1: TStringField;
    ADODSProvidercell2: TStringField;
    ADODSContactsid_contact: TIntegerField;
    ADODSContactsid_provider: TIntegerField;
    ADODSContactsname: TStringField;
    ADODSContactsemail: TStringField;
    ADODSContactsphone: TStringField;
    ADODSContactscell: TStringField;
    ADODSPurchase_item_productid_purchase_item_product: TIntegerField;
    ADODSPurchase_item_productid_product: TIntegerField;
    ADODSPurchase_item_productid_purchase: TIntegerField;
    ADODSPurchase_item_productquantity: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
