<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "crianca";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $query = "SELECT * FROM crianca";

    $req = mysqli_query($conn, $query);

    $res = array();

    while ($row = mysqli_fetch_array($req)){
        array_push($res, array("id"=>$row['0'],"nome"=>$row['1'],"dataNasc"=>$row['2'],"sexo"=>$row['3'],"descricao"=>$row['4'],));
    }

    echo json_encode(array("result"=>$res));

    mysqli_close($conn);

?>
