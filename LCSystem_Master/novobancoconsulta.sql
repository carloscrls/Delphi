
USE data;

CREATE TABLE company(
    id_company INT NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    fantasy_name VARCHAR(35) NOT NULL,
    address_co VARCHAR(50),
    CEP CHAR(8),
    state_co CHAR(2),
    city VARCHAR(50),
    number VARCHAR(8),
    district VARCHAR(40),
    email VARCHAR(35),
    phone1 CHAR(11),
    phone2 CHAR(11),
    cell1 CHAR(12),
    cell2 CHAR(12),
    CONSTRAINT pk_company_id_company PRIMARY KEY (id_company),
    CONSTRAINT uc_company_CNPJ UNIQUE (CNPJ),
    CONSTRAINT uc_company_company_name UNIQUE (company_name)
);

CREATE TABLE departments(
    id_department INT NOT NULL,
    id_company INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(35),
    CONSTRAINT pk_departments_id_department PRIMARY KEY (id_department),
    CONSTRAINT fk_company FOREIGN KEY (id_company) REFERENCES company(id_company)
);



CREATE TABLE providers(
    id_provider INT NOT NULL,
    CPF_CNPJ VARCHAR(14) NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    fantasy_name VARCHAR(35) NOT NULL,
    address_pr VARCHAR(50),
    CEP CHAR(8),
    state_pr CHAR(2),
    city VARCHAR(30),
    number VARCHAR(8),
    district VARCHAR(40),
    email VARCHAR(35),
    phone1 CHAR(11),
    phone2 CHAR(11),
    cell1 CHAR(12),
    cell2 CHAR(12),
    CONSTRAINT pk_providers_id_provider PRIMARY KEY(id_provider)
);

CREATE TABLE contacts(
    id_contact INT NOT NULL,
    id_provider INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(35),
    phone CHAR(11),
    cell CHAR(12),
    CONSTRAINT pk_contacts_id_contact PRIMARY KEY (id_contact),
    CONSTRAINT fk_providers_id_provider FOREIGN KEY (id_provider) REFERENCES providers(id_provider),
);

/*CREATE TABLE clients(
    id_client INT NOT NULL,
    CPF_CNPJ VARCHAR(11) NOT NULL,
    RG CHAR(8) NOT NULL,
    name VARCHAR(35),
    birth_date DATE,
    inclusion_date DATE,
    update_date DATE,
    gender CHAR(1),
    address VARCHAR(50),
    CEP CHAR(8),
    district VARCHAR(40),
    city VARCHAR(50),
    state CHAR(2),
    complement VARCHAR(50),
    phone1 CHAR(11),
    phone2 CHAR(11),
    cell1 CHAR(12),
    cell2 CHAR(12),
    CONSTRAINT pk_clients_id_client PRIMARY KEY (id_client),
    CONSTRAINT uc_clients_CPF UNIQUE (CPF),
    CONSTRAINT uc_clients_RG UNIQUE (CPF)
);*/

CREATE TABLE Categories(
    id_category INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    description VARCHAR(MAX),
    CONSTRAINT pk_category_id_category 
        PRIMARY KEY (id_category)
);


CREATE TABLE products(
    id_product INT NOT NULL,
    id_category INT NOT NULL,
    description_pr VARCHAR(40) NOT NULL,
    product_value DECIMAL(10,2),
    specifications VARCHAR(MAX),
    quantity INTEGER,
    CONSTRAINT pk_products_id_product 
        PRIMARY KEY (id_product),
    CONSTRAINT fk_categories_id_category 
        FOREIGN KEY (id_category) 
            REFERENCES categories(id_category)
    
);

CREATE TABLE employees(
    id_employee INT NOT NULL,
    id_department INT NOT NULL,
    CPF CHAR(11) NOT NULL,
    name VARCHAR(50) NOT NULL,
    address_em VARCHAR(40),
    CEP CHAR(8),
	state_em CHAR(2),
    number VARCHAR(8),
    district VARCHAR(40),
    complement VARCHAR(40),
    email VARCHAR(35),
    salary DECIMAL(10,2),
    branch_line VARCHAR(5),
	position VARCHAR(35),
    commission INT,
    phone1 CHAR(11),
    phone2  CHAR(11),
    cell1  CHAR(12),
    cell2 CHAR(12),
    CONSTRAINT pk_employees_id_employee PRIMARY KEY (id_employee),
    CONSTRAINT fk_departments_id_department_employees FOREIGN KEY(id_department) REFERENCES departments(id_department)
);


