SET ECHO ON

--Dane
ALTER TABLE Dane DROP (wiek);
ALTER TABLE Dane ADD (wiek NUMBER(3));
ALTER TABLE Dane MODIFY (nazwisko VARCHAR2(20) CONSTRAINT dane_nazwisko_n NULL );
ALTER TABLE Dane MODIFY (nazwisko VARCHAR2(20) CONSTRAINT dane_nazwisko_nn NOT NULL );
Alter table dane drop constraint login_email;
Alter table dane add constraint login_email CHECK (email != login);

--Pracownicy
ALTER TABLE Pracownicy DROP (wynagrodzenie);
ALTER TABLE Pracownicy ADD (wynagrodzenie NUMBER(6));
ALTER TABLE Pracownicy MODIFY (zawod VARCHAR2(40) CONSTRAINT pracownicy_zawod_nn NOT NULL );
ALTER TABLE Pracownicy MODIFY (zawod VARCHAR2(40) CONSTRAINT pracownicy_zawod_n NULL );
Alter table Pracownicy drop constraint Pracownik_PK;
Alter table Pracownicy add constraint Pracownik_PK PRIMARY KEY (id_pracownicy);

--Produkty
ALTER TABLE Produkty DROP (rodzaj_produktu);
ALTER TABLE Produkty ADD (rodzaj_produktu VARCHAR2(20));
ALTER TABLE Produkty MODIFY (cena VARCHAR2(20) CONSTRAINT produkty_cena_nn NOT NULL );
Alter table Klient_Produkty drop constraint Produkt_Klient_Produkty;
Alter table Produkty drop constraint Produkt_PK;
Alter table Produkty add constraint Produkt_PK PRIMARY KEY (id_produkt);
Alter table klient_produkty add constraint Produkt_Klient_Produkty FOREIGN KEY (id_produkt) References Produkty(id_produkt);

--Miejsce
ALTER TABLE Miejsce DROP (rzad);
ALTER TABLE Miejsce ADD (rzad NUMBER);
ALTER TABLE Miejsce MODIFY (numer_miejsca NUMBER CONSTRAINT miejsce_numer_miejsca_nn NOT NULL );
Alter table Bilet drop constraint Miejsce_Bilet;
Alter table Miejsce drop constraint Miejsce_PK;
Alter table Miejsce add constraint Miejsce_PK PRIMARY KEY (id_miejsce) ;
Alter table bilet add constraint Miejsce_Bilet FOREIGN KEY (id_miejsce) References Miejsce(id_miejsce);

--Sala
ALTER TABLE Sala DROP (numer_sali);
ALTER TABLE Sala ADD (numer_sali NUMBER);
ALTER TABLE Sala MODIFY (ilosc_miejsc NUMBER(6) CONSTRAINT sala_ilosc_miejsc_nn NOT NULL );
Alter table Seans drop constraint Sala_Seans;
Alter table Sala drop constraint Sala_PK;
Alter table Sala add constraint Sala_PK PRIMARY KEY (id_sala);
Alter table Seans add constraint Sala_Seans FOREIGN KEY (id_sala) References Sala(id_sala);

--Seans
ALTER TABLE Seans DROP (wersja_jezykowa);
ALTER TABLE Seans ADD (wersja_jezykowa VARCHAR2(20));
ALTER TABLE Seans MODIFY (wymiar VARCHAR2(2) CONSTRAINT seans_wymiar_nn NOT NULL );
Alter table Bilet drop constraint Seans_Bilet;

Alter table Seans drop constraint Seans_PK;
Alter table Seans add constraint Seans_PK PRIMARY KEY (id_seans);
Alter table Bilet add constraint Seans_Bilet FOREIGN KEY (id_seans) References Seans(id_seans);

--Bilet
ALTER TABLE Bilet DROP (rodzaj_biletu);
ALTER TABLE Bilet ADD (rodzaj_biletu VARCHAR2(20));
ALTER TABLE Bilet MODIFY (cena NUMBER CONSTRAINT bilet_cena_nn NOT NULL );
Alter table Bilet drop constraint Seans_Bilet;
Alter table Bilet drop constraint Bilet_PK;
Alter table Bilet add constraint Bilet_PK PRIMARY KEY (id_bilet);


SET ECHO OFF