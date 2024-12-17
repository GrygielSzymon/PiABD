//17.12.2024

//1
<?php
// phpinfo();
echo "<h1>EoneNumberOne</h1>";
echo "</br></br></br></br></br></br></br>";
echo "AAA";

$host = "localhost";
$user = "root";
$password = "";
$db_name = "Agenc";

$connection_string = new mysqli($host, $user, $password, $db_name);

$query = "SELECT NazwaPrzepisu FROM Przepisy";

if($result = $connection_string->query($query))
    while($row=$result->fetch_array())
        echo $row["NazwaPrzepisu"].'<br>';

// $connection_string->close();
?>

//2 
