<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "crianca";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $id=$_POST["_id"];
    
    $query = "DELETE FROM crianca WHERE id='$id'";

    $result = mysqli_query($conn, $query);

    if($result){
        echo "ok";
    } else {
        echo "erro";
    }

?>
