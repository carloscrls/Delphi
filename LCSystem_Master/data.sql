create database dataretail;

use dataretail;

create table company(
    id_company INT NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    fantasy_name VARCHAR(35) NOT NULL,
    address VARCHAR(50),
    CEP CHAR(8),
    state CHAR(2),
    city VARCHAR(50),
    number VARCHAR(8),
    district VARCHAR(40),
    email VARCHAR(35),
    phone1 CHAR(11),
    phone2 CHAR(11),
    cell1 CHAR(12),
    cell2 CHAR(12),
    constraint pk_company_id_company
    primary key(id_company),
    constraint uc_company_CNPJ
    unique(CNPJ),
    constraint uc_company_company_name
    unique(company_name)
);

create table department(
    id_department INT NOT NULL,
    id_company INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(35),
    constraint pk_department_id_department
    primary key(id_department),
    constraint fk_company
    foreign key(id_department) references(id_department)
);

create table provider(
    id_provider INT NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    fantasy_name VARCHAR(35) NOT NULL,
    address VARCHAR(50),
    CEP CHAR(8),
    state CHAR(2),
    city VARCHAR(30),
    number VARCHAR(8),
    district VARCHAR(40),
    email VARCHAR(35),
    phone1 CHAR(11),
    phone2 CHAR(11),
    cell1 CHAR(12),
    cell2 CHAR(12),
    constraint pk_provider_id_provider
    primary key(id_provider)
);

create table contact(
    id_contact INT NOT NULL,
    id_provider INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(35),
    phone CHAR(11),
    cell CHAR(12),
    constraint pk_contact_id_contact
    primary key(id_contact),
    constraint fk_provider_id_provider
    foreign key(id_contact) references contact(id_contact),
);

create table client(
    id_client INT NOT NULL,
    CPF CHAR(11) NOT NULL,
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
    constraint pk_cliente_id_client
    primary key(id_client),
    constraint uc_client_CPF
    unique(CPF),
    constraint uc_client_RG
    unique(CPF)
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

    
    

           
    
    



