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





