object DM: TDM
  OldCreateOrder = False
  Height = 647
  Width = 489
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=data;Data Source=b490;Use Procedure for' +
      ' Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=B' +
      '490;Use Encryption for Data=False;Tag with column collation when' +
      ' possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 8
  end
  object ADODSUsers: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from users'
    Parameters = <>
    Left = 32
    Top = 168
    object ADODSUsersid: TStringField
      FieldName = 'id'
    end
    object ADODSUserspass: TStringField
      FieldName = 'pass'
    end
  end
  object DSUsers: TDataSource
    DataSet = ADODSUsers
    Left = 128
    Top = 168
  end
  object ADOQueryUs: TADOQuery
    Connection = ADOConnection1
    DataSource = DSUsers
    Parameters = <>
    Left = 216
    Top = 160
  end
  object ADODSProducts: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from products'
    Parameters = <>
    Left = 32
    Top = 112
    object ADODSProductsid_product: TIntegerField
      FieldName = 'id_product'
    end
    object ADODSProductsid_category: TIntegerField
      FieldName = 'id_category'
    end
    object ADODSProductsdescription_pr: TStringField
      FieldName = 'description_pr'
      Size = 40
    end
    object ADODSProductsproduct_value: TBCDField
      FieldName = 'product_value'
      Precision = 10
      Size = 2
    end
    object ADODSProductsspecifications: TMemoField
      FieldName = 'specifications'
      BlobType = ftMemo
    end
    object ADODSProductsquantity: TIntegerField
      FieldName = 'quantity'
    end
  end
  object DSProducts: TDataSource
    DataSet = ADODSProducts
    Left = 128
    Top = 112
  end
  object ADODSCategories: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Categories'#13#10
    Parameters = <>
    Left = 32
    Top = 56
    object ADODSCategoriesid_category: TAutoIncField
      FieldName = 'id_category'
      ReadOnly = True
    end
    object ADODSCategoriesname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADODSCategoriesdescription_ca: TMemoField
      FieldName = 'description_ca'
      BlobType = ftMemo
    end
  end
  object DSCategories: TDataSource
    DataSet = ADODSCategories
    Left = 128
    Top = 56
  end
  object ADODSEmployees: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from employees'
    Parameters = <>
    Left = 32
    Top = 336
    object ADODSEmployeesid_employee: TIntegerField
      FieldName = 'id_employee'
    end
    object ADODSEmployeesid_department: TIntegerField
      FieldName = 'id_department'
    end
    object ADODSEmployeesCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 11
    end
    object ADODSEmployeesname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADODSEmployeesaddress_em: TStringField
      FieldName = 'address_em'
      Size = 40
    end
    object ADODSEmployeesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object ADODSEmployeesstate_em: TStringField
      FieldName = 'state_em'
      FixedChar = True
      Size = 2
    end
    object ADODSEmployeesnumber: TStringField
      FieldName = 'number'
      Size = 8
    end
    object ADODSEmployeesdistrict: TStringField
      FieldName = 'district'
      Size = 40
    end
    object ADODSEmployeescomplement: TStringField
      FieldName = 'complement'
      Size = 40
    end
    object ADODSEmployeesemail: TStringField
      FieldName = 'email'
      Size = 35
    end
    object ADODSEmployeessalary: TBCDField
      FieldName = 'salary'
      Precision = 10
      Size = 2
    end
    object ADODSEmployeesbranch_line: TStringField
      FieldName = 'branch_line'
      Size = 5
    end
    object ADODSEmployeesposition: TStringField
      FieldName = 'position'
      Size = 35
    end
    object ADODSEmployeescommission: TIntegerField
      FieldName = 'commission'
    end
    object ADODSEmployeesphone1: TStringField
      FieldName = 'phone1'
      FixedChar = True
      Size = 11
    end
    object ADODSEmployeesphone2: TStringField
      FieldName = 'phone2'
      FixedChar = True
      Size = 11
    end
    object ADODSEmployeescell1: TStringField
      FieldName = 'cell1'
      FixedChar = True
      Size = 12
    end
    object ADODSEmployeescell2: TStringField
      FieldName = 'cell2'
      FixedChar = True
      Size = 12
    end
  end
  object DSEmployees: TDataSource
    DataSet = ADODSEmployees
    Left = 128
    Top = 344
  end
  object ADODSCompany: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from company'
    Parameters = <>
    Left = 32
    Top = 224
    object ADODSCompanyid_company: TIntegerField
      FieldName = 'id_company'
    end
    object ADODSCompanyCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object ADODSCompanycompany_name: TStringField
      FieldName = 'company_name'
      Size = 50
    end
    object ADODSCompanyfantasy_name: TStringField
      FieldName = 'fantasy_name'
      Size = 35
    end
    object ADODSCompanyaddress_co: TStringField
      FieldName = 'address_co'
      Size = 50
    end
    object ADODSCompanyCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object ADODSCompanystate_co: TStringField
      FieldName = 'state_co'
      FixedChar = True
      Size = 2
    end
    object ADODSCompanycity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object ADODSCompanynumber: TStringField
      FieldName = 'number'
      Size = 8
    end
    object ADODSCompanydistrict: TStringField
      FieldName = 'district'
      Size = 40
    end
    object ADODSCompanyemail: TStringField
      FieldName = 'email'
      Size = 35
    end
    object ADODSCompanyphone1: TStringField
      FieldName = 'phone1'
      FixedChar = True
      Size = 11
    end
    object ADODSCompanyphone2: TStringField
      FieldName = 'phone2'
      FixedChar = True
      Size = 11
    end
    object ADODSCompanycell1: TStringField
      FieldName = 'cell1'
      FixedChar = True
      Size = 12
    end
    object ADODSCompanycell2: TStringField
      FieldName = 'cell2'
      FixedChar = True
      Size = 12
    end
  end
  object ADODSDepartments: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from departments'
    Parameters = <>
    Left = 32
    Top = 280
    object ADODSDepartmentsid_department: TIntegerField
      FieldName = 'id_department'
    end
    object ADODSDepartmentsid_company: TIntegerField
      FieldName = 'id_company'
    end
    object ADODSDepartmentsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADODSDepartmentsemail: TStringField
      FieldName = 'email'
      Size = 35
    end
  end
  object ADODSpurchases: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from purchases'
    Parameters = <>
    Left = 32
    Top = 392
    object ADODSpurchasesid_purchase: TIntegerField
      FieldName = 'id_purchase'
    end
    object ADODSpurchasesid_employee: TIntegerField
      FieldName = 'id_employee'
    end
    object ADODSpurchasesid_provider: TIntegerField
      FieldName = 'id_provider'
    end
    object ADODSpurchasestotal_value: TBCDField
      FieldName = 'total_value'
      Precision = 10
      Size = 2
    end
    object ADODSpurchasesnf_key: TStringField
      FieldName = 'nf_key'
      FixedChar = True
      Size = 44
    end
    object ADODSpurchasesdate_ins: TWideStringField
      FieldName = 'date_ins'
      Size = 10
    end
  end
  object ADODSProvider: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from providers'
    Parameters = <>
    Left = 32
    Top = 448
    object ADODSProviderid_provider: TIntegerField
      FieldName = 'id_provider'
    end
    object ADODSProviderCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object ADODSProvidercompany_name: TStringField
      FieldName = 'company_name'
      Size = 50
    end
    object ADODSProviderfantasy_name: TStringField
      FieldName = 'fantasy_name'
      Size = 35
    end
    object ADODSProvideraddress_pr: TStringField
      FieldName = 'address_pr'
      Size = 50
    end
    object ADODSProviderCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object ADODSProviderstate_pr: TStringField
      FieldName = 'state_pr'
      FixedChar = True
      Size = 2
    end
    object ADODSProvidercity: TStringField
      FieldName = 'city'
      Size = 30
    end
    object ADODSProvidernumber: TStringField
      FieldName = 'number'
      Size = 8
    end
    object ADODSProviderdistrict: TStringField
      FieldName = 'district'
      Size = 40
    end
    object ADODSProvideremail: TStringField
      FieldName = 'email'
      Size = 35
    end
    object ADODSProviderphone1: TStringField
      FieldName = 'phone1'
      FixedChar = True
      Size = 11
    end
    object ADODSProviderphone2: TStringField
      FieldName = 'phone2'
      FixedChar = True
      Size = 11
    end
    object ADODSProvidercell1: TStringField
      FieldName = 'cell1'
      FixedChar = True
      Size = 12
    end
    object ADODSProvidercell2: TStringField
      FieldName = 'cell2'
      FixedChar = True
      Size = 12
    end
  end
  object ADODSContacts: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from contacts'
    Parameters = <>
    Left = 32
    Top = 504
    object ADODSContactsid_contact: TIntegerField
      FieldName = 'id_contact'
    end
    object ADODSContactsid_provider: TIntegerField
      FieldName = 'id_provider'
    end
    object ADODSContactsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADODSContactsemail: TStringField
      FieldName = 'email'
      Size = 35
    end
    object ADODSContactsphone: TStringField
      FieldName = 'phone'
      FixedChar = True
      Size = 11
    end
    object ADODSContactscell: TStringField
      FieldName = 'cell'
      FixedChar = True
      Size = 12
    end
  end
  object ADODSPurchase_item_product: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from purchase_item_product'
    Parameters = <>
    Left = 32
    Top = 560
    object ADODSPurchase_item_productid_purchase_item_product: TIntegerField
      FieldName = 'id_purchase_item_product'
    end
    object ADODSPurchase_item_productid_product: TIntegerField
      FieldName = 'id_product'
    end
    object ADODSPurchase_item_productid_purchase: TIntegerField
      FieldName = 'id_purchase'
    end
    object ADODSPurchase_item_productquantity: TIntegerField
      FieldName = 'quantity'
    end
  end
  object DSCompany: TDataSource
    DataSet = ADODSCompany
    Left = 128
    Top = 232
  end
  object DSDepartments: TDataSource
    DataSet = ADODSDepartments
    Left = 128
    Top = 288
  end
  object DSPurchases: TDataSource
    DataSet = ADODSpurchases
    Left = 128
    Top = 400
  end
  object DSProvider: TDataSource
    DataSet = ADODSProvider
    Left = 128
    Top = 456
  end
  object DSContacts: TDataSource
    DataSet = ADODSContacts
    Left = 128
    Top = 512
  end
  object DSPurchases_item_product: TDataSource
    DataSet = ADODSPurchase_item_product
    Left = 128
    Top = 560
  end
end
