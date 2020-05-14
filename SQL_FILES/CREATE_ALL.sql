CREATE TABLE Dane( 
    id_dane NUMBER(6) CONSTRAINT Dane_PK PRIMARY KEY,
    imie VARCHAR2(20) NOT NULL,
    nazwisko VARCHAR2(20) NOT NULL,
    wiek NUMBER(3),
    numer_telefonu NUMBER(9) UNIQUE CHECK(length(numer_telefonu)=9) ,
    email VARCHAR2(30) UNIQUE,
    haslo VARCHAR2(20) CHECK(length(haslo)>=8),
    login VARCHAR2(20) UNIQUE,
    Constraint login_email CHECK (email != login)
);

CREATE TABLE Pracownicy( 
    id_pracownicy NUMBER(6) CONSTRAINT Pracownik_PK PRIMARY KEY,
    wynagrodzenie NUMBER(6),
    zawod VARCHAR2(25),
    id_dane NUMBER(6) NOT NULL CONSTRAINT Dane_Pracownik REFERENCES Dane(id_dane) 
);


CREATE TABLE Produkty(
    id_produkt NUMBER(6) CONSTRAINT Produkt_PK PRIMARY KEY,
    rodzaj_produktu VARCHAR2(20),
    cena NUMBER(6),
    nazwa_produktu VARCHAR2(20),
    wielkosc_produktu VARCHAR(20)
);

CREATE TABLE Miejsce(
    id_miejsce NUMBER(6) CONSTRAINT Miejsce_PK PRIMARY KEY,
    numer_miejsca NUMBER,
    rzad NUMBER
);



CREATE TABLE Film(
    id_film NUMBER(6) CONSTRAINT Film_PK PRIMARY KEY,
    tytul VARCHAR2(60),
    gatunek VARCHAR2(40),
    rok_premiery NUMBER(4),
    rezyser NUMBER(6)
);

CREATE TABLE Sala(
    id_sala NUMBER(6) CONSTRAINT Sala_PK PRIMARY KEY,
    ilosc_miejsc NUMBER(6),
    numer_sali NUMBER(6)
);

CREATE TABLE Seans(
    id_seans NUMBER(6) CONSTRAINT Seans_PK PRIMARY KEY,
    ograniczenie_wiekowe NUMBER(2),
    data_seansu DATE,
    wymiar VARCHAR2(2),
    wersja_jezykowa VARCHAR2(20),
    id_film NUMBER(6) NOT NULL CONSTRAINT Film_Seans REFERENCES Film(id_film),
    id_sala NUMBER(6) NOT NULL CONSTRAINT Sala_Seans REFERENCES Sala(id_sala)
);

CREATE TABLE Klient(
    id_klient NUMBER(6) CONSTRAINT Klient_PK PRIMARY KEY,
    id_dane NUMBER(6) NOT NULL CONSTRAINT Dane_Klient REFERENCES Dane(id_dane)  
);
CREATE  TABLE Bilet(
    id_bilet NUMBER(6) CONSTRAINT Bilet_PK PRIMARY KEY,
    cena NUMBER(6),
    rodzaj_biletu VARCHAR2(20) Constraint ograniczenie_biletu CHECK (rodzaj_biletu ='ulgowy' or rodzaj_biletu ='Ulgowy'
    or rodzaj_biletu ='normalny' or rodzaj_biletu ='Normalny' or rodzaj_biletu ='grupowy' or rodzaj_biletu ='Grupowy'),
    id_miejsce NUMBER(6) NOT NULL CONSTRAINT Miejsce_Bilet REFERENCES Miejsce(id_miejsce),
    id_seans NUMBER(6) NOT NULL CONSTRAINT Seans_Bilet REFERENCES Seans(id_seans),
    id_klient NUMBER(6) NOT NULL CONSTRAINT Klient_Bilet REFERENCES Klient(id_klient) 
);
create table klient_produkty(
    id_klient_produkty Number(6) constraint Klient_Produkty_PK PRIMARY KEY,
    id_klient NUMBER(6) NOT NULL CONSTRAINT Klient_Klient_Produkty REFERENCES Klient(id_klient),
    id_produkt NUMBER(6) NOT NULL CONSTRAINT Produkt_Klient_Produkty REFERENCES Produkty(id_produkt)
);

