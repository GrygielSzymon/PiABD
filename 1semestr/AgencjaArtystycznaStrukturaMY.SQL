CREATE DATABASE AgencjaArtystycznaPrzyklad;

use AgencjaArtystycznaPrzyklad;

CREATE TABLE Agenci (
        IDAgenta int NOT NULL ,
        ImieAgenta nvarchar (25) NULL ,
        NazwiskoAgenta nvarchar (25) NULL ,
        AdresAgenta nvarchar (50) NULL ,
        MiastoAgenta nvarchar (30) NULL ,
        StanZamAgenta nvarchar (2) NULL ,
        KodPocztowyAgenta nvarchar (10) NULL ,
        TelefonAgenta nvarchar (15) NULL ,
        DataZatrudnienia date NULL ,
        Wynagrodzenie decimal(15, 2) NULL DEFAULT 0 ,
        Premia float(24) NULL DEFAULT 0 
);

CREATE TABLE Klienci (
        IDKlienta int NOT NULL ,
        ImieKlienta nvarchar (25) NULL ,
        NazwiskoKlienta nvarchar (25) NULL ,
        AdresKlienta nvarchar (50) NULL ,
        MiastoKlienta nvarchar (30) NULL ,
        StanZamKlienta nvarchar (2) NULL ,
        KodPocztowyKlienta nvarchar (10) NULL ,
        TelefonKlienta nvarchar (15) NULL 
);

CREATE TABLE Imprezy (
        NumerImprezy int NOT NULL DEFAULT 0 ,
        DzienRozpoczecia date NULL ,
        DzienZakonczenia date NULL ,
        GodzinaRozpoczecia time NULL ,
        GodzinaZakonczenia time NULL ,
        WartoscKontraktu decimal(15,2) NULL DEFAULT 0 ,
        IDKlienta int NULL DEFAULT 0 ,
        IDAgenta int NULL DEFAULT 0 ,
        IDWykonawcy int NULL DEFAULT 0 
);

CREATE TABLE Czlonkowie_zespolu (
        IDWykonawcy int NOT NULL ,
        IDCzlonka int NOT NULL DEFAULT 0 ,
        Status smallint NULL DEFAULT 0 
);

CREATE TABLE Style_wykonawcow (
        IDWykonawcy int NOT NULL ,
        IDStylu smallint NOT NULL DEFAULT 0 ,
        WplywStylu smallint NOT NULL 
);

CREATE TABLE Wykonawcy (
        IDWykonawcy int NOT NULL ,
        NazwaScenicznaWykonawcy nvarchar (50) NULL ,
        NrUbezpWykonawcy nvarchar (12) NULL ,
        AdresWykonawcy nvarchar (50) NULL ,
        MiastoWykonawcy nvarchar (30) NULL ,
        StanZamWykonawcy nvarchar (2) NULL ,
        KodPocztowyWykonawcy nvarchar (10) NULL ,
        TelefonWykonawcy nvarchar (15) NULL ,
        StronaInterWykonawcy nvarchar (50) NULL ,
        EmailWykonawcy nvarchar (50) NULL ,
        DataRejestracji date NULL 
);

CREATE TABLE Czlonkowie (
        IDCzlonka int NOT NULL DEFAULT 0 ,
        ImieCzlonka nvarchar (25) NULL ,
        NazwiskoCzlonka nvarchar (25) NULL ,
        TelefonCzlonka nvarchar (15) NULL ,
        Plec nvarchar (2) NULL 
);

CREATE TABLE Gusty_muzyczne (
        IDKlienta int NOT NULL DEFAULT 0 ,
        IDStylu smallint NOT NULL DEFAULT 0 ,
        KolejnoscPreferencji smallint NOT NULL 
);

CREATE TABLE Style_muzyczne (
        IDStylu smallint NOT NULL DEFAULT 0 ,
        NazwaStylu nvarchar (75) NULL 
);

CREATE TABLE ztblDni (
        PoleDaty date NOT NULL 
);


CREATE TABLE ztblMiesiace ( 
        MiesiacRok nvarchar (20) NULL ,
        NumerRoku smallint NOT NULL ,
        NumerMiesiaca smallint NOT NULL ,
        PoczatekMiesiaca date NULL ,
        KoniecMiesiaca date NULL ,
        Styczen smallint NULL DEFAULT 0 ,
        Luty smallint NULL DEFAULT 0 ,
        Marzec smallint NULL DEFAULT 0 ,
        Kwiecien smallint NULL DEFAULT 0 ,
        Maj smallint NULL DEFAULT 0 ,
        Czerwiec smallint NULL DEFAULT 0 ,
        Lipiec smallint NULL DEFAULT 0 ,
        Sierpien smallint NULL DEFAULT 0 ,
        Wrzesien smallint NULL DEFAULT 0 ,
        Pazdziernik smallint NULL DEFAULT 0 ,
        Listopad smallint NULL DEFAULT 0 ,
        Grudzien smallint NULL DEFAULT 0 
);


CREATE TABLE ztblPomijanieEtykiet (
        LicznikEtykiet int NOT NULL  
);


CREATE TABLE ztblTygodnie ( 
        PoczatekTygodnia date NOT NULL ,
        KoniecTygodnia date NULL 
);


ALTER TABLE Agenci 
        ADD CONSTRAINT Agenci_PK PRIMARY KEY 
        (
                IDAgenta
        );

CREATE  INDEX KodPocztowyAgenta ON Agenci(KodPocztowyAgenta);

ALTER TABLE Klienci 
        ADD CONSTRAINT Klienci_PK PRIMARY KEY
        (
                IDKlienta
        );

CREATE  INDEX KodPocztowyKlienta ON Klienci(KodPocztowyKlienta);

