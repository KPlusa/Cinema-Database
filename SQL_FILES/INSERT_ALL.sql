---------------------DANE----------------------------------------
INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Jan','Kowalski',18,742712372,'jankowalski@wp.pl','qwerty123','jankowalski');

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Jan','Nowak',17,792321442,'jannowak@o2.pl','abcdef123','jannowak');

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Karol','Krawczyk',36,510231123,'karolm@wp.pl','karolek123','karolm123');

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Krzysztof','Zieliñski',19,512444321,'krzychu88@gmail.com','krzychu123','krzysiekz32');

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Maciej','Owca',25,514212654,'owca84@gmail.com','owca1235','maciekowca123');

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Adrian','Nowak',23,789457123,NULL,NULL,NULL);

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Aleksandra','Motyka',23,774589357,NULL,NULL,NULL);

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Monika','Kowalczyk',27,881478963,NULL,NULL,NULL);

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Robert','Dachowicz',  31,607894234,NULL,NULL,NULL);

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Piotr','Lesiak',17,NULL,NULL,NULL,NULL);

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Krzysztof','Lubecki',37,777978457,NULL,NULL,NULL);

INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Krzysztof','Lubecki',48,886112347,NULL,NULL,NULL);


---Re¿yserzy
--jak zostalem gangsterem. Historia prawdziwa
INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Maciej','Kowulski',40,NULL,NULL,NULL,NULL);

--Kobiety Mafii
INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Patryk','Vega',43,NULL,NULL,NULL,NULL);

--Jumanji: Nastêpny poziom
INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Jake','Kasdan',45,NULL,NULL,NULL,NULL);

--Oficer i Szpieg
INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Roman','Polanski',86,NULL,NULL,NULL,NULL);

--The Lighthouse
INSERT INTO Dane (id_dane,imie,nazwisko,wiek,numer_telefonu,email,haslo,login)
VALUES (dane_sequence.nextval,'Robert','Eggers',36,NULL,NULL,NULL,NULL);





-----------------PRACOWNICY------------------
INSERT INTO Pracownicy (id_pracownicy, wynagrodzenie, zawod, id_dane)
VALUES (PRACOWNICY_SEQUENCE.nextval,2768.00,'Kasjer',6);
INSERT INTO Pracownicy (id_pracownicy, wynagrodzenie, zawod, id_dane)
VALUES (PRACOWNICY_SEQUENCE.nextval,2864.00,'Kontroler Biletow',7);
INSERT INTO Pracownicy (id_pracownicy, wynagrodzenie, zawod, id_dane)
VALUES (PRACOWNICY_SEQUENCE.nextval,7987.00,'Dyrektor Kina',11);
INSERT INTO Pracownicy (id_pracownicy, wynagrodzenie, zawod, id_dane)
VALUES (PRACOWNICY_SEQUENCE.nextval,2431.00,'Pracownik Sprzatajacy',8);
INSERT INTO Pracownicy (id_pracownicy, wynagrodzenie, zawod, id_dane)
VALUES (PRACOWNICY_SEQUENCE.nextval,4345.00,'Kierownik Zmiany',9);

-------------------PRODUKTY------------------------
INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',4,'Pepsi','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',6,'Pepsi','Sredni');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',8,'Pepsi','Duzy');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',4,'Mirinda','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',6,'Mirinda','Sredni');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',8,'Mirinda','Duzy');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',5,'Nachosy','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',7.5,'Nachosy','Sredni');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',10,'Nachosy','Duzy');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',6,'Popcorn','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',8.5,'Popcorn','Sredni');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',10.5,'Popcorn','Duzy');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',4,'Zelki','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'Przek¹ska',6,'Zelki','Sredni');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',3,'Woda Mineralna','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',5.50,'Sok Jablkowy','Maly');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',7.50,'Sok Jablkowy','Sredni');

INSERT INTO Produkty (id_produkt, rodzaj_produktu, cena, nazwa_produktu, wielkosc_produktu )
VALUES (PRODUKTY_SEQUENCE.nextval,'napoj',9.50,'Sok Jablkowy','Duzy');

-----------------MIEJSCE-------------------
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,1,1);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,2,1);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,3,1);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,4,1);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,5,1);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,1,2);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,2,2);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,3,2);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,4,2);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,5,2);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,1,3);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,2,3);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,3,3);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,4,3);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,5,3);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,1,4);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,2,4);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,3,4);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,4,4);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,5,4);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,1,5);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,2,5);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,3,5);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,4,5);
INSERT INTO Miejsce(id_miejsce, numer_miejsca, rzad)
VALUES(MIEJSCE_SEQUENCE.nextval,5,5);




------------------Sala-----------------------
INSERT INTO Sala (id_sala, ilosc_miejsc, numer_sali)
VALUES (SALA_SEQUENCE.nextval, 100, 1);
INSERT INTO Sala (id_sala, ilosc_miejsc, numer_sali)
VALUES (SALA_SEQUENCE.nextval, 100, 2);
INSERT INTO Sala (id_sala, ilosc_miejsc, numer_sali)
VALUES (SALA_SEQUENCE.nextval, 200, 3);
INSERT INTO Sala (id_sala, ilosc_miejsc, numer_sali)
VALUES (SALA_SEQUENCE.nextval, 100, 4);
INSERT INTO Sala (id_sala, ilosc_miejsc, numer_sali)
VALUES (SALA_SEQUENCE.nextval, 200, 5);

-------------Film----------------
INSERT INTO Film(id_film, tytul, gatunek, rok_premiery, rezyser)
values (FILM_SEQUENCE.nextval,'Jak zostalem gangsterem. Historia prawdziwa','Film Sensacyjny',2020,13);

