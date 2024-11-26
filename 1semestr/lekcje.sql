--17.09.24

--zad.1
SELECT 
	klienci.ImieKlienta as imie, klienci.NazwiskoKlienta as nazwisko, imprezy.DzienRozpoczecia AS poczatek, nazwascenicznawykonawcy as kapela
FROM 
	klienci INNER JOIN imprezy ON klienci.IDKlienta = imprezy.IDKlienta
INNER JOIN 
	wykonawcy ON imprezy.IDWykonawcy = wykonawcy.IDWykonawcy
WHERE 
	nazwascenicznawykonawcy LIKE 'Modern Dance'
ORDER BY 
	Nazwisko

--zad.2 Dla wszystkich klientów wyszukaj miasto zamieszkania. Wykaz uporządkuj miastami oraz nazwiskami klientów

SELECT 
	klienci.MiastoKlienta as Miasto, imieklienta AS Imie, klienci.NazwiskoKlienta AS Nazwisko
ORDER BY 
	klienci.MiastoKlienta, klienci.NazwiskoKlienta

--zad.3 Dla wszystkich imprez w bazie danych wyznacz nasze honorarium jako 12% wartości kontraktu oraz wartosc netto kontraktu dla artysty jako różnicę wartości kontraktu i wypłaconego honorarium

SELECT 
	imprezy.WartoscKontraktu, imprezy.NumerImprezy, 
	imprezy.WartoscKontraktu * 0.12 AS NaszeHonorarium, 
    	imprezy.WartoscKontraktu - (imprezy.WartoscKontraktu * 0.12) AS WartoscNetto 

--zad.4 Sporządź wykaz imprez trwajacych wiecej niz dwa dni. Wykaz ma zawierac: numer imprezy, dzien rozpoczecia i zakonczenia.

SELECT 
	imprezy.NumerImprezy, imprezy.DzienRozpoczecia, imprezy.DzienZakonczenia
Where
	DATEDIFF(imprezy.DzienZakonczenia, imprezy.DzienRozpoczecia)  > 2;


--24.09.2024

--zad1 Sporządź wykaz wszystkich imprez z datami rozpoczęcia i zakończenia oraz wartością kontraktu i numerem imprezy, które całe odbyły się w październiku roku 2017
SELECT 
	imprezy.NumerImprezy, imprezy.DzienRozpoczecia, imprezy.DzienZakonczenia
FROM 	
	imprezy
WHERE 
	(MONTH(imprezy.DzienRozpoczecia) = 10 
	AND YEAR(imprezy.DzienRozpoczecia) = 2017)
	AND (MONTH(imprezy.DzienZakonczenia) = 10 
	AND YEAR(imprezy.DzienZakonczenia) = 2017)

--zad2 Wybierz wszystkich dostawców z miejscowości Ballard, Belevue oraz Redmond. Uporządkuj nazwy dostawców alfabetycznie
SELECT 
	   dostawcy.NazwaDostawcy, dostawcy.MiastoDostawcy
FROM 
	dostawcy
WHERE 
	dostawcy.MiastoDostawcy IN ("Ballard", "Bellevue", "Redmond")
ORDER BY 
	dostawcy.NazwaDostawcy

--zad4 Ile państw jest na każdym kontynencie
SELECT 
	Continent, COUNT(Code) AS IlePanstw
FROM 
	country 
GROUP BY 
	Continent 
ORDER BY 
	IlePanstw DESC

--zad5 W ilu krajach dany język jest językiem oficialnym
SELECT 
	LANGUAGE, COUNT(CountryCode) AS IlePanstwuzywa 
FROM 
	countrylanguage, country 
WHERE 
	IsOfficial="T" AND Continent="Europe" AND country.Code=countrylanguage.CountryCode 
GROUP BY 
	LANGUAGE 
ORDER BY 
	IlePanstwUzywa DESC

--zad6 Podaj dla każdego państwa w Ameryce Południowej łączną liczbę obywateli gdzie liczba mieszkańców przekracza 100tys
SELECT 
	country.Name, SUM(city.Population) AS IluObywateli
