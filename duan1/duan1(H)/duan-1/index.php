<?php
    require_once "view/header.php";
    

    if(isset($_GET['page']) && $_GET['page']){
        switch ($_GET=['page']) {
            case 'login':
                break;
            break;
            default:
                require_once "view/home.php";
                break;
        }
    }else {
        require_once "view/home.php";
    }
    require_once "view/footer.php";
?>