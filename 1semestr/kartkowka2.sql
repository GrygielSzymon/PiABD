SELECT imprezy.NumerImprezy
FROM imprezy
WHERE YEAR(imprezy.DzienRozpoczecia) = 2017 AND MONTH(imprezy.DzienRozpoczecia) = 10


SELECT agenci.NazwiskoAgenta, agenci.ImieAgenta, agenci.TelefonAgenta
FROM agenci
WHERE agenci.TelefonAgenta LIKE "%1"
ORDER BY agenci.NazwiskoAgenta, agenci.ImieAgenta

SELECT klienci.ImieKlienta, klienci.NazwiskoKlienta, pracownicy.ImiePracownika, pracownicy.NazwiskoPracownika
FROM klienci, pracownicy
WHERE klienci.MiastoKlienta = pracownicy.MiastoPracownika
