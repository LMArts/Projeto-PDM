<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "crianca";

    //$action = $_GET['acao'];

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        return;
    } else {
        echo "ok";

    }

    $nome = $_POST["nome"];
    $dataNasc = $_POST["dataNasc"];
    $sexo = $_POST["sexo"];
    $descricao = $_POST["descricao"];

    $query = "insert into crianca (id, nome, dataNasc, sexo, descricao) values (null, '$nome', '$dataNasc', '$sexo', '$descricao')";
    $result = mysqli_query($conn, $query);

    if($result){
        echo "ok";
    } else {
        echo "error";
    }

?>
