<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pdm";
    $table = "responsavel";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $query = "SELECT * FROM responsavel";

    $req = mysqli_query($conn, $query);

    $res = array();

    while ($row = mysqli_fetch_array($req)){
        array_push($res, array("id"=>$row['0'],"nome"=>$row['1'],"email"=>$row['2'],"senha"=>$row['3'],"telefone"=>$row['4'],));
    }

    echo json_encode(array("result"=>$res));

    mysqli_close($conn);

?>
