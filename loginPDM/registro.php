<?php
    $db = mysqli_connect('localhost','root','','projetopdm');
    if(!$db){
        echo "Database connection faild";
    }
    
    $id= $_POST['id'];
    $nomeCompletoResp = $_POST['nomeCompletoResp'];
    $sexoResp = $_POST['sexoResp'];
    $celularResp = $_POST['celularResp'];
    $emailResp = $_POST['emailResp'];
    $senhaResp = $_POST['senhaResp'];
    $estadoResp = $_POST['estadoResp'];
    $cidadeResp = $_POST['cidadeResp'];
    $enderecoResp = $_POST['enderecoResp'];
    $numeroResp = $_POST['numeroResp'];


    $sql = "SELECT * FROM responsavel";

    $result = mysqli_query($db,$sql);
    $count = mysqli_num_rows($result);

    if($count == 1){
        echo json_encode("Error");
    }else{
        $insert = "INSERT INTO responsavel(id,nomeCompletoResp,sexoResp,celularResp,emailResp,senhaResp,estadoResp,cidadeResp,enderecoResp,numeroResp)VALUES('$id','$nomeCompletoResp','$sexoResp','$celularResp','$emailResp','$senhaResp','$estadoResp','$cidadeResp','$enderecoResp','$numeroResp')";
        $query = mysqli_query($db,$insert);
        if($query){
            echo json_encode("Success");
        }
    }
?>