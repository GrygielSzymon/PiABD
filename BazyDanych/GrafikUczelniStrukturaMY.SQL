CREATE DATABASE GrafikUczelniPrzyklad;



use GrafikUczelniPrzyklad;

CREATE TABLE Budynki (
	KodBudynku nvarchar (3) NOT NULL ,
	NazwaBudynku nvarchar (25) NULL ,
	LiczbaKondygnacji smallint NULL ,
	Winda bit NOT NULL DEFAULT 0 ,
	Parking bit NOT NULL DEFAULT 0  
);

CREATE TABLE Dziedziny (
	IDDziedziny nvarchar (10) NOT NULL ,
	OpisDziedziny nvarchar (75) NULL ,
	IDWydzialu int NULL DEFAULT 0 
);

CREATE TABLE Sale (
	IDSali int NOT NULL ,
	KodBudynku nvarchar (3) NULL ,
	DostTelefonu bit NOT NULL DEFAULT 0 ,
        LiczbaMiejsc smallint NOT NULL DEFAULT 0
);

CREATE TABLE Zajecia (
	IDZajec int NOT NULL ,
	IDPrzedmiotu int NULL DEFAULT 0 ,
	IDSali int NULL DEFAULT 0 ,
	PunktyEdukacyjne tinyint NULL DEFAULT 0 , 
        NumerSemestru smallint , 
        DataRozpoczecia date NULL ,
	GodzinaRozpoczecia time NULL ,
	CzasTrwania smallint NULL DEFAULT 0 ,
	PlanNaPoniedzialek bit NOT NULL DEFAULT 0 ,
	PlanNaWtorek bit NOT NULL DEFAULT 0 ,
	PlanNaSrode bit NOT NULL DEFAULT 0 ,
	PlanNaCzwartek bit NOT NULL DEFAULT 0 ,
	PlanNaPiatek bit NOT NULL DEFAULT 0 ,
	PlanNaSobote bit NOT NULL DEFAULT 0
);

CREATE TABLE Wydzialy (
	IDWydzialu int NOT NULL ,
	NazwaWydzialu nvarchar (50) NULL ,
	KierownikWydzialu int NULL DEFAULT 0 
);

CREATE TABLE Wykladowcy (
	IDPracownika int NOT NULL ,
	Tytul nvarchar (50) NULL ,
	Status nvarchar (15) NULL ,
	Etat bit NOT NULL DEFAULT 0 
);

CREATE TABLE Dziedziny_wykladowcow (
	IDPracownika int NOT NULL ,
	IDDziedziny nvarchar (10) NOT NULL DEFAULT 'KSI' 
);

CREATE TABLE Zajecia_wykladowcow (
	IDZajec int NOT NULL ,
	IDPracownika int NOT NULL 
);

CREATE TABLE Przedmioty_wykladowcow (
	IDPracownika int NOT NULL DEFAULT 0 ,
	IDPrzedmiotu int NOT NULL DEFAULT 0 ,
	OcenaBieglosci real NULL DEFAULT 0
);

CREATE TABLE Kierunki (
        IDKierunku int NOT NULL ,
        Kierunek nvarchar (20) NULL 
);

CREATE TABLE Pracownicy (
	IDPracownika int NOT NULL ,
	ImiePracownika nvarchar (25) NULL ,
	NazwiskoPracownika nvarchar (25) NULL ,
	AdresPracownika nvarchar (50) NULL ,
	MiastoPracownika nvarchar (30) NULL ,
	StanZamPracownika nvarchar (2) NULL ,
	KodPocztowyPracownika nvarchar (5) NULL ,
	NumKierPracownika nvarchar (5) NULL ,
	TelefonPracownika nvarchar (8) NULL ,
	Wynagrodzenie decimal(15,2) NULL ,
	DataZatrudnienia date NULL ,
	Stanowisko nvarchar (50) NULL 
);

CREATE TABLE Status_zajec_studenta (
	StatusZajec int NOT NULL DEFAULT 0 ,
	OpisStatusuZajec nvarchar (50) NULL 
);

CREATE TABLE Grafik_studenta (
	IDStudenta int NOT NULL ,
	IDZajec int NOT NULL ,
	StatusZajec int NULL DEFAULT 0 ,
	Ocena real NULL DEFAULT 0
);

