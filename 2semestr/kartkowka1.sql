1. 
SELECT 
    YEAR(imprezy.DzienRozpoczecia) AS Rok,
    SUM(imprezy.WartoscKontraktu) AS SumaKontraktow,
    AVG(imprezy.WartoscKontraktu) AS SredniaKontraktow
FROM 
	  Imprezy
GROUP BY 
	  YEAR(imprezy.DzienRozpoczecia)
ORDER BY 
	  Rok;

2.
  
<?php

$db_addr = "localhost";
$usr = "root";
$passwd = "";
$db_name = "ptaki";

$con = new mysqli($db_addr,$usr,$passwd,$db_name);

$query = "SELECT nazwa_zwyczajowa FROM gatunki WHERE nazwa_zwyczajowa LIKE 'K%' ;";

if ($result = $con -> query($query))
    while($row = $result -> fetch_array())
        print( $row["nazwa_zwyczajowa"]."<br>" );
else
    print ($con->errno." ".$con->eror);

$con->close();

print ( "<br><br> connection closed successfully." );

?>

3.
SELECT 
    kategorie.OpisKategorii,
    COUNT(dane_zamowien.NumerZamowienia) AS LiczbaZamowien
FROM  
    Kategorie
JOIN 
    Produkty ON kategorie.IDKategorii = produkty.IDKategorii
JOIN 
    Dane_zamowien ON produkty.NumerProdukto = dane_zamowien.NumerProduktu
GROUP BY 
    kategorie.OpisKategorii
ORDER BY 
    LiczbaZamowien DESC
LIMIT 3;
