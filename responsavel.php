<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "responsavel";

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
    $email = $_POST["email"];
    $senha = $_POST["senha"];
    $telefone = $_POST["telefone"];

    $query = "insert into responsavel (id, nome, email, senha, telefone) values (null, '$nome', '$email', '$senha', '$telefone')";
    $result = mysqli_query($conn, $query);

    if($result){
        echo "ok";
    } else {
        echo "error";
    }

?>
