--zad.1
SELECT klienci.ImieKlienta as imie, klienci.NazwiskoKlienta as nazwisko, imprezy.DzienRozpoczecia AS poczatek, nazwascenicznawykonawcy as kapela
FROM klienci INNER JOIN imprezy
ON klienci.IDKlienta = imprezy.IDKlienta
INNER JOIN wykonawcy ON imprezy.IDWykonawcy = wykonawcy.IDWykonawcy
WHERE nazwascenicznawykonawcy LIKE 'Modern Dance'
ORDER BY Nazwisko

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
       
