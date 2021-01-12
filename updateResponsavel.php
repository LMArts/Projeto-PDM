<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "responsavel";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $id=$_POST["_id"];
    $nome=$_POST["nome"];
    $email=$_POST["email"];
    $senha=$_POST["senha"];
    $telefone=$_POST["telefone"];
    
    $query = "UPDATE responsavel SET nome='$nome', email='$email',senha='$senha',telefone='$telefone' WHERE id='$id'";

    $result = mysqli_query($conn, $query);

    if($result){
        echo "ok";
    } else {
        echo "erro";
    }

?>