create table dane_film(
    id_dane_film Number(6) constraint dane_film_PK PRIMARY KEY,
    id_dane NUMBER(6) NOT NULL CONSTRAINT dane_dane_film REFERENCES dane(id_dane),
    id_film NUMBER(6) NOT NULL CONSTRAINT film_dane_film REFERENCES film(id_film)
);
-----------Sekwencje


Create Sequence dane_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence pracownicy_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence produkty_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence miejsce_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence bilet_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence film_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence sala_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence seans_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence klient_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence klient_produkty_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

Create Sequence dane_film_sequence
minvalue 1
maxvalue 9999
start with 1
increment by 1;

--------WYZWALACZE
--------------------------------PRACOWNICY
Create or replace trigger pracownicy_trigger
before insert or update or delete on PRACOWNICY
for each row
declare
old_zawod varchar2(25);
begin
if inserting then 
dbms_output.put_line('Wykonano dodawanie danych do tabeli PRACOWNICY');
old_zawod:=:new.zawod;
:new.zawod:=upper(:new.zawod);
dbms_output.put_line('Wprowadzona nazwa zawodu: '||old_zawod||' Zmieniono na: '||:new.zawod);
end if;
if updating then
dbms_output.put_line('Wykonano aktualizowanie danych w tabeli PRACOWNICY');
end if;
if deleting then
dbms_output.put_line('Wykonano usuwanie danych w tabeli PRACOWNICY');
end if;
end;
/
--------------------------DANE
Create or replace trigger dane_trigger
before insert or update or delete on DANE
for each row
declare
old_imie varchar2(25);
old_nazwisko varchar2(25);
begin
if inserting then 
dbms_output.put_line('Wykonano dodawanie danych do tabeli DANE');
old_imie:=:new.imie;
:new.imie:=upper(:new.imie);
old_nazwisko:=:new.nazwisko;
:new.nazwisko:=upper(:new.nazwisko);
dbms_output.put_line('Wprowadzono Imie: '||old_imie||' Zmieniono na: '||:new.imie);
dbms_output.put_line('Wprowadzono Nazwisko: '||old_nazwisko||' Zmieniono na: '||:new.nazwisko);
end if;
if updating then
dbms_output.put_line('Wykonano aktualizowanie danych w tabeli DANE');
dbms_output.put_line('Wprowadzono Imie: '||old_imie||' Zmieniono na: '||:new.imie);
dbms_output.put_line('Wprowadzono Nazwisko: '||old_nazwisko||' Zmieniono na: '||:new.nazwisko);
end if;
if deleting then
dbms_output.put_line('Wykonano usuwanie danych w tabeli DANE');
end if;
end;
/
----------------DANE_FILM
Create or replace trigger dane_film_trigger
before insert or update or delete on DANE_FILM
for each row
begin
if inserting then 
dbms_output.put_line('Wykonano dodawanie danych do tabeli DANE_FILM');
end if;
if updating then
dbms_output.put_line('Wykonano aktualizowanie danych w tabeli DANE_FILM');
end if;
if deleting then
dbms_output.put_line('Wykonano usuwanie danych w tabeli DANE_FILM');
end if;
end;
/
--------------------------film
Create or replace trigger film_trigger
before insert or update or delete on FILM
for each row
declare
old_tytul varchar2(60);
old_gatunek varchar2(40);
begin
if inserting then 
dbms_output.put_line('Wykonano dodawanie danych do tabeli FILM');
old_tytul:=:new.tytul;
:new.tytul:=upper(:new.tytul);
old_gatunek:=:new.gatunek;
:new.gatunek:=upper(:new.gatunek);
dbms_output.put_line('Wprowadzony Tytul: '||old_tytul||' Zmieniono na: '||:new.tytul);
dbms_output.put_line('Wprowadzony Gatunek: : '||old_gatunek||' Zmieniono na: '||:new.gatunek);
end if;
if updating then
dbms_output.put_line('Wykonano aktualizowanie danych w tabeli FILM');
dbms_output.put_line('Wprowadzony Tytul: '||old_tytul||' Zmieniono na: '||:new.tytul);
dbms_output.put_line('Wprowadzony Gatunek: : '||old_gatunek||' Zmieniono na: '||:new.gatunek);
end if;
if deleting then
dbms_output.put_line('Wykonano usuwanie danych w tabeli FILM');
end if;
end;
/
----------------------PRODUKTY
Create or replace trigger produkty_trigger
before insert or update or delete on PRODUKTY
for each row
declare
old_rodzaj_produktu varchar2(25);
old_nazwa_produktu varchar2(25);
old_wielkosc_produktu varchar2(25);
begin
if inserting then 
dbms_output.put_line('Wykonano dodawanie danych do tabeli PRODUKTY');
old_rodzaj_produktu:=:new.rodzaj_produktu;
:new.rodzaj_produktu:=upper(:new.rodzaj_produktu);
old_nazwa_produktu:=:new.nazwa_produktu;
:new.nazwa_produktu:=upper(:new.nazwa_produktu);
old_wielkosc_produktu:=:new.wielkosc_produktu;
:new.wielkosc_produktu:=upper(:new.wielkosc_produktu);
dbms_output.put_line('Wprowadzony Rodzaj produktu: '||old_rodzaj_produktu||' Zmieniono na: '||:new.rodzaj_produktu);
dbms_output.put_line('Wprowadzona Nazwa produktu: '||old_nazwa_produktu||' Zmieniono na: '||:new.nazwa_produktu);
dbms_output.put_line('Wprowadzona Wielkosc produktu: '||old_wielkosc_produktu||' Zmieniono na: '||:new.wielkosc_produktu);
end if;
if updating then
dbms_output.put_line('Wykonano aktualizowanie danych w tabeli PRODUKTY');
dbms_output.put_line('Wprowadzony Rodzaj produktu: '||old_rodzaj_produktu||' Zmieniono na: '||:new.rodzaj_produktu);
dbms_output.put_line('Wprowadzona Nazwa produktu: '||old_nazwa_produktu||' Zmieniono na: '||:new.nazwa_produktu);
dbms_output.put_line('Wprowadzona Wielkosc produktu: '||old_wielkosc_produktu||' Zmieniono na: '||:new.wielkosc_produktu);
end if;
if deleting then
dbms_output.put_line('Wykonano usuwanie danych w tabeli PRODUKTY');
end if;
end;
/
----------------------SEANS
Create or replace trigger seans_trigger
before insert or update or delete on SEANS
for each row
declare
old_wymiar varchar2(2);
old_wersja_jezykowa varchar2(25);
begin
if inserting then 
dbms_output.put_line('Wykonano dodawanie danych do tabeli SEANS');
old_wymiar:=:new.wymiar;
:new.wymiar:=upper(:new.wymiar);
old_wersja_jezykowa:=:new.wersja_jezykowa;
:new.wersja_jezykowa:=upper(:new.wersja_jezykowa);
dbms_output.put_line('Wprowadzony Wymiar: '||old_wymiar||' Zmieniono na: '||:new.wymiar);
dbms_output.put_line('Wprowadzona Wersja_jezykowa: '||old_wersja_jezykowa||' Zmieniono na: '||:new.wersja_jezykowa);

end if;
if updating then
dbms_output.put_line('Wykonano aktualizowanie danych w tabeli SEANS');
dbms_output.put_line('Wprowadzony Wymiar: '||old_wymiar||' Zmieniono na: '||:new.wymiar);
dbms_output.put_line('Wprowadzona Wersja_jezykowa: '||old_wersja_jezykowa||' Zmieniono na: '||:new.wersja_jezykowa);
end if;
if deleting then
dbms_output.put_line('Wykonano usuwanie danych w tabeli SEANS');
end if;
end;
/