/*CREATE TABLE positions(
    id_position INT NOT NULL,
    id_department INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_positions_id_position PRIMARY KEY (id_position),
    CONSTRAINT fk_departments_id_department_positions FOREIGN KEY (id_department) REFERENCES departments(id_department),
);
    */
    
    
    
    

/*CREATE TABLE sales(
    id_sale INT NOT NULL,
    id_client INT NOT NULL,
	id_employee INT NOT NULL,
    numero VARCHAR(9),
    codigo VARCHAR(9),
    sale_value DECIMAL(10,2) NOT NULL,
    payment VARCHAR(50) NOT NULL,
    installments INTEGER NOT NULL,
    CONSTRAINT pk_sales_id_sale PRIMARY KEY (id_sale),
    CONSTRAINT fk_clients_id_client FOREIGN KEY (id_client) REFERENCES clients(id_client),
    CONSTRAINT fk_employees_id_employee FOREIGN KEY (id_employee) REFERENCES employees(id_employee)
);*/

/*CREATE TABLE notasfiscais(
    id_notafiscal INT NOT NULL,
    id_sale INT NOT NULL,
    CONSTRAINT pk_notasfiscais_id_notafiscal PRIMARY KEY(id_notafiscal),
    CONSTRAINT fk_sales_id_sale_notasfiscais FOREIGN KEY (id_sale) REFERENCES sales(id_sale)
);*/

/*CREATE TABLE product_item_sale(
    id_sale INT NOT NULL,
    id_product INT NOT NULL,
    quantity INT NOT NULL,
	CONSTRAINT pk_sale_has_product PRIMARY KEY(id_sale),    
	CONSTRAINT fk_products_id_product_item_sale FOREIGN KEY (id_product) REFERENCES products(id_product),
    CONSTRAINT fk_sales_id_sale_product_item_sale FOREIGN KEY (id_sale) REFERENCES sales(id_sale),
);*/


/*CREATE TABLE product_item_provider(
    id_provider INT NOT NULL,
    id_product INT NOT NULL,
    quantity INT NOT NULL,
	CONSTRAINT pk_provider_has_product PRIMARY KEY(id_provider),
    CONSTRAINT fk_products_id_product_product_item_provider FOREIGN KEY(id_product) REFERENCES products(id_product),
    CONSTRAINT fk_providers_id_provider_product_item_provider FOREIGN KEY(id_provider) REFERENCES providers(id_provider)
);*/


CREATE TABLE users(
    id VARCHAR(20),
    pass    VARCHAR(20),
    CONSTRAINT pk_users_id_user PRIMARY KEY(id)
);
    
    


CREATE TABLE purchases(
    id_purchase INT NOT NULL,
    id_employee INT NOT NULL,
    id_provider INT NOT NULL,
    total_value DECIMAL(10,2),
    nf_key CHAR(44),
    date_ins DATE,
    CONSTRAINT pk_purchases_id_purchase
        PRIMARY KEY (id_purchase),
    CONSTRAINT fk_employees_id_employee
        FOREIGN KEY (id_employee)
            REFERENCES employees(id_employee),
    CONSTRAINT fk_providers_id_provider2
        FOREIGN KEY (id_provider) 
            REFERENCES providers(id_provider)
);

CREATE TABLE purchase_item_product(
    id_purchase_item_product INT NOT NULL,
    id_product INT NOT NULL,
    id_purchase INT NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT pk_purchase_item_product
        PRIMARY KEY (id_purchase_item_product),
    CONSTRAINT fk_product_id_product2
        FOREIGN KEY (id_product)
            REFERENCES products(id_product),
    CONSTRAINT fk_purchase_id_purchase
        FOREIGN KEY (id_purchase)
            REFERENCES purchases(id_purchase),
);




    
    







/* ----------Scripts do Banco de dados em construção (SQL SERVER)--------
-------------Database Scripts in development (SQL SERVER)------------

***ATTENTION****
    CPF is a registration number for people in Brazil
    CNPJ is a registration number for companys in Brazil
    CEP its a registration number for address in Brazil. 
        For exemple:
            THE CEP 00.000.000 it's equivalent a 'X' street, in a 'Y' city, in a 'Z' state.

*/

    
    

           
    
    