CREATE TABLE Studenci (
	IDStudenta int NOT NULL ,
	ImieStudenta nvarchar (25) NULL ,
	NazwiskoStudenta nvarchar (25) NULL ,
	AdresStudenta nvarchar (50) NULL ,
	MiastoStudenta nvarchar (30) NULL ,
	StanZamStudenta nvarchar (2) NULL ,
	KodPocztowyStudenta nvarchar (5) NULL ,
	NumKierStudenta nvarchar (5) NULL ,
	TelefonStudenta nvarchar (8) NULL ,
	DataUrodzStudenta date NULL ,
	PlecStudenta nvarchar (1) NULL,
	StanCywilnyStudenta nvarchar (1) NULL, 
        KierunekStudiow int NULL 
);

CREATE TABLE Przedmioty (
	IDPrzedmiotu int NOT NULL DEFAULT 0 ,
	IDDziedziny nvarchar (10) NULL ,
	KodPrzedmiotu nvarchar (8) NULL ,
	NazwaPrzedmiotu nvarchar (50) NULL ,
        Wymagania nvarchar (8) NULL DEFAULT NULL ,
	OpisPrzedmiotu text NULL ,
        SzacWielkoscGrupy smallint NOT NULL DEFAULT 0 
);

CREATE TABLE ztblMacierzPlci (
	Plec nvarchar (1) NOT NULL ,
        Mezczyzna smallint NULL ,
        Kobieta smallint NULL
) ;


CREATE TABLE ztblOcenyLiterowe ( 
	OcenaLiterowa nvarchar (3) NOT NULL ,
        PunktowyProgDolny real NULL ,
        PunktowyProgGorny real NULL 
) ; 


CREATE TABLE ztblMacierzStanuCywilnego (
	StanCywilny nvarchar (1) NOT NULL , 
	Mlzn smallint NULL ,
        Smtn smallint NULL ,
        Wdw smallint NULL ,
        Rzwd smallint NULL  
) ; 


CREATE TABLE ztblOcenyWykladowcow ( 
        OpisOcenyWykladowcy nvarchar (12) NULL ,
        ProgDolnyOceny float (53) NOT NULL ,
        ProgGornyOceny float (53) NULL 
) ; 


CREATE TABLE ztblDniSemestru (
        NrSemestru smallint NOT NULL ,
        DataWSemestrze date NOT NULL ,
        DzienTygodnia nvarchar (15) NULL
) ; 


CREATE TABLE ztblNumeryKolejne ( 
        NrKolejny int NOT NULL DEFAULT 0 
) ; 


ALTER TABLE Budynki 
        ADD CONSTRAINT Budynki_PK PRIMARY KEY 
        (
                KodBudynku
        );

CREATE  INDEX LiczbaKondygnacji ON Budynki(LiczbaKondygnacji);

ALTER TABLE Dziedziny 
        ADD CONSTRAINT Dziedziny2_PK PRIMARY KEY 
        (
                IDDziedziny
        );

CREATE  INDEX IDWydzialu ON Dziedziny(IDWydzialu);

ALTER TABLE Sale 
        ADD CONSTRAINT Sale_PK PRIMARY KEY 
        (
                IDSali
        );

CREATE  INDEX NumerBudynku ON Sale(KodBudynku);

ALTER TABLE Zajecia 
        ADD CONSTRAINT Zajecia_PK PRIMARY KEY 
        (
                IDZajec
        );

CREATE  INDEX IDPrzedmiotu ON Zajecia(IDPrzedmiotu);

CREATE  INDEX IDSali ON Zajecia(IDSali);

ALTER TABLE Wydzialy 
	ADD CONSTRAINT Wydzialy_PK PRIMARY KEY  
	(
		IDWydzialu
	);  

 CREATE  INDEX PracownicyWydzialy ON Wydzialy(KierownikWydzialu);

ALTER TABLE Wykladowcy 
        ADD CONSTRAINT Wykladowcy_PK PRIMARY KEY 
        (
                IDPracownika
        );

ALTER TABLE Dziedziny_wykladowcow 
        ADD CONSTRAINT Dziedziny_wykladowcow_PK PRIMARY KEY 
        (
                IDPracownika, 
                IDDziedziny
        );

