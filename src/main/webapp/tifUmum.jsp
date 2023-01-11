<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="uz">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--favicon-->
    <link rel="icon" href="assets/images/gtk_image.png" type="image/png"/>
    <!--plugins-->
    <link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
    <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
    <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet"/>
    <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet"/>

    <!-- Bootstrap CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/app.css" rel="stylesheet">
    <link href="assets/css/icons.css" rel="stylesheet">
    <title>Таргетлаш маркази</title>
</head>

<body class="bg-theme bg-theme1">
<!--wrapper-->
<div class="wrapper">
    <!--sidebar wrapper -->
    <div class="sidebar-wrapper" data-simplebar="true">
        <div class="sidebar-header">
            <div>
                <a href="index.jsp">
                    <img src="assets/images/gtk_image.png" class="logo-icon" alt="logo icon" />
                </a>
            </div>
            <div>
                <h4 class="logo-text">Таргетлаш маркази</h4>
            </div>
            <div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
            </div>
        </div>
        <!--navigation-->
        <ul class="metismenu" id="menu">
            <li>
                <a href="#" class="has-arrow">
                    <div class="parent-icon"><i class='bx bx-home-circle'></i>
                    </div>
                    <div class="menu-title"> ТИФ</div>
                </a>
                <ul>
                    <li><a href="tifUmum.jsp"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="tifNostandart.jsp"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="#" class="has-arrow">
                    <div class="parent-icon"><i class="bx bx-category"></i>
                    </div>
                    <div class="menu-title">АВТО</div>
                </a>
                <ul>
                    <li><a href="transport_common.jsp"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="transport_no_standard.jsp"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="#" class="has-arrow">
                    <div class="parent-icon"><i class="bx bx-category"></i>
                    </div>
                    <div class="menu-title">ТЕМИР ЙЎЛ</div>
                </a>
                <ul>
                    <li><a href="temUmum.jsp"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="#"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="#" class="has-arrow">
                    <div class="parent-icon"><i class="bx bx-category"></i>
                    </div>
                    <div class="menu-title">АВИА</div>
                </a>
                <ul>
                    <li><a href="#" class="auto_common_statistics"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="#" class="auto_nostandard_statistics"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
                    </li>
                </ul>
            </li>

        </ul>
        <!--end navigation-->
    </div>
    <!--end sidebar wrapper -->
    <!--start header -->
    <header>
        <div class="topbar d-flex align-items-center">
            <nav class="navbar navbar-expand">
                <div class="mobile-toggle-menu"><i class='bx bx-menu'></i>
                </div>

                <div class="top-menu ms-auto">
                    <ul class="navbar-nav align-items-center">

                        <li class="nav-item dropdown dropdown-large">
                            <a class="nav-link dropdown-toggle dropdown-toggle-nocaret position-relative" href="#"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false"> <span class="alert-count">7</span>
                                <i class='bx bx-bell'></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a href="javascript:;">
                                    <div class="msg-header">
                                        <p class="msg-header-title">Notifications</p>
                                        <p class="msg-header-clear ms-auto">Marks all as read</p>
                                    </div>
                                </a>
                                <div class="header-notifications-list">
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class="bx bx-group"></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">New Customers<span class="msg-time float-end">14 Sec
												ago</span></h6>
                                                <p class="msg-info">5 new user registered</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class="bx bx-cart-alt"></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">New Orders <span class="msg-time float-end">2 min
												ago</span></h6>
                                                <p class="msg-info">You have recived new orders</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class="bx bx-file"></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">24 PDF File<span class="msg-time float-end">19 min
												ago</span></h6>
                                                <p class="msg-info">The pdf files generated</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class="bx bx-send"></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Time Response <span class="msg-time float-end">28 min
												ago</span></h6>
                                                <p class="msg-info">5.1 min avarage time response</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class="bx bx-home-circle"></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">New Product Approved <span
                                                        class="msg-time float-end">2 hrs ago</span></h6>
                                                <p class="msg-info">Your new product has approved</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class="bx bx-message-detail"></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">New Comments <span class="msg-time float-end">4 hrs
												ago</span></h6>
                                                <p class="msg-info">New customer comments recived</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class='bx bx-check-square'></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Your item is shipped <span
                                                        class="msg-time float-end">5 hrs
												ago</span></h6>
                                                <p class="msg-info">Successfully shipped your item</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class='bx bx-user-pin'></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">New 24 authors<span class="msg-time float-end">1 day
												ago</span></h6>
                                                <p class="msg-info">24 new authors joined last week</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="notify"><i class='bx bx-door-open'></i>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Defense Alerts <span class="msg-time float-end">2 weeks
												ago</span></h6>
                                                <p class="msg-info">45% less alerts last 4 weeks</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <a href="javascript:;">
                                    <div class="text-center msg-footer">View All Notifications</div>
                                </a>
                            </div>
                        </li>
                        <li class="nav-item dropdown dropdown-large">
                            <a class="nav-link dropdown-toggle dropdown-toggle-nocaret position-relative" href="#"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false"> <span class="alert-count">8</span>
                                <i class='bx bx-comment'></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">

                                <div class="header-message-list">
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-1.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Daisy Anderson <span class="msg-time float-end">5 sec
												ago</span></h6>
                                                <p class="msg-info">The standard chunk of lorem</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-2.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Althea Cabardo <span class="msg-time float-end">14
												sec ago</span></h6>
                                                <p class="msg-info">Many desktop publishing packages</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-3.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Oscar Garner <span class="msg-time float-end">8 min
												ago</span></h6>
                                                <p class="msg-info">Various versions have evolved over</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-4.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Katherine Pechon <span class="msg-time float-end">15
												min ago</span></h6>
                                                <p class="msg-info">Making this the first true generator</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-5.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Amelia Doe <span class="msg-time float-end">22 min
												ago</span></h6>
                                                <p class="msg-info">Duis aute irure dolor in reprehenderit</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-6.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Cristina Jhons <span class="msg-time float-end">2 hrs
												ago</span></h6>
                                                <p class="msg-info">The passage is attributed to an unknown</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-7.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">James Caviness <span class="msg-time float-end">4 hrs
												ago</span></h6>
                                                <p class="msg-info">The point of using Lorem</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-8.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Peter Costanzo <span class="msg-time float-end">6 hrs
												ago</span></h6>
                                                <p class="msg-info">It was popularised in the 1960s</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-9.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">David Buckley <span class="msg-time float-end">2 hrs
												ago</span></h6>
                                                <p class="msg-info">Various versions have evolved over</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-10.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Thomas Wheeler <span class="msg-time float-end">2 days
												ago</span></h6>
                                                <p class="msg-info">If you are going to use a passage</p>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item" href="javascript:;">
                                        <div class="d-flex align-items-center">
                                            <div class="user-online">
                                                <img src="assets/images/avatars/avatar-11.png" class="msg-avatar"
                                                     alt="user avatar">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="msg-name">Johnny Seitz <span class="msg-time float-end">5 days
												ago</span></h6>
                                                <p class="msg-info">All the Lorem Ipsum generators</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </header>
    <!--end header -->
    <!--start page wrapper -->
    <div class="page-wrapper">
        <div class="page-content">
            <div class="row row-cols-1   ">

                <style>
                    @-webkit-keyframes scroll {
                        0% {
                            transform: translateX(0);
                        }
                        100% {
                            transform: translateX(calc(-250px * 7));
                        }
                    }

                    @keyframes scroll {
                        0% {
                            transform: translateX(0);
                        }
                        100% {
                            transform: translateX(calc(-250px * 7));
                        }
                    }

                    .slider {
                        /*background: white;*/
                        box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.125);
                        height: 80px;
                        margin: auto;
                        overflow: hidden;
                        position: relative;
                        /*width: 960px;*/
                    }

                    .slider::before, .slider::after {
                        /*background: linear-gradient(to right, white 0%, rgba(255, 255, 255, 0) 100%);*/
                        content: "";
                        height: 100px;
                        position: absolute;
                        width: 200px;
                        z-index: 2;
                    }

                    .slider::after {
                        right: 0;
                        top: 0;
                        transform: rotateZ(180deg);
                    }

                    .slider::before {
                        left: 0;
                        top: 0;
                    }

                    .slider .slide-track {
                        -webkit-animation: scroll 30s linear infinite;
                        animation: scroll 30s linear infinite;
                        display: flex;
                        width: calc(280px * 15);
                    }

                    .slider .slide {
                        margin-right: 10px;
                        height: 100px;
                        width: 250px;
                    }
                </style>

                <div class="slider">
                    <div class="slide-track">
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span class="font-15"> Қорақалпоғистон</span>
                                            </p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Андижон</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Бухоро</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Жиззах</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Қашқадарё</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Навоий</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 "><img src="assets/images/location.svg" alt=""
                                                                  width="25px"><span class="font-15"> Наманган</span>
                                            </p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Самарқанд</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Сурхондарё</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Сирдарё</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Тошкент ш.</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span class="font-15"> Тошкент вил.</span>
                                            </p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span class="font-15"> Тошкент АЭРО ИБК</span>
                                            </p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Фарғона</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="card radius-10">
                                <div class="card-body " style="width: 280px!important">
                                    <div class="d-flex ">
                                        <div class="">
                                            <p class="mb-0 d-inline"><img src="assets/images/location.svg" alt=""
                                                                          width="25px"><span
                                                    class="font-15"> Хоразм</span></p>

                                        </div>
                                        <div class=" text-white  "
                                             style="font-size: 15px!important; margin-left: 10px!important;">17 млрд
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Ундирилган божхона тўловлари
                                    </p>
                                    <h4 class="my-1">$426</h4>
                                    <p class="mb-0 font-13 text-white"><i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 4.7 %</p>
                                </div>
                                <div class="ms-auto font-35 text-white"><i class='bx bx-money'></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Қўлланилган имтиёзлар</p>
                                    <h4 class="my-1">$23.7 (БЮД сони)</h4>
                                    <p class="mb-0 font-13 text-white"><i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 1.2 %</p>
                                </div>
                                <div class="ms-auto font-35 text-white"><i class='bx bx-money'></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Кечиктириб тўланган</p>
                                    <h4 class="my-1">$427</h4>
                                    <p class="mb-0 font-13 text-white"><i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 4.5 %</p>
                                </div>
                                <div class="ms-auto font-35 text-white"><i class='bx bx-money'></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Бўлиб-бўлиб тўланган</p>
                                    <h4 class="my-1">$12.5</h4>
                                    <p class="mb-0 font-13 text-white"><i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.7 %</p>
                                </div>
                                <div class="ms-auto font-35 text-white"><i class='bx bx-money '></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Божхона божи</p>
                                    <h5 class="mb-0">$867</h5>
                                </div>
                                <div class="ms-auto text-white">
                                    <img src="assets/images/m2.svg" width="45px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="" id="w-chart5"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Акциз солиғи</p>
                                    <h5 class="mb-0">$52,945</h5>
                                </div>
                                <div class="ms-auto text-white">
                                    <img src="assets/images/m1.svg" alt="" width="45px">
                                </div>
                            </div>
                        </div>
                        <div class="" id="w-chart6"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">ҚҚС</p>
                                    <h5 class="mb-0">24.5K</h5>
                                </div>
                                <div class="ms-auto text-white">
                                    <img src="assets/images/coin.svg" alt="" width="40px">
                                </div>
                            </div>
                        </div>
                        <div class="" id="w-chart7"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 overflow-hidden ">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0">Божхона йиғимлари</p>
                                    <h5 class="mb-0">$2869</h5>
                                </div>
                                <div class="ms-auto text-white">
                                    <img src="assets/images/m3.svg" alt="" width="45px">
                                </div>
                            </div>
                        </div>
                        <div class="" id="w-chart8"></div>
                    </div>
                </div>

            </div>
            <!--end row-->
            <div class="row row-cols-1 row-cols-xl-2">
                <div class="col d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-1"></h5>
                                    <p class="mb-0 font-13"><i class='bx bxs-calendar'></i>БЮДнинг йўлаклар бўйича
                                        кўрсаткичи</p>
                                </div>
                                <div class="font-22 ms-auto"><i class='bx bx-dots-horizontal-rounded'></i>
                                </div>
                            </div>
                            <div class="row row-cols-1 row-cols-sm-3 mt-4">
                                <div class="col">
                                    <div>
                                        <p class="mb-0">Яшил</p>
                                        <h4 class="my-1 text-white">4805</h4>
                                        <p class="mb-0 font-13"><i class='bx bxs-up-arrow align-middle'></i>5.8% Ўтган
                                            кунга нисбатан</p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <p class="mb-0">Сариқ</p>
                                        <h4 class="my-1 text-white">84</h4>
                                        <p class="mb-0 font-13"><i class='bx bxs-up-arrow align-middle'></i>12.3% Ўтган
                                            кунга нисбатан</p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <p class="mb-0">Қизил</p>
                                        <h4 class="my-1 text-white">59</h4>
                                        <p class="mb-0 font-13"><i class='bx bxs-down-arrow align-middle'></i>2.4% Ўтган
                                            кунга нисбатан</p>
                                    </div>
                                </div>
                            </div>
                            <div id="chart4"></div>
                        </div>
                    </div>
                </div>
                <div class="col d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-1">Декларация сони</h5>
                                    <p class="mb-0 font-13"><i class='bx bxs-calendar'></i>Сўнгги 10 кунда</p>
                                </div>
                                <div class="font-22 ms-auto"><i class='bx bx-dots-horizontal-rounded'></i>
                                </div>
                            </div>
                        </div>
                        <div class="product-list p-3 mb-3">
                            <div class="row border mx-0 mb-3 py-2 radius-10 cursor-pointer">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="product-img">
                                            <img src="assets/images/exp.svg" alt="" />
                                        </div>
                                        <div class="ms-2">
                                            <h6 class="mb-1">Экспорт</h6>
                                            <p class="mb-0">$240.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <h6 class="mb-1">$2140.00</h6>
                                    <p class="mb-0">345 Декларация</p>
                                </div>
                                <div class="col-sm">
                                    <div id="chart5"></div>
                                </div>
                            </div>
                            <div class="row border mx-0 mb-3 py-2 radius-10 cursor-pointer">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="product-img">
                                            <img src="assets/images/imp.svg" alt="" />
                                        </div>
                                        <div class="ms-2">
                                            <h6 class="mb-1">импорт</h6>
                                            <p class="mb-0">$159.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <h6 class="mb-1">$3570.00</h6>
                                    <p class="mb-0">148 Декларация</p>
                                </div>
                                <div class="col-sm">
                                    <div id="chart6"></div>
                                </div>
                            </div>
                            <div class="row border mx-0 mb-3 py-2 radius-10 cursor-pointer">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="product-img">
                                            <img src="assets/images/transit.svg" alt="" />
                                        </div>
                                        <div class="ms-2">
                                            <h6 class="mb-1">Транзит</h6>
                                            <p class="mb-0">$250.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm">
                                    <h6 class="mb-1">$3650.00</h6>
                                    <p class="mb-0">122 Декларация</p>
                                </div>
                                <div class="col-sm">
                                    <div id="chart7"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->

            <!--end row-->
            <div class="row row-cols-1 row-cols-lg-3">
                <div class="col d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-0">Контейнерда ташувлар миқдори</h5>
                                </div>
                                <div class="font-22 ms-auto"><i class='bx bx-dots-horizontal-rounded'></i>
                                </div>
                            </div>
                            <div class="mt-5" id="chart15"></div>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex bg-transparent justify-content-between align-items-center">
                                Экспорт <span class="badge bg-light-white-2 rounded-pill">15%</span>
                            </li>
                            <li class="list-group-item d-flex bg-transparent justify-content-between align-items-center">
                                Импорт <span class="badge bg-light-white-3 rounded-pill">55%</span>
                            </li>
                            <li class="list-group-item d-flex bg-transparent justify-content-between align-items-center">
                                Транзит <span class="badge bg-white rounded-pill text-dark">30%</span>
                            </li>


                        </ul>
                    </div>
                </div>
                <div class="col d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <p class="font-weight-bold mb-1">Умумий БҚБлар сони
                            </p>
                            <div class="d-flex align-items-center">
                                <div>
                                    <h4 class="mb-0">43,540</h4>
                                </div>
                                <div class="">
                                    <p class="mb-0 align-self-center font-weight-bold ms-2">4.4 <i
                                            class='bx bxs-up-arrow-alt mr-2'></i>
                                    </p>
                                </div>
                            </div>
                            <div id="chart21"></div>
                        </div>
                    </div>
                </div>
                <div class="col d-flex">
                    <div class="card radius-10 w-100 overflow-hidden">
                        <div class="card-body">


                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-0">Ўтказувчанлик вақти минутда
                                    </h5>
                                </div>
                                <div class="font-22 ms-auto"><i class='bx bx-dots-horizontal-rounded'></i>
                                </div>
                            </div>
                            <div class="mt-5" id="chart20"></div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">19.42</h6>
                                    <p class="mb-0">Сўнгги хафтада</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">22.14</h6>
                                    <p class="mb-0">Сўнгги ойда</p>
                                </div>
                                <div>
                                    <h6 class="mb-1 font-weight-bold">25,25</h6>
                                    <p class="mb-0">Сўнгги йилда</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
            <div class="row">
                <div class="col-12 col-xl-6 d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-0">Инспекторлар расмийлаштирган Декларациялар, постга нисбатан фоиз
                                    </h5>
                                </div>

                            </div>
                        </div>
                        <div class="customers-list p-3 mb-3" style="height: 255px">
                            <div class="customers-list-item d-flex align-items-center border-top border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-3.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Хайдарова Алина</h6>
                                    <p class="mb-0 font-13">emy_jac@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-4.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Алиёров Алибек</h6>
                                    <p class="mb-0 font-13">martin.hug@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-23.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Тожиева Жамила</h6>
                                    <p class="mb-0 font-13">laura_01@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-24.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Шамсиев Шамси</h6>
                                    <p class="mb-0 font-13">s.stephen@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-20.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Кабаева Алина</h6>
                                    <p class="mb-0 font-13">Keate@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-16.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Полвонов Зафар</h6>
                                    <p class="mb-0 font-13">pauly.b@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-25.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Жанаева Жамила</h6>
                                    <p class="mb-0 font-13">winslet_02@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-11.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Bruno Bernard</h6>
                                    <p class="mb-0 font-13">bruno.b@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-17.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Merlyn Dona</h6>
                                    <p class="mb-0 font-13">merlyn.d@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                            <div class="customers-list-item d-flex align-items-center border-bottom p-2 cursor-pointer">
                                <div class="">
                                    <img src="assets/images/avatars/avatar-7.png" class="rounded-circle" width="46"
                                         height="46" alt=""/>
                                </div>
                                <div class="ms-2">
                                    <h6 class="mb-1 font-14">Alister Campel</h6>
                                    <p class="mb-0 font-13">alister_42@xyz.com</p>
                                </div>
                                <div class="list-inline d-flex customers-contacts ms-auto"><a href="javascript:;"
                                                                                              class="list-inline-item"><i
                                        class='bx bxs-envelope'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bxs-microphone'></i></a>
                                    <a href="javascript:;" class="list-inline-item"><i
                                            class='bx bx-dots-vertical-rounded'></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-xl-6 d-flex">
                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-0">Йўлаклар нисбати
                                    </h5>
                                </div>
                                <div class="font-22 ms-auto"><i class='bx bx-dots-horizontal-rounded'></i>
                                </div>
                            </div>
                            <hr/>
                            <div class="row m-0 row-cols-1 row-cols-md-3">
                                <div class="col border-end ">
                                    <div id="chart16"></div>
                                </div>
                                <div class="col border-end">
                                    <div id="chart17"></div>
                                </div>
                                <div class="col">
                                    <div id="chart18"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--end row-->
            <div class="row">
                <div class="col-12  d-flex">
                    <div class="row">
                        <h6 class="mb-0 text-uppercase text-center">Ноанаънавий юк жўнатувчи давлатлардан
                            ҳаракатланатган товар партиялари (постлар бўйича)
                        </h6>
                        <hr/>
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-bordered mb-0 table-hover text-center font-18">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Божхона режими</th>
                                        <th scope="col">Яшил йўлакда расмийлаштирилган БЮДлар сони</th>
                                        <th scope="col">Авторасмийлаштирилган БЮДлар сони</th>
                                        <th scope="col">% (яшил йўлакдаги)</th>
                                        <th scope="col">Стат. қиймат (гр46, минг $)</th>

                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>


                                        <th scope="row">1</th>
                                        <td> Экспорт</td>
                                        <td>7187</td>
                                        <td>5715</td>
                                        <td>79.52</td>
                                        <td>254601,64</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Импорт</td>
                                        <td>3494</td>
                                        <td>70</td>
                                        <td>2.00</td>
                                        <td>4556,04</td>
                                    </tr>

                                    <tr style="font-weight: bold">
                                        <th scope="row">3</th>
                                        <td>Жами</td>
                                        <td>3494</td>
                                        <td>70</td>
                                        <td>2.00</td>
                                        <td>4556,04</td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!--end page wrapper -->
    <!--start overlay-->


