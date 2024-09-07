<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/05970e0308.js" crossorigin="anonymous"></script>
</head>
<body onload="loadcarthome()">
    <nav id="nav-bar">
        <ul class="menulv1">
                <li class="icon">
                    <a><i class="fa-sharp fa-solid fa-house"></i></a>
                </li> 
                <li class="itemlv1">
                    <a href="index.php" class="itemlv1title">Trang chủ</a>
                </li>
                <li class="itemlv1">
                    <a class="itemlv1title">Các sản phẩm</a>
                                    <ul class="menulv2">
                                            <li class="itemlv2">
                                                    <a href="index?page=giaynike" class="itemlv2title">Giày Nike</a>  
                                            </li>
                                            <li class="itemlv2">
                                                    <a href="index?page=giayvans" class="itemlv2title">Giày Vans</a>
                                            </li>
                                            <li class="itemlv2">
                                                    <a href="index?page=giayconverse" class="itemlv2title">Giày Converse</a>  
                                            </li>
                                            <li class="itemlv2">
                                                <a href="index?page=giaysummer" class="itemlv2title">Giày Mùa Hè</a>  
                                        </li>
                                        <li class="itemlv2">
                                            <a  href="index?page=giaywinter" class="itemlv2title">Giày Mùa Đông</a>  
                                    </li>
                                    </ul>
                </li>
                <li class="itemlv1">
                    <a class="itemlv1title">liên hệ</a>
                </li>
                <li class="iconright right">
                    <a href="cart.html">
                            <i class="fa-sharp fa-solid fa-cart-shopping " ;></i>
                            <span id="slsp"></span>
                        </a>
                </li>
                <li class="iconright">
                    <a href="loginform.html">
                            <i class="fa-solid fa-user"></i>
                        </a>
                </li>
                
        </ul>
    </nav>