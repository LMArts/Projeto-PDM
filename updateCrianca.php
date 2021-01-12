<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "crianca";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $id=$_POST["_id"];
    $nome=$_POST["nome"];
    $dataNasc=$_POST["dataNasc"];
    $sexo=$_POST["sexo"];
    $descricao=$_POST["descricao"];
    
    $query = "UPDATE crianca SET nome='$nome', dataNasc='$dataNasc',sexo='$sexo',descricao='$descricao' WHERE id='$id'";

    $result = mysqli_query($conn, $query);

    if($result){
        echo "ok";
    } else {
        echo "erro";
    }

?>