</div>
<!--end wrapper-->
<!--start switcher-->
<div class="switcher-wrapper">
    <div class="switcher-btn"><i class='bx bx-cog bx-spin'></i>
    </div>
    <div class="switcher-body">
        <div class="d-flex align-items-center">
            <h5 class="mb-0 text-uppercase">Theme Customizer</h5>
            <button type="button" class="btn-close ms-auto close-switcher" aria-label="Close"></button>
        </div>
        <hr/>
        <p class="mb-0">Gaussian Texture</p>
        <hr>

        <ul class="switcher">
            <li id="theme1"></li>
            <li id="theme2"></li>
            <li id="theme3"></li>
            <li id="theme4"></li>
            <li id="theme5"></li>
            <li id="theme6"></li>
        </ul>
        <hr>
        <p class="mb-0">Gradient Background</p>
        <hr>

        <ul class="switcher">
            <li id="theme7"></li>
            <li id="theme8"></li>
            <li id="theme9"></li>
            <li id="theme10"></li>
            <li id="theme11"></li>
            <li id="theme12"></li>
            <li id="theme13"></li>
            <li id="theme14"></li>
            <li id="theme15"></li>
        </ul>
    </div>
</div>
<!--end switcher-->
<!-- Bootstrap JS -->
<script src="assets/js/bootstrap.bundle.min.js"></script>
<!--plugins-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
<script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
<script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
<script src="assets/plugins/apexcharts-bundle/js/apexcharts.min.js"></script>
<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatable/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $(document).on('click', '.auto_common_statistics', function () {
            document.body.style.cursor = 'wait';
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/transport_common.jsp',
                dataType: 'html',
                header: 'Content-type: text/html; charset=utf-8',
                success: function (res) {
                    $('.page-content').empty().html(res);
                    document.body.style.cursor = 'default';
                },
                error: function (res) {
                    console.log(res);
                    document.body.style.cursor = 'default';
                }
            });
        });
        $(document).on('click', '.auto_nostandard_statistics', function () {
            document.body.style.cursor = 'wait';
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/transport_no_standard.jsp',
                dataType: 'html',
                header: 'Content-type: text/html; charset=utf-8',
                success: function (res) {
                    $('.page-content').empty().html(res);
                    document.body.style.cursor = 'default';
                },
                error: function (res) {
                    console.log(res);
                    document.body.style.cursor = 'default';
                }
            });
        });
    });
</script>
<script src="assets/js/tiff.js"></script>
<!--app JS-->
<script src="assets/js/app.js"></script>
<script>
    new PerfectScrollbar('.product-list');
    new PerfectScrollbar('.customers-list');
</script>
<script src="assets/js/widgets.js"></script>


</body>

</html>