CREATE  INDEX DziedzinyWykladowcy_Dziedziny ON Dziedziny_wykladowcow(IDDziedziny);

CREATE  INDEX WykladowcyWykladowcy_Dziedziny ON Dziedziny_wykladowcow(IDPracownika);

ALTER TABLE Zajecia_wykladowcow 
        ADD CONSTRAINT Zajecia_wykladowcow_PK PRIMARY KEY 
        (
                IDZajec, 
                IDPracownika
        );

CREATE  INDEX ZajeciaWykladowcyZajecia ON Zajecia_wykladowcow(IDZajec);

CREATE  INDEX PracownicyWykladowcyZajecia ON Zajecia_wykladowcow(IDPracownika);

ALTER TABLE Przedmioty_wykladowcow 
        ADD CONSTRAINT Przedmioty_wykladowcow_PK PRIMARY KEY 
        (
                IDPracownika, 
                IDPrzedmiotu
        );

CREATE  INDEX WykladowcyWykladowcyPrzedmioty ON Przedmioty_wykladowcow(IDPracownika);

CREATE  INDEX PrzedmiotyWykladowcyPrzedmioty ON Przedmioty_wykladowcow(IDPrzedmiotu);

ALTER TABLE Kierunki 
        ADD CONSTRAINT Kierunki_PK PRIMARY KEY
        (
               IDKierunku
        );

ALTER TABLE Pracownicy 
        ADD CONSTRAINT Pracownicy_PK PRIMARY KEY 
        (
                IDPracownika
        );

CREATE  INDEX KodPocztowyPracownika ON Pracownicy(KodPocztowyPracownika);

CREATE  INDEX NumKierStudenta ON Pracownicy(NumKierPracownika);

ALTER TABLE Status_zajec_studenta 
        ADD CONSTRAINT Status_zajec_studenta_PK PRIMARY KEY 
        (
                StatusZajec
        );

ALTER TABLE Grafik_studenta 
        ADD CONSTRAINT Grafik_studenta_PK PRIMARY KEY 
        (
                IDStudenta, 
                IDZajec
        );

CREATE  INDEX ZajeciaGrafikStudenta ON Grafik_studenta(IDZajec);

CREATE  INDEX StudenciZajeciaStatusGrafikStudenta ON Grafik_studenta(StatusZajec);

CREATE  INDEX StudenciGrafikStudenta ON Grafik_studenta(IDStudenta);

ALTER TABLE Studenci 
        ADD CONSTRAINT Studenci_PK PRIMARY KEY 
        (
                IDStudenta
        );

CREATE  INDEX NumKierStudenta ON Studenci(NumKierStudenta);

CREATE  INDEX KodPocztowyStudenta ON Studenci(KodPocztowyStudenta);

CREATE  INDEX KierunekStudiow ON Studenci(KierunekStudiow);

ALTER TABLE Przedmioty 
        ADD CONSTRAINT Przedmioty_PK PRIMARY KEY 
        (
                IDPrzedmiotu
        );

CREATE  INDEX IDDziedziny ON Przedmioty(IDDziedziny);

CREATE  UNIQUE  INDEX KodPrzedmiotu ON Przedmioty(KodPrzedmiotu);

CREATE  INDEX Wymagania ON Przedmioty(Wymagania);

ALTER TABLE ztblMacierzPlci ADD 
        CONSTRAINT ztblMacierzPlci_PK PRIMARY KEY 
        (
               Plec
        ); 


ALTER TABLE ztblOcenyLiterowe ADD 
        CONSTRAINT ztblOcenyLiterowe_PK PRIMARY KEY
        (
                OcenaLiterowa 
        ); 


ALTER TABLE ztblMacierzStanuCywilnego ADD 
        CONSTRAINT ztblMacierzStanuCywilnego_PK PRIMARY KEY
        (
                StanCywilny 
        ); 


ALTER TABLE ztblOcenyWykladowcow ADD 
	CONSTRAINT ztblOcenyWykladowcow_PK PRIMARY KEY 
	(
		ProgDolnyOceny 
	); 


ALTER TABLE ztblDniSemestru ADD 
	CONSTRAINT ztblDniSemestru_PK PRIMARY KEY 
	( 
		NrSemestru ,
                DataWSemestrze 
	); 


ALTER TABLE ztblNumeryKolejne ADD 
	CONSTRAINT ztblNumeryKolejne_PK PRIMARY KEY 
	(
		NrKolejny 
	); 


ALTER TABLE Dziedziny ADD 
	CONSTRAINT Dziedziny_FK00 FOREIGN KEY 
	(
		IDWydzialu
	) REFERENCES Wydzialy (
		IDWydzialu
	);

ALTER TABLE Sale 
        ADD CONSTRAINT Sale_FK00 FOREIGN KEY 
        (
                KodBudynku
        ) REFERENCES Budynki (
                KodBudynku
        );

ALTER TABLE Zajecia 
        ADD CONSTRAINT Zajecia_FK00 FOREIGN KEY 
        (
                IDSali
        ) REFERENCES Sale (
                IDSali
        ),
        ADD CONSTRAINT Zajecia_FK01 FOREIGN KEY 
        (
                IDPrzedmiotu
        ) REFERENCES Przedmioty (
                IDPrzedmiotu
        );

ALTER TABLE Wydzialy ADD 
	CONSTRAINT Wydzialy_FK00 FOREIGN KEY 
	(
		KierownikWydzialu
	) REFERENCES Pracownicy (
		IDPracownika
	);

ALTER TABLE Wykladowcy 
	ADD CONSTRAINT Wykladowcy_FK00 FOREIGN KEY 
	(
		IDPracownika
	) REFERENCES Pracownicy (
		IDPracownika
	);

ALTER TABLE Dziedziny_wykladowcow 
	ADD CONSTRAINT Dziedziny_wykladowcow_FK00 FOREIGN KEY 
	(
		IDDziedziny
	) REFERENCES Dziedziny (
		IDDziedziny
	),
	ADD CONSTRAINT Dziedziny_wykladowcow_FK01 FOREIGN KEY 
	(
		IDPracownika
	) REFERENCES Wykladowcy (
		IDPracownika
	);

ALTER TABLE Zajecia_wykladowcow 
	ADD CONSTRAINT Zajecia_wykladowcow_FK00 FOREIGN KEY 
	(
		IDZajec
	) REFERENCES Zajecia (
	IDZajec
	),
	ADD CONSTRAINT Zajecia_wykladowcow_FK01 FOREIGN KEY 
	(
		IDPracownika
	) REFERENCES Pracownicy (
		IDPracownika
	),
	ADD CONSTRAINT Zajecia_wykladowcow_FK02 FOREIGN KEY
	(
		IDPracownika
	) REFERENCES Wykladowcy (
		IDPracownika
	);

ALTER TABLE Przedmioty_wykladowcow 
	ADD CONSTRAINT Przedmioty_wykladowcow_FK00 FOREIGN KEY 
	(
		IDPracownika
	) REFERENCES Wykladowcy (
		IDPracownika
	),
	ADD CONSTRAINT Przedmioty_wykladowcow_FK01 FOREIGN KEY 
	(
		IDPrzedmiotu
	) REFERENCES Przedmioty (
		IDPrzedmiotu
	);

ALTER TABLE Studenci 
        ADD CONSTRAINT Studenci_FK00 FOREIGN KEY
        (
                KierunekStudiow
        ) REFERENCES Kierunki (
                IDKierunku
        );

ALTER TABLE Grafik_studenta 
	ADD CONSTRAINT Grafik_studenta_FK00 FOREIGN KEY 
	(
		IDZajec
	) REFERENCES Zajecia (
		IDZajec
	),
	ADD CONSTRAINT Grafik_studenta_FK01 FOREIGN KEY 
	(
		StatusZajec
	) REFERENCES Status_zajec_studenta (
		StatusZajec
	),
	ADD CONSTRAINT Grafik_studenta_FK02 FOREIGN KEY 
	(
		IDStudenta
	) REFERENCES Studenci (
		IDStudenta
	);

ALTER TABLE Przedmioty 
	ADD CONSTRAINT Przedmioty_FK00 FOREIGN KEY 
	(
		IDDziedziny
	) REFERENCES Dziedziny (
		IDDziedziny
	),
	ADD CONSTRAINT Przedmioty_FK01 FOREIGN KEY
	(
		Wymagania
	) REFERENCES Przedmioty (
		KodPrzedmiotu
	);