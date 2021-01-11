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
        
        $sql = "SELECT * FROM responsavel WHERE emailResp = '".$emailResp" AND senhaResp = '".$senhaResp"'";

        $result = mysqli_query($db,$sql);
        $count = mysqli_num_rows($result);

        if($count == 1){
            echo json_encode('Success');
        }else{
            echo json_encode("Error")
        }

?>