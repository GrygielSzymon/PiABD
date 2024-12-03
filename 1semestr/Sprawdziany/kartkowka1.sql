--zad.1 z bazy Ptaki podaj wyniki obserwacji w pierwszych dziesięciu powiatach, usortowanych wg sumy liczebności obserwacji malejąco.

SELECT 
        gatunki.nazwa_zwyczajowa, obserwacje.liczebnosc, lokalizacje.powiat
FROM 
        gatunki
JOIN 
        obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
JOIN 
        lokalizacje ON obserwacje.ID_lokalizacji = lokalizacje.ID_lokalizacji
GROUP BY 
        obserwacje.liczebnosc DESC
LIMIT 
        10;

--zad.2 Znajdź w bazie danych AgencjaTurystyczna agentów z wartościami kontraktów w grudniu 2017r.

SELECT 
        agenci.ImieAgenta, agenci.NazwiskoAgenta, imprezy.WartoscKontraktu
FROM 
        agenci
JOIN 
        imprezy ON agenci.IDAgenta =	 imprezy.IDAgenta
WHERE 
        YEAR(imprezy.DzienRozpoczecia) = 2017 AND MONTH(imprezy.DzienRozpoczecia) = 12;

--zad.3 Zanjdź 3 najliiczniej reprezentowane gatunki ptaków których...

SELECT 
        gatunki.nazwa_zwyczajowa, obserwacje.liczebnosc, obserwacje.zachowanie
FROM 
        gatunki
JOIN 
        obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
WHERE 
        obserwacje.zachowanie = "plywa" AND gatunki.nazwa_zwyczajowa LIKE "k%"
GROUP BY 
        gatunki.nazwa_zwyczajowa DESC  
LIMIT 
        3