FROM 
	city, country
WHERE 
	Continent = "South America" AND city.Population>=100000 AND country.Code=city.CountryCode
GROUP BY 
	country.Name
ORDER BY 
	IluObywateli DESC

--zad7 Ile ptaków należących do każdego gatunku zaobserwowao? Ptaków którego gatunku było najwięcej
SELECT 
	gatunki.nazwa_zwyczajowa, SUM(liczebnosc) AS IlePtakow
FROM 
	gatunki, obserwacje 
WHERE 
	gatunki.ID_gatunku = obserwacje.ID_gatunku
GROUP BY 
	gatunki.nazwa_zwyczajowa
ORDER BY 
	IlePtakow DESC

--zad8 Jakich 10 gatunków  ptaków było obiektem najczęściej prowadzonych obserwacji przez ornitologów w powiecie Gdańskich?
SELECT 
	gatunki.nazwa_zwyczajowa, COUNT(obserwacje.poczatek) AS IleObserwacji
FROM 
	gatunki
JOIN 
	obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
JOIN 
	lokalizacje ON lokalizacje.ID_lokalizacji = obserwacje.ID_lokalizacji
WHERE 
	lokalizacje.powiat = 'gdanski'
GROUP BY 
	gatunki.nazwa_zwyczajowa
ORDER BY 
	IleObserwacji DESC
LIMIT 
	10;


--01.10.24

--zad.1 w którym powiecie liczba zaobserwowanych ptaków z gatunku dziencioł (lecz tylko tych osobników, które żerują w lesie) jest największa,a w którym najmniejsza?
SELECT 
	powiat, 
	SUM(obserwacje.liczebnosc) AS liczba_dzieciolow
FROM 
	gatunki, lokalizacje, obserwacje
WHERE 
    	zachowanie="zeruje" 
    	AND nazwa_zwyczajowa LIKE "dzieciol%" 
    	AND opis LIKE "%las%"
    	AND gatunki.ID_gatunku = obserwacje.ID_gatunku
    	AND lokalizacje.ID_lokalizacji = obserwacje.ID_lokalizacji 
GROUP BY 
    	powiat
ORDER BY 
   	liczba_dzieciolow DESC;


--08.10.24

--zad.1 Wyświelt z bazy danych Agencja Artystyczna: wartość sumaryczną WARTOSCIKONTRAKTU oraz wartość średnią WARTOSCIKONTRAKTU pogrupowane wg miasta Wykonawcy

SELECT
    SUM(imprezy.WartoscKontraktu), 
    AVG(imprezy.WartoscKontraktu)
FROM 
    imprezy
JOIN 
	wykonawcy ON imprezy.IDWykonawcy = wykonawcy.IDWykonawcy
GROUP BY 
    wykonawcy.MiastoWykonawcy;

--zad.2 Wyznacz  średnią Cenęhurtową dla dostawców produktu pogrupowaną wg miast dostawców. DB: ZamówieniaPrzykład

SELECT 
    dostawcy.MiastoDostawcy, 
    AVG(dostawcy_produktow.CenaHurtowa) AS SredniaCenaHurtowa
FROM 
    dostawcy_produktow
JOIN 
    dostawcy ON dostawcy_produktow.IDDostawcy = dostawcy.IDDostawcy
GROUP BY 
    dostawcy.MiastoDostawcy;

--zad.3 Podaj 10 najliczniejszych obserwacji zaewidencjonowanych w tabeli obserwacje uzyskanych funkcją agregującą
-- COUNT(liczebność) pogrupowanych nazwą zwyczajową gatunku. Uzyskane wyniki uporządkuj malejąco. BD:PTAKI

SELECT COUNT(obserwacje.liczebnosc) AS liczbnosc, gatunki.nazwa_zwyczajowa
FROM obserwacje, gatunki
WHERE obserwacje.ID_gatunku = gatunki.ID_gatunku
GROUP BY gatunki.nazwa_zwyczajowa
ORDER BY liczbnosc DESC
LIMIT 10

--zad.4 Dla wszystkich prodótów w tabeli PRODUKTY wyznacz(oblicz) liczbę dostawców każdego produktu 

SELECT 
	p.NazwaProduktu, COUNT(DISTINCT dp.IDDostawcy) AS LiczbaDostawców
FROM 
	produkty p
JOIN 
	dostawcy_produktow dp ON p.NumerProduktu = dp.NumerProduktu
GROUP BY 
	p.NazwaProduktu
LIMIT 
	0, 25;


--08.10.24

--zad.1 Podaj nazwy wszystich naszych dostawców 

SELECT 
	dostawcy.NazwaDostawcy
FROM 
	dostawcy

--zad.2 jakie są nazwy i ceny wszystkich produktów, jakie sprzedajemy

SELECT 
	produkty.NazwaProduktu, produkty.CenaDetaliczna
FROM 
	produkty

--zad.3 z jakich stanów pochodzą nasi klienci

SELECT 
	klienci.StanZamKlienta
FROM 
	klienci

--zad.4 Wskaż najdroższą książkę

SELECT 
	ksiazki.tytul, MAX(ksiazki.cena)
FROM 
	ksiazki

--zad.5 Wyświetl zamówienia ułożone od ostatniego dokonanego

SELECT 
	*
FROM 
	zamowienia
ORDER BY 
	zamowienia.data DESC	

--zad.6 dla wszyskich imprez wyznach nasze chonorarium jako 15% wartości kontraktu oraz wartosc netto kontraktu dla artysty jako różnicę wartości kontraktu i wypłaconego honorarium

SELECT 
	imprezy.WartoscKontraktu,
	imprezy.wartosckontraktu * 0.15 AS honorarium,
	imprezy.wartosckontraktu - (imprezy.wartosckontraktu * 0.15) AS wartosc_netto
FROM 
    	imprezy;


--08.10.24

UPDATE klienci SET klienci.nazwisko = "Psikuta"

--zad2
UPDATE ksiazki SET ksiazki.cena = ROUND(ksiazki.cena * 1.1,2)

--zad 3
UPDATE ksiazki SET ksiazki.cena = ksiazki.cena - 10
ORDER BY ksiazki.cena 
LIMIT 1

--zad 4
UPDATE klienci SET klienci.imie = "Joanna", klienci.nazwisko = "Dostojewska" 
WHERE klienci.idklienta = 10

--zad 5
UPDATE zamowienia SET zamowienia.status = "wyslano"
WHERE zamowienia.idzamowienia BETWEEN 4 AND 5


--zad 6
INSERT INTO klienci VALUES(NULL, "Franciszek", "Janowski", "Chorzów")


--zad 7
INSERT INTO zamowienia (zamowienia.idzamowienia, data, klienci.idklienta, ksiazki.idksiazki)
VALUES(NULL, "oczekiwanie", 7, 3)


--zad 8
INSERT INTO ksiazki (ksiazki.idksiazki, ksiazki.nazwiskoautora, ksiazki.tytul)
VALUES(NULL, "Grębosz", "Symfonia C++")


--zad 9
INSERT INTO klienci VALUES(NULL, "Marylin", "Mornoe","LA"), (NULL, "John", "Wayne", "LA") 
--insert into klienci SET idk = ..., imie= ..., ....

--zad 10
UPDATE klienci SET klienci.imie = "Władysław"
WHERE klienci.idklienta = 16


--zad 11
INSERT INTO klienci VALUES(NULL, "Agamemnon", "Listkowski", "Czarna Góra")


--zad 12
DELETE FROM klienci
WHERE klienci.idklienta > 10


--26.10.24

--zad.1 Dodanie użytkownika

CREATE USER Szymon IDENTIFIED BY "Hasło"
CREATE USER "Matka"@"localhost"IDENTIFIED BY "Hasło"

--zad.2 Usuwanie użytkownika 

DROP USER "Matka"@"localhost"

--zad.3 Zmaina hasła

SET PASSWORD = PASSWORD "Hasło zastępcze"

--zad.4 Pokazywanie listy użytkowników

SELECT USER, host, PASSWORD FROM mysql.user

--zad.5

