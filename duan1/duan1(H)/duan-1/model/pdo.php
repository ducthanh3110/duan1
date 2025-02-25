<?php
    function pdo() {
        $servername = "localhost";
        $username = "root";
        $password = "";

        try {
        $conn = new PDO("mysql:host=$servername;dbname=pro1014_duan1", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //echo "Connected successfully";
    
        } catch(PDOException $e) {
        //echo "Connection failed: " . $e->getMessage();
        }
        return $conn;
    }
    function pdo_query($sql){
        $sql_args = array_slice(func_get_args(), 1);
        try{
            $conn = pdo();
            $stmt = $conn->prepare($sql);
            $stmt->execute($sql_args);
            $rows = $stmt->fetchAll();
            return $rows;
        }
        catch(PDOException $e){
            throw $e;
        }
        finally{
            unset($conn);
        }
    }
    function pdo_excute($sql){
        $sql_args = array_slice(func_get_args(), 1);
        try{
            $conn = pdo();
            $stmt = $conn->prepare($sql);
            $stmt->execute($sql_args);
            return $conn-> lastInsertId();
        }
        catch(PDOException $e){
            throw $e;
        }
        finally{
            unset($conn);
        }
    }
    function pdo_query_one($sql){
        $sql_args = array_slice(func_get_args(), 1);
        try{
            $conn = pdo();
            $stmt = $conn->prepare($sql);
            $stmt->execute($sql_args);
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            return $row;
        }
        catch(PDOException $e){
            throw $e;
        }
        finally{
            unset($conn);
        }
    }
?>