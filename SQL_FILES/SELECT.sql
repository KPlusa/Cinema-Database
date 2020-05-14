--1. Wyswietlanie danych jesli pojawi sie takie same imie i nazwisko w tabeli dane i sortowanie rosnaco po id_dane
SELECT *
FROM dane d1 
WHERE 
  EXISTS ( 
   SELECT *
     FROM dane d2
     WHERE 
       d1.imie = d2.imie
       AND
       d1.nazwisko = d2.nazwisko
       AND 
       d1.id_dane <> d2.id_dane    
  )
ORDER BY id_dane ASC;

--2. Wyswietlanie danych o kliencie i jaka cene wydal kazdy klient na produkty i bilety
Select * from (Select dane.id_dane, dane.imie,dane.nazwisko,
                (select sum(cena) from produkty,klient_produkty
                        where produkty.id_produkt=klient_produkty.id_produkt
                        and klient.id_klient=klient_produkty.id_klient
                        )as koszt_produktow,
                            
                (select sum(cena) from bilet, klient
                        where bilet.id_klient=klient.id_klient
                        and klient.id_dane=dane.id_dane)as koszt_biletow
                            
from dane, klient
where dane.id_dane=klient.id_dane
order by koszt_produktow desc);

--3.Wyswietlanie danych o klientach ktorzy kupili wiecej produktow od sredniej kupionych produktow
select * from (select dane.id_dane, dane.imie as Imie, dane.nazwisko as Nazwisko, count(produkty.cena) as ilosc_kupionych_produktow from produkty
inner join klient_produkty on produkty.id_produkt = klient_produkty.id_produkt
inner join klient on klient_produkty.id_klient = klient.id_klient
inner join dane on klient.id_dane= dane.id_dane
group by dane.id_dane,dane.imie, dane.nazwisko ) where ilosc_kupionych_produktow > (select avg(count(produkty.cena)) from produkty
inner join klient_produkty on produkty.id_produkt = klient_produkty.id_produkt
inner join klient on klient_produkty.id_klient = klient.id_klient
inner join dane on klient.id_dane= dane.id_dane
group by dane.id_dane,dane.imie, dane.nazwisko )
order by ilosc_kupionych_produktow DESC;

--4. Ile biletow zostalo kupionych do seansu
SELECT seans.*,(select count(bilet.id_seans) from bilet
where bilet.id_seans=seans.id_seans )as ilosc_biletow
from seans, bilet
where bilet.id_seans=seans.id_seans
order by ilosc_biletow ASC;



--5. Ile razy produkty zostaly kupione
SELECT produkty.*, count(klient_produkty.id_produkt) as ile_razy_kupiono_produkt
FROM produkty,klient_produkty
WHERE produkty.id_produkt=klient_produkty.id_produkt
GROUP BY produkty.id_produkt, produkty.rodzaj_produktu, produkty.cena, produkty.nazwa_produktu, produkty.wielkosc_produktu
HAVING count(klient_produkty.id_produkt) >=0
Order by ile_razy_kupiono_produkt desc;

--6. Zysk ze sprzedazy biletow w pierwszym rzedzie w sali nr 5
SELECT SUM(bilet.cena) AS zysk FROM bilet
INNER JOIN miejsce ON bilet.id_miejsce = miejsce.id_miejsce
INNER JOIN seans ON bilet.id_seans = seans.id_seans
INNER JOIN sala ON seans.id_sala = sala.id_sala
WHERE (bilet.rodzaj_biletu = 'normalny' or bilet.rodzaj_biletu='ulgowy' or bilet.rodzaj_biletu = 'grupowy')
and miejsce.rzad = 1 and sala.numer_sali=5;

--7. Widok, ile biletow jest na seansie 2D i w sali wiekszej niz 100 miejsc
CREATE OR REPLACE VIEW SEANS_VIEW AS
SELECT  count(bilet.id_bilet) as Ile_biletow FROM bilet
INNER JOIN seans ON bilet.id_seans = seans.id_seans
INNER JOIN sala ON seans.id_sala = sala.id_sala
WHERE seans.wymiar='2D' and sala.ilosc_miejsc>=100;

SELECT* from SEANS_VIEW; 

--8. Warunki okreslajace status osob w bazie danych
SELECT dane.*,
CASE
WHEN dane.email is not null and dane.login is not null and dane.haslo is not null
then 'Uzytkownik ma konto online, kupiono bilet online'
WHEN dane.email is null and dane.login is null and dane.haslo is null and numer_telefonu is null
then 'Klient kupil bilet stacjonarnie'
else 'Pracownik'
END as STATUS
from Dane ;

--9. Dane o osobie ktory wydal najwiecej za produkt
CREATE OR REPLACE VIEW DANE_VIEW AS
SELECT * from (SELECT dane.imie,dane.nazwisko,dane.wiek, max(produkty.cena) as CENA FROM PRODUKTY
JOIN KLIENT_PRODUKTY ON produkty.id_produkt = KLIENT_PRODUKTY.id_produkt
JOIN KLIENT ON KLIENT_PRODUKTY.id_klient = KLIENT.id_klient
JOIN DANE ON KLIENT.id_dane = DANE.id_dane
GROUP by dane.imie,dane.nazwisko, dane.wiek) where cena = (select max(max(produkty.cena)) from produkty
JOIN KLIENT_PRODUKTY ON produkty.id_produkt = KLIENT_PRODUKTY.id_produkt
JOIN KLIENT ON KLIENT_PRODUKTY.id_klient = KLIENT.id_klient
JOIN DANE ON KLIENT.id_dane = DANE.id_dane
GROUP by dane.imie,dane.nazwisko, dane.wiek)
order by cena desc;

SELECT* from DANE_VIEW; 

--10. Widok wyswietlanie danych o seansach ktore odbyly sie od dnia 12.01.2020, w ktorych byla najmniejsza ilosc miejsc   
CREATE OR REPLACE VIEW SALA_VIEW AS
SELECT * from (SELECT seans.id_seans,seans.data_seansu, min(sala.ilosc_miejsc) as ILOSC_MIEJSC FROM SALA
JOIN SEANS ON SALA.id_sala = seans.id_sala
where seans.data_seansu>=TO_DATE('12/01/2020','DD/MM/YY')
GROUP by seans.id_seans,seans.data_seansu) where  ILOSC_MIEJSC = (select min(min(sala.ilosc_miejsc)) from SALA
JOIN SEANS ON SALA.id_sala = seans.id_sala
GROUP by seans.id_seans,seans.data_seansu)
order by ILOSC_MIEJSC desc;

SELECT *from SALA_VIEW;



                            
            