INSERT INTO Film(id_film, tytul, gatunek, rok_premiery, rezyser)
values (FILM_SEQUENCE.nextval,'Kobiety Mafii','Dramat/Krymina³',2018,14);

INSERT INTO Film(id_film, tytul, gatunek, rok_premiery, rezyser)
values (FILM_SEQUENCE.nextval,'Jumanji: Nastêpny poziom','Film fantasy/Film akcji',2019,15);

INSERT INTO Film(id_film, tytul, gatunek, rok_premiery, rezyser)
values (FILM_SEQUENCE.nextval,'Oficer i Szpieg','Dramat/Film historyczny ',2019,16);

INSERT INTO Film(id_film, tytul, gatunek, rok_premiery, rezyser)
values (FILM_SEQUENCE.nextval,'The Lighthouse','Dramat/Film fantasy',2019,17);


--------------Seans------------
INSERT INTO Seans(id_seans, ograniczenie_wiekowe, data_seansu, wymiar, wersja_jezykowa, id_film, id_sala)
VALUES(SEANS_SEQUENCE.nextval,12,TO_DATE('09.01.2020', 'DD.MM.YYYY'),'2D','polski',1,5);

INSERT INTO Seans(id_seans, ograniczenie_wiekowe, data_seansu, wymiar, wersja_jezykowa, id_film, id_sala)
VALUES(SEANS_SEQUENCE.nextval,7,TO_DATE('12.01.2020', 'DD.MM.YYYY'),'3D','polski',3,4);

INSERT INTO Seans(id_seans, ograniczenie_wiekowe, data_seansu, wymiar, wersja_jezykowa, id_film, id_sala)
VALUES(SEANS_SEQUENCE.nextval,18,TO_DATE('14.01.2020', 'DD.MM.YYYY'),'2D','polski',5,2);

INSERT INTO Seans(id_seans, ograniczenie_wiekowe, data_seansu, wymiar, wersja_jezykowa, id_film, id_sala)
VALUES(SEANS_SEQUENCE.nextval,12,TO_DATE('06.01.2020', 'DD.MM.YYYY'),'2D','polski',2,1);

INSERT INTO Seans(id_seans, ograniczenie_wiekowe, data_seansu, wymiar, wersja_jezykowa, id_film,  id_sala)
VALUES(SEANS_SEQUENCE.nextval,12,TO_DATE('03.01.2020', 'DD.MM.YYYY'),'2D','angielski',4,3);



--------------KLIENT----------------
INSERT INTO KLIENT(id_klient, id_dane)
VALUES(KLIENT_SEQUENCE.nextval, 1);
INSERT INTO KLIENT(id_klient, id_dane)
VALUES(KLIENT_SEQUENCE.nextval, 2);
INSERT INTO KLIENT(id_klient, id_dane)
VALUES(KLIENT_SEQUENCE.nextval, 3);
INSERT INTO KLIENT(id_klient, id_dane)
VALUES(KLIENT_SEQUENCE.nextval, 4);
INSERT INTO KLIENT(id_klient, id_dane)
VALUES(KLIENT_SEQUENCE.nextval, 5);
INSERT INTO KLIENT(id_klient, id_dane)
VALUES(KLIENT_SEQUENCE.nextval, 10);


-------------BILETY--------------------
INSERT INTO Bilet (id_bilet, cena, rodzaj_biletu, id_miejsce,id_seans,id_klient)
VALUES (BILET_SEQUENCE.nextval, 14.99, 'ulgowy', 4,1,1);
INSERT INTO Bilet (id_bilet, cena, rodzaj_biletu, id_miejsce,id_seans,id_klient)
VALUES (BILET_SEQUENCE.nextval, 14.99, 'ulgowy', 17,1,2);
INSERT INTO Bilet (id_bilet, cena, rodzaj_biletu, id_miejsce,id_seans,id_klient)
VALUES (BILET_SEQUENCE.nextval, 21.99, 'normalny', 13,4,3);
INSERT INTO Bilet (id_bilet, cena, rodzaj_biletu, id_miejsce,id_seans,id_klient)
VALUES (BILET_SEQUENCE.nextval, 21.99, 'normalny', 16,3,4);
INSERT INTO Bilet (id_bilet, cena, rodzaj_biletu, id_miejsce,id_seans,id_klient)
VALUES (BILET_SEQUENCE.nextval, 21.99, 'normalny', 7,4,5);
INSERT INTO Bilet (id_bilet, cena, rodzaj_biletu, id_miejsce,id_seans,id_klient)
VALUES (BILET_SEQUENCE.nextval, 14.99, 'ulgowy', 11,2,6);


------------------------KLIENT_PRODUKTY---------------
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,1,4);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,1,11);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,2,6);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,3,7);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,3,17);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,3,18);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,4,1);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,4,2);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,4,8);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,5,10);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,5,15);
INSERT INTO klient_produkty(id_klient_produkty, id_klient, id_produkt)
VALUES(KLIENT_PRODUKTY_SEQUENCE.nextval,6,15);

------------------------DANE_FILM---------------
INSERT INTO dane_film(id_dane_film, id_dane, id_film)
VALUES(DANE_FILM_SEQUENCE.nextval,13,1);
INSERT INTO dane_film(id_dane_film, id_dane, id_film)
VALUES(DANE_FILM_SEQUENCE.nextval,14,2);
INSERT INTO dane_film(id_dane_film, id_dane, id_film)
VALUES(DANE_FILM_SEQUENCE.nextval,15,3);
INSERT INTO dane_film(id_dane_film, id_dane, id_film)
VALUES(DANE_FILM_SEQUENCE.nextval,16,4);
INSERT INTO dane_film(id_dane_film, id_dane, id_film)
VALUES(DANE_FILM_SEQUENCE.nextval,17,5);





