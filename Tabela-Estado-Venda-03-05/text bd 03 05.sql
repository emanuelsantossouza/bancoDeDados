CREATE DATABASE BANCOLOJA0305;

USE BANCOLOJA0305;

CREATE TABLE ESTADO
(
    IDESTADO INT NOT NULL PRIMARY KEY, 
    NOMEESTADO VARCHAR(40),
    SIGLAESTADO VARCHAR (2)
);


CREATE TABLE CIDADE
(
	IDCIDADE INT NOT NULL PRIMARY KEY,
	NOMECIDADE VARCHAR (20),
    	IDESTADO INT, 
    	FOREIGN KEY (IDESTADO) REFERENCES ESTADO (IDESTADO)
);

CREATE TABLE CLIENTE 
(
	IDCLIENTE INT NOT NULL PRIMARY KEY, 
	NOMECLIENTE VARCHAR (40),
	ENDERCLIENTE VARCHAR (30),
	BAIRROCLIENTE VARCHAR (30),
	CPFCLIENTE VARCHAR (20),
	RGCLIENTE VARCHAR (20),
	FONECLIENTE VARCHAR (20),
	IDCIDADE INT,
	FOREIGN KEY (IDCIDADE) REFERENCES CIDADE (IDCIDADE)
);

CREATE TABLE VENDA 
(
	IDVENDA  INT NOT NULL PRIMARY KEY,
	DATAVENDA VARCHAR  (15),
   	HORAVENDA VARCHAR (15),
	VALORTOTAL VARCHAR (10),
    	IDCLIENTE INT (30),
    	FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE (IDCLIENTE)
);
 
 CREATE TABLE PRODUTO  
 (
	IDPRODUTO INT NOT NULL PRIMARY KEY,
	DESCPRODUTO VARCHAR (20),
	VALOR VARCHAR (30),
   	IDTIPO INT (20),
    	FOREIGN KEY(IDTIPO) REFERENCES TIPOPRODUTO (IDTIPO)
 );
 
 CREATE TABLE TIPOPRODUTO
 (
	IDTIPO INT NOT NULL PRIMARY KEY,
    	DESCTIPO VARCHAR (10)
);

CREATE TABLE ITENS_VENDA 
(
	IDVENDA INT, 
	IDPRODUTO INT, 
	QTDETENS INT,
	VALORITEN VARCHAR (50)
);
    
 CREATE TABLE ITENS_VENDAS
 (
		IDVENDA INT NOT NULL,
		IDPRODUTO INT NOT NULL,
        QTDEINTES INT,
        VALORITNTES NUMERIC(5,2),
        PRIMARY KEY(IDVENDA,IDPRODUTO),
        FOREIGN KEY(IDEVENDA) REFERENCES VENDA(IDVENDA),
        FOREIGN KEY(IDPRODUTO) REFERENCES PRODUTO(IDPRODUTO)
);	