ALTER TABLE Imprezy 
        ADD CONSTRAINT Imprezy_PK PRIMARY KEY         (
                NumerImprezy
        );

CREATE  INDEX AgenciImprezy ON Imprezy(IDAgenta);

CREATE  INDEX KlienciImprezy ON Imprezy(IDKlienta);

CREATE INDEX Imprezy_IDPracownika ON Imprezy(IDAgenta);

CREATE  INDEX WykonawcyImprezy ON Imprezy(IDWykonawcy);

ALTER TABLE Czlonkowie_zespolu 
        ADD CONSTRAINT Czlonkowie_zespolu_PK PRIMARY KEY
        (
                IDWykonawcy,
                IDCzlonka
        );

CREATE  INDEX WykonawcyWykonawcaCzlonkowie ON Czlonkowie_zespolu(IDWykonawcy);

CREATE  INDEX CzlonkowieWykonawcaCzlonkowie ON Czlonkowie_zespolu(IDCzlonka);

ALTER TABLE Style_wykonawcow 
        ADD CONSTRAINT Style_wykonawcow_PK PRIMARY KEY 
        (
                IDWykonawcy, 
                IDStylu
        );

CREATE  INDEX WykonawcyWykonawcaStyles ON Style_wykonawcow(IDWykonawcy);

CREATE  INDEX StyleMuzyczneStyleWyk ON Style_wykonawcow(IDStylu);

ALTER TABLE Wykonawcy 
        ADD CONSTRAINT Wykonawcy_PK PRIMARY KEY 
        (
                IDWykonawcy
        );

CREATE  UNIQUE  INDEX IDWykonawcy ON Wykonawcy(IDWykonawcy);

CREATE  INDEX KodPocztowyWykonawcy ON Wykonawcy(KodPocztowyWykonawcy);

ALTER TABLE Czlonkowie 
        ADD CONSTRAINT Czlonkowie_PK PRIMARY KEY 
        (
                IDCzlonka
        );

CREATE  INDEX IDCzlonka ON Czlonkowie(IDCzlonka);

ALTER TABLE Gusty_muzyczne 
        ADD CONSTRAINT Gusty_muzyczne_PK PRIMARY KEY 
        (
                IDKlienta, 
                IDStylu
        );

CREATE  INDEX KlienciMuzykaalPreferences ON Gusty_muzyczne(IDKlienta);

CREATE  INDEX IDStylu ON Gusty_muzyczne(IDStylu);

ALTER TABLE Style_muzyczne 
        ADD CONSTRAINT Style_muzyczne_PK PRIMARY KEY 
        (
                IDStylu
        );

ALTER TABLE ztblDni ADD 
        CONSTRAINT ztblDni_PK PRIMARY KEY 
        ( 
                PoleDaty 
        );


ALTER TABLE ztblMiesiace ADD 
        CONSTRAINT ztblMiesiace_PK PRIMARY KEY 
        ( 
                NumerRoku, 
                NumerMiesiaca
        );


 CREATE UNIQUE INDEX ztblMiesiace_KoniecMiesiaca ON ztblMiesiace(KoniecMiesiaca) ;


 CREATE UNIQUE INDEX ztblMiesiace_PoczatekMiesiaca ON ztblMiesiace(PoczatekMiesiaca) ;


 CREATE UNIQUE INDEX ztblMiesiace_MiesiacRok ON ztblMiesiace(MiesiacRok) ;


ALTER TABLE ztblPomijanieEtykiet ADD 
        CONSTRAINT ztblPomijanieEtykiet_PK PRIMARY KEY 
        (
                LicznikEtykiet 
        ) ;


ALTER TABLE ztblTygodnie ADD 
        CONSTRAINT ztblTygodnie_PK PRIMARY KEY 
        ( 
                PoczatekTygodnia 
        ) ;


ALTER TABLE Imprezy 
        ADD CONSTRAINT Imprezy_FK00 FOREIGN KEY 
        (
                IDAgenta
        ) REFERENCES Agenci (
                IDAgenta
        ),
        ADD CONSTRAINT Imprezy_FK01 FOREIGN KEY 
        (
                IDKlienta
        ) REFERENCES Klienci (
                IDKlienta
        ),
        ADD CONSTRAINT Imprezy_FK02 FOREIGN KEY 
        (
                IDWykonawcy
        ) REFERENCES Wykonawcy (
                IDWykonawcy
        );

ALTER TABLE Czlonkowie_zespolu 
        ADD CONSTRAINT Czlonkowie_zespolu_FK00 FOREIGN KEY 
        (
                IDWykonawcy
        ) REFERENCES Wykonawcy (
                IDWykonawcy
        ),
        ADD CONSTRAINT Czlonkowie_zespolu_FK01 FOREIGN KEY 
        (
                IDCzlonka
        ) REFERENCES Czlonkowie (
                IDCzlonka
        );

ALTER TABLE Style_wykonawcow 
        ADD CONSTRAINT Style_wykonawcow_FK00 FOREIGN KEY 
        (
                IDWykonawcy
        ) REFERENCES Wykonawcy (
                IDWykonawcy
        ),
        ADD CONSTRAINT Style_wykonawcow_FK01 FOREIGN KEY 
        (
                IDStylu
        ) REFERENCES Style_muzyczne (
                IDStylu
        );

ALTER TABLE Gusty_muzyczne 
        ADD CONSTRAINT Gusty_muzyczne_FK00 FOREIGN KEY 
        (
                IDKlienta
        ) REFERENCES Klienci (
                IDKlienta
        ),
        ADD CONSTRAINT Gusty_muzyczne_FK01 FOREIGN KEY 
        (
                IDStylu
        ) REFERENCES Style_muzyczne (
                IDStylu
        );
