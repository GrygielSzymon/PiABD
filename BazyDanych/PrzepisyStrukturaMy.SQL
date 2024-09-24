CREATE DATABASE PrzepisyPrzyklad; 

USE PrzepisyPrzyklad;

CREATE TABLE Kategorie_skladnikow (
        IDKategoriiSkladnika smallint NOT NULL DEFAULT 0 ,
        OpisKategoriiSkladnika nvarchar (255) NULL 
);

CREATE TABLE Skladniki (
        IDSkladnika int NOT NULL DEFAULT 0 ,
        NazwaSkladnika nvarchar (255) NULL ,
        IDKategoriiSkladnika smallint NULL DEFAULT 0 ,
        IDMiaryIlosci smallint NULL DEFAULT 0 
);

CREATE TABLE Miary (
        IDMiaryIlosci smallint NOT NULL DEFAULT 0 ,
        OpisMiary nvarchar (255) NULL 
);

CREATE TABLE Kategorie_przepisow (
        IDKategoriiPrzepisu smallint NOT NULL DEFAULT 0 ,
        OpisKategoriiPrzepisu nvarchar (255) NULL 
);

CREATE TABLE Skladniki_przepisow (
        IDPrzepisu int NOT NULL DEFAULT 0 ,
        NumerKrokuPrzepisu smallint NOT NULL DEFAULT 0 ,
        IDSkladnika int NULL DEFAULT 0 ,
        IDMiaryIlosci smallint NULL DEFAULT 0 ,
        Ilosc real NULL DEFAULT 0
);

CREATE TABLE Przepisy (
        IDPrzepisu int NOT NULL DEFAULT 0 ,
        NazwaPrzepisu nvarchar (255) NULL ,
        IDKategoriiPrzepisu smallint NULL DEFAULT 0 ,
        SposobPrzyrzadzania text NULL ,
        Uwagi text NULL
);

ALTER TABLE Kategorie_skladnikow 
        ADD CONSTRAINT Kategorie_skladnikow_PK PRIMARY KEY 
        (
                IDKategoriiSkladnika
        );

ALTER TABLE Skladniki 
        ADD CONSTRAINT Skladniki_PK PRIMARY KEY 
        (
                IDSkladnika
        );

CREATE  INDEX Kategorie_skladnikowSkladniki ON Skladniki(IDKategoriiSkladnika);

CREATE  INDEX MiarySkladniki ON Skladniki(IDMiaryIlosci);

ALTER TABLE Miary 
        ADD CONSTRAINT Miary_PK PRIMARY KEY 
        (
                IDMiaryIlosci
        );

ALTER TABLE Kategorie_przepisow 
        ADD CONSTRAINT Kategorie_przepisow_PK PRIMARY KEY 
        (
               IDKategoriiPrzepisu
        );

ALTER TABLE Skladniki_przepisow 
        ADD CONSTRAINT Skladniki_przepisow_PK PRIMARY KEY 
        (
                IDPrzepisu, 
                NumerKrokuPrzepisu
        );

CREATE  INDEX IDSkladnika ON Skladniki_przepisow(IDSkladnika);

CREATE  INDEX IDMiaryIlosci ON Skladniki_przepisow(IDMiaryIlosci);

CREATE  INDEX IDPrzepisu ON Skladniki_przepisow(IDPrzepisu);

ALTER TABLE Przepisy 
        ADD CONSTRAINT Przepisy_PK PRIMARY KEY 
        (
                IDPrzepisu
        );

CREATE  INDEX Kategorie_przepisowPrzepisy ON Przepisy(IDKategoriiPrzepisu);

ALTER TABLE Skladniki 
        ADD CONSTRAINT Skladniki_FK00 FOREIGN KEY 
        (
                IDKategoriiSkladnika
        ) REFERENCES Kategorie_skladnikow 
        (
                IDKategoriiSkladnika
        ),
        ADD CONSTRAINT Skladniki_FK01 FOREIGN KEY 
        (
                IDMiaryIlosci
        ) REFERENCES Miary (
                IDMiaryIlosci
        );

ALTER TABLE Przepisy 
        ADD CONSTRAINT Przepisy_FK00 FOREIGN KEY 
        (
                IDKategoriiPrzepisu
        ) REFERENCES Kategorie_przepisow (
                IDKategoriiPrzepisu
        );

ALTER Table Skladniki_przepisow 
	ADD CONSTRAINT Skladniki_przepisow_FK00 FOREIGN KEY
	(
		IDPrzepisu
	) REFERENCES Przepisy (
		IDPrzepisu
	),
	ADD CONSTRAINT Skladniki_przepisow_FK01 FOREIGN KEY
	(
		IDSkladnika
	) REFERENCES Skladniki (
		IDSkladnika
	),
	ADD CONSTRAINT Skladniki_przepisow_FK02 FOREIGN KEY
	(
		IDMiaryIlosci
	) REFERENCES Miary (
		IDMiaryIlosci
	);