CREATE DATABASE ZamowieniaPrzyklad;

use ZamowieniaPrzyklad;

CREATE TABLE Kategorie (
	IDKategorii int NOT NULL DEFAULT 0 ,
	OpisKategorii nvarchar (75) NULL 
);

CREATE TABLE Klienci (
	IDKlienta int NOT NULL ,
	ImieKlienta nvarchar (25) NULL ,
	NazwiskoKlienta nvarchar (25) NULL ,
	AdresKlienta nvarchar (50) NULL ,
	MiastoKlienta nvarchar (30) NULL ,
	StanZamKlienta nvarchar (2) NULL ,
	KodPocztowyKlienta nvarchar (10) NULL ,
	NumKierKlienta smallint NULL DEFAULT 0 ,
	TelefonKlienta nvarchar (8) NULL 
);

CREATE TABLE Pracownicy (
	IDPracownika int NOT NULL ,
	ImiePracownika nvarchar (25) NULL ,
	NazwiskoPracownika nvarchar (25) NULL ,
	AdresPracownika nvarchar (50) NULL ,
	MiastoPracownika nvarchar (30) NULL ,
	StanZamPracownika nvarchar (2) NULL ,
	KodPocztowyPracownika nvarchar (10) NULL ,
	NumKierunkPracownika smallint NULL DEFAULT 0 ,
	TelefonPracownika nvarchar (8) NULL , 
        DataUrodzPracownika date NULL
);

CREATE TABLE Dane_zamowien (
	NumerZamowienia int NOT NULL DEFAULT 0 ,
	NumerProduktu int NOT NULL DEFAULT 0 ,
	CenaZakupu decimal (15, 2) NULL DEFAULT 0 ,
	ZamowionaIlosc smallint NULL DEFAULT 0 
);

CREATE TABLE Zamowienia (
	NumerZamowienia int NOT NULL DEFAULT 0 ,
	DataZamowienia date NULL ,
	DataWysylki date NULL ,
	IDKlienta int NULL DEFAULT 0,
	IDPracownika int NULL DEFAULT 0
);

CREATE TABLE Dostawcy_produktow (
	NumerProduktu int NOT NULL DEFAULT 0 ,
	IDDostawcy int NOT NULL DEFAULT 0 ,
	CenaHurtowa decimal (15, 2) NULL DEFAULT 0 ,
	TerminDostarczenia smallint NULL DEFAULT 0
);

CREATE TABLE Produkty (
	NumerProduktu int NOT NULL DEFAULT 0,
	NazwaProduktu nvarchar (50) NULL ,
	OpisProduktu nvarchar (100) NULL ,
	CenaDetaliczna decimal (15, 2) NULL DEFAULT 0 ,
	StanMagazynowy smallint NULL DEFAULT 0 ,
	IDKategorii int NULL DEFAULT 0
);

CREATE TABLE Dostawcy (
	IDDostawcy int NOT NULL ,
	NazwaDostawcy nvarchar (25) NULL ,
	AdresDostawcy nvarchar (50) NULL ,
	MiastoDostawcy nvarchar (30) NULL ,
	StanSiedzDostawcy nvarchar (2) NULL ,
	KodPocztowyDostawcy nvarchar (10) NULL ,
	TelefonDostawcy nvarchar (15) NULL ,
	FaxDostawcy nvarchar (15) NULL ,
	StronaInterDostawcy text NULL ,
	EmailDostawcy nvarchar (50) NULL 
) ;

CREATE TABLE ztblMiesiace (
	MiesiacRok nvarchar (20) NOT NULL ,
        NumerRoku smallint NOT NULL ,
        NumerMiesiaca smallint NOT NULL ,
        PoczatekMiesiaca date NOT NULL ,
        KoniecMiesiaca date NOT NULL ,
        Styczen smallint NOT NULL DEFAULT 0 ,
        Luty smallint NOT NULL DEFAULT 0 ,
        Marzec smallint NOT NULL DEFAULT 0 ,
        Kwiecien smallint NOT NULL DEFAULT 0 ,
        Maj smallint NOT NULL DEFAULT 0 ,
        Czerwiec smallint NOT NULL DEFAULT 0 ,
        Lipiec smallint NOT NULL DEFAULT 0 ,
        Sierpien smallint NOT NULL DEFAULT 0 ,
        Wrzesien smallint NOT NULL DEFAULT 0 ,
        Pazdziernik smallint NOT NULL DEFAULT 0 ,
        Listopad smallint NOT NULL DEFAULT 0 ,
        Grudzien smallint NOT NULL DEFAULT 0 
) ;


CREATE TABLE ztblZakresyCen ( 
        KategoriaCenowa nvarchar (20) NOT NULL ,
        ProgDolny decimal (15,2) NULL ,
        ProgGorny decimal (15,2) NULL
) ;


CREATE TABLE ztblKuponyZakupowe (
        ProgDolnyZakupu decimal (15,2) NOT NULL ,
        ProgGornyZakupu decimal (15,2) NULL ,
        LiczbaKuponow smallint NULL DEFAULT 0 
) ;


CREATE TABLE ztblNumeryKolejne (
        Kolejnosc int NOT NULL DEFAULT 0 
) ;


ALTER TABLE Kategorie ADD 
	CONSTRAINT Kategorie_PK PRIMARY KEY   
	(
		IDKategorii
	)  ;

 CREATE  INDEX IDKategorii ON Kategorie(IDKategorii);

ALTER TABLE Klienci ADD 
	CONSTRAINT Klienci_PK PRIMARY KEY   
	(
		IDKlienta
	)  ;

 CREATE  INDEX NumKierKlienta ON Klienci(NumKierKlienta);

 CREATE  INDEX KodPocztowyKlienta ON Klienci(KodPocztowyKlienta);

ALTER TABLE Pracownicy ADD 
	CONSTRAINT Pracownicy_PK PRIMARY KEY   
	(
		IDPracownika
	)  ;

 CREATE  INDEX NumKierunkPracownika ON Pracownicy(NumKierunkPracownika);

 CREATE  INDEX KodPocztowyPracownika ON Pracownicy(KodPocztowyPracownika);

ALTER TABLE Dane_zamowien ADD 
	CONSTRAINT Dane_zamowien_PK PRIMARY KEY   
	(
		NumerZamowienia,
		NumerProduktu
	)  ;

 CREATE  INDEX ZamowieniaDaneZamowien ON Dane_zamowien(NumerZamowienia);

 CREATE  INDEX ProduktyDaneZamowien ON Dane_zamowien(NumerProduktu);

ALTER TABLE Zamowienia ADD 
	CONSTRAINT Zamowienia_PK PRIMARY KEY   
	(
		NumerZamowienia
	)  ;

 CREATE  INDEX IDKlienta ON Zamowienia(IDKlienta);

 CREATE  INDEX IDPracownika ON Zamowienia(IDPracownika);

ALTER TABLE Dostawcy_produktow ADD 
	CONSTRAINT Dostawcy_produktow_PK PRIMARY KEY   
	(
		NumerProduktu,
		IDDostawcy
	)  ;

 CREATE  INDEX ProduktyDostawcyProduktow ON Dostawcy_produktow(NumerProduktu);

 CREATE  INDEX IDDostawcy ON Dostawcy_produktow(IDDostawcy);

ALTER TABLE Produkty ADD 
	CONSTRAINT roducts_PK PRIMARY KEY   
	(
		NumerProduktu
	)  ;

 CREATE  INDEX KategorieProdukty ON Produkty(IDKategorii);

ALTER TABLE Dostawcy ADD 
	CONSTRAINT Dostawcy_PK PRIMARY KEY   
	(
		IDDostawcy
	)  ;

 CREATE  INDEX KodPocztowyDostawcy ON Dostawcy(KodPocztowyDostawcy);

ALTER TABLE ztblMiesiace ADD
 	CONSTRAINT ztblMiesiace_PK PRIMARY KEY 
	(
		NumerRoku, 
                NumerMiesiaca
	) ;


 CREATE  UNIQUE INDEX KoniecMiesiaca ON ztblMiesiace(KoniecMiesiaca) ;


 CREATE  UNIQUE INDEX PoczatekMiesiaca ON ztblMiesiace(PoczatekMiesiaca) ;


 CREATE  UNIQUE INDEX MiesiacRok ON ztblMiesiace(MiesiacRok) ;


ALTER TABLE ztblZakresyCen ADD 
	CONSTRAINT ztblZakresyCen_PK PRIMARY KEY 
	(
		KategoriaCenowa 
	) ;


ALTER TABLE ztblKuponyZakupowe ADD 
	CONSTRAINT ztblKuponyZakupowe_PK PRIMARY KEY 
	( 
		ProgDolnyZakupu
	) ;


 CREATE  INDEX Num_Coupons ON ztblKuponyZakupowe(LiczbaKuponow) ;


ALTER TABLE ztblNumeryKolejne ADD 
        CONSTRAINT ztblNumeryKolejne_PK PRIMARY KEY
        (
                Kolejnosc
        ) ;


ALTER TABLE Dane_zamowien ADD 
	CONSTRAINT Dane_zamowien_FK00 FOREIGN KEY 
	(
		NumerZamowienia
	) REFERENCES Zamowienia (
		NumerZamowienia
	),
	ADD CONSTRAINT Dane_zamowien_FK01 FOREIGN KEY 
	(
		NumerProduktu
	) REFERENCES Produkty (
		NumerProduktu
	);

ALTER TABLE Zamowienia ADD 
	CONSTRAINT Zamowienia_FK00 FOREIGN KEY 
	(
		IDKlienta
	) REFERENCES Klienci (
		IDKlienta
	),
	ADD CONSTRAINT Zamowienia_FK01 FOREIGN KEY 
	(
		IDPracownika
	) REFERENCES Pracownicy (
		IDPracownika
	);

ALTER TABLE Dostawcy_produktow ADD 
	CONSTRAINT Dostawcy_produktow_FK00 FOREIGN KEY 
	(
		NumerProduktu
	) REFERENCES Produkty (
		NumerProduktu
	),
	ADD CONSTRAINT Dostawcy_produktow_FK01 FOREIGN KEY 
	(
		IDDostawcy
	) REFERENCES Dostawcy (
		IDDostawcy
	);

ALTER TABLE Produkty ADD 
	CONSTRAINT Produkty_FK00 FOREIGN KEY 
	(
		IDKategorii
	) REFERENCES Kategorie (
		IDKategorii
	);


