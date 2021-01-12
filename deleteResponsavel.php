<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "responsavel";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $id=$_POST["_id"];
    
    $query = "DELETE FROM responsavel WHERE id='$id'";

    $result = mysqli_query($conn, $query);

    if($result){
        echo "ok";
    } else {
        echo "erro";
    }

?>
