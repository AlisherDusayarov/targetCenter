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
            <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0 font-18">Ўз вақтида тақдим <br> этилмаган БЮДлар</p>
                                    <h4 class="my-1">205 та</h4>
                                    <p class="mb-0 font-18"><i class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </p>
                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/alarm.svg" width="35px" alt="">
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
                                    <p class="mb-0 font-18">ЮЕБНК назоратдан ечилмасдан <br> расмийлаштирилган БЮДлар
                                    </p>
                                    <h4 class="my-1">8.4K</h4>
                                    <p class="mb-0  font-18"><i class='bx bxs-up-arrow align-middle text-success'></i>
                                        1.5%</p>
                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/doc1.svg" width="35px" alt="">
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
                                    <p class="mb-0 font-18">Бир нечта постга тақдим <br> этилган БЮДлар</p>
                                    <h4 class="my-1">59K</h4>
                                    <p class="mb-0  font-18"><i class='bx bxs-down-arrow align-middle text-success'></i>
                                        0.7 %</p>
                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/dec23.svg" width="35px" alt="">
                                </div>
                            </div>
                        </div>
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
                                    <p class="mb-0 font-18 text-white"><i class='bx bxs-calendar'></i> Охирги ҳафталик
                                        маълумот</p>
                                </div>

                            </div>

                            <div id="chart101"></div>
                            <div class="row row-cols-1 row-cols-sm-3 mt-4 text-center">
                                <div class="col">
                                    <div>
                                        <p class="mb-0">Жами</p>
                                        <h4 class="my-1 text-white">4805</h4>
                                        <p class="mb-0 font-13"><i class='bx bxs-up-arrow align-middle'></i>5.8% Ўтган
                                            кунга нисбатан</p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <p class="mb-0">Хавф аниқланган</p>
                                        <h4 class="my-1 text-white">84</h4>
                                        <p class="mb-0 font-13"><i class='bx bxs-up-arrow align-middle'></i>12.3% Ўтган
                                            кунга нисбатан</p>
                                    </div>
                                </div>
                                <div class="col">
                                    <div>
                                        <p class="mb-0">Максимал хавфлар</p>
                                        <h4 class="my-1 text-white">59</h4>
                                        <p class="mb-0 font-13"><i class='bx bxs-down-arrow align-middle'></i>2.4% Ўтган
                                            кунга нисбатан</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col d-flex">
                    <div class="card radius-10 w-100">


                        <div class="card-body text-center">
                            <div class="d-flex align-items-center">
                                <h5 class="mb-0 font-weight-bold " style="text-align: center!important;"><img
                                        src="assets/images/m3.svg" width="30px" alt=""> Божхона тўловлари тўлиқ
                                    ундирилмаган ҳолатлар</h5>

                            </div>
                            <div class="d-flex mt-2 mb-4">
                                <h2 class="mb-0 font-weight-bold">89,421 млн сўм</h2>

                            </div>
                            <div class="progress radius-10" style="height: 10px">
                                <div class="progress-bar bg-white" role="progressbar" style="width: 35%"
                                     aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                <div class="progress-bar bg-white" role="progressbar" style="width: 20%"
                                     aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                <div class="progress-bar bg-white" role="progressbar" style="width: 15%"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                <div class="progress-bar bg-white" role="progressbar" style="width: 25%"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                <div class="progress-bar bg-white" role="progressbar" style="width: 10%"
                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                            <div class="table-responsive mt-4">
                                <table class="table mb-0">
                                    <tbody>
                                    <tr>
                                        <td class="px-0">
                                            <div class="d-flex align-items-center">
                                                <div><i class="bx bxs-checkbox me-2 font-22 text-white"></i>
                                                </div>
                                                <div>БЮД рақами</div>
                                            </div>
                                        </td>
                                        <td>Товар рақами</td>
                                        <td class="px-0 text-right">Ундирилмаган тўлов</td>
                                    </tr>
                                    <tr>
                                        <td class="px-0">
                                            <div class="d-flex align-items-center">
                                                <div><i class="bx bxs-checkbox me-2 font-22 text-white"></i>
                                                </div>
                                                <div>БЮД рақами</div>
                                            </div>
                                        </td>
                                        <td>Товар рақами</td>
                                        <td class="px-0 text-right">Ундирилмаган тўлов</td>
                                    </tr>
                                    <tr>
                                        <td class="px-0">
                                            <div class="d-flex align-items-center">
                                                <div><i class="bx bxs-checkbox me-2 font-22 text-white"></i>
                                                </div>
                                                <div>БЮД рақами</div>
                                            </div>
                                        </td>
                                        <td>Товар рақами</td>
                                        <td class="px-0 text-right">Ундирилмаган тўлов</td>
                                    </tr>
                                    <tr>
                                        <td class="px-0">
                                            <div class="d-flex align-items-center">
                                                <div><i class="bx bxs-checkbox me-2 font-22 text-white"></i>
                                                </div>
                                                <div>БЮД рақами</div>
                                            </div>
                                        </td>
                                        <td>Товар рақами</td>
                                        <td class="px-0 text-right">Ундирилмаган тўлов</td>
                                    </tr>
                                    <tr>
                                        <td class="px-0">
                                            <div class="d-flex align-items-center">
                                                <div><i class="bx bxs-checkbox me-2 font-22 text-white"></i>
                                                </div>
                                                <div>БЮД рақами</div>
                                            </div>
                                        </td>
                                        <td>Товар рақами</td>
                                        <td class="px-0 text-right">Ундирилмаган тўлов</td>
                                    </tr>
                                    <tr>
                                        <td class="px-0">
                                            <div class="d-flex align-items-center">
                                                <div><i class="bx bxs-checkbox me-2 font-22 text-white"></i>
                                                </div>
                                                <div>БЮД рақами</div>
                                            </div>
                                        </td>
                                        <td>Товар рақами</td>
                                        <td class="px-0 text-right">Ундирилмаган тўлов</td>
                                    </tr>
                                    </tbody>
                                </table>
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
                                    <h5 class="mb-0">Товар тарасининг ноодатий оғирлиги</h5>
                                </div>

                            </div>
                            <div class="mt-5" id="chart12"></div>
                        </div>

                    </div>
                </div>
                <div class="col d-flex">


                    <div class="card radius-10 w-100">
                        <div class="card-body">
                            <p class="font-weight-bold mb-1 font-20 text-white">“қизил”да БКДсиз бекор қилинган БЮДлар

                            </p>
                            <div class="d-flex align-items-center">
                                <div>
                                    <h4 class="mb-0">502 та</h4>
                                </div>
                                <div class="">
                                    <p class="mb-0 align-self-center font-weight-bold ms-2"><i
                                            class='bx bxs-up-arrow mr-2 text-success'></i> 4.4%
                                    </p>
                                </div>
                            </div>
                            <div id="chart22"></div>
                        </div>
                    </div>
                </div>
                <style>


                    .green {
                        margin-left: auto;
                        margin-right: auto;
                        margin-top: 50px;


                    }

                    .green .progress,
                    .red .progress,
                    .orange .progress {
                        position: relative;
                        border-radius: 50%;
                    }

                    .green .progress,
                    .red .progress,
                    .orange .progress {
                        width: 250px;
                        height: 250px;
                    }

                    .green .progress {
                        border: 5px solid #ff0000;
                    }

                    .green .progress {
                        /*box-shadow: 0 0 20px #029502;*/
                    }

                    .green .progress,
                    .red .progress,
                    .orange .progress {
                        transition: all 1s ease;
                    }

                    .green .progress .inner,
                    .red .progress .inner,
                    .orange .progress .inner {
                        position: absolute;
                        overflow: hidden;
                        z-index: 2;
                        border-radius: 50%;
                    }

                    .green .progress .inner,
                    .red .progress .inner,
                    .orange .progress .inner {
                        width: 240px;
                        height: 240px;
                    }

                    .green .progress .inner,
                    .red .progress .inner,
                    .orange .progress .inner {
                        border: 5px solid #1a1a1a;
                    }

                    .green .progress .inner,
                    .red .progress .inner,
                    .orange .progress .inner {
                        transition: all 1s ease;
                    }

                    .green .progress .inner .water,
                    .red .progress .inner .water,
                    .orange .progress .inner .water {
                        position: absolute;
                        z-index: 1;
                        width: 200%;
                        height: 200%;
                        left: -50%;
                        border-radius: 40%;
                        -webkit-animation-iteration-count: infinite;
                        animation-iteration-count: infinite;
                        -webkit-animation-timing-function: linear;
                        animation-timing-function: linear;
                        -webkit-animation-name: spin;
                        animation-name: spin;
                    }

                    .green .progress .inner .water {
                        top: 25%;
                    }

                    .green .progress .inner .water {
                        background: rgba(83, 252, 83, 0.5);
                    }

                    .green .progress .inner .water,
                    .red .progress .inner .water,
                    .orange .progress .inner .water {
                        transition: all 1s ease;
                    }

                    .green .progress .inner .water,
                    .red .progress .inner .water,
                    .orange .progress .inner .water {
                        -webkit-animation-duration: 10s;
                        animation-duration: 10s;
                    }

                    .green .progress .inner .water {
                        box-shadow: 0 0 20px #03bc03;
                    }

                    .green .progress .inner .glare,
                    .red .progress .inner .glare,
                    .orange .progress .inner .glare {
                        position: absolute;
                        top: -120%;
                        left: -120%;
                        z-index: 5;
                        width: 200%;
                        height: 200%;
                        transform: rotate(45deg);
                        border-radius: 50%;
                    }

                    .green .progress .inner .glare,
                    .red .progress .inner .glare,
                    .orange .progress .inner .glare {
                        background-color: rgba(255, 255, 255, 0.15);
                    }

                    .green .progress .inner .glare,
                    .red .progress .inner .glare,
                    .orange .progress .inner .glare {
                        transition: all 1s ease;
                    }

                    .green .progress .inner .percent,
                    .red .progress .inner .percent,
                    .orange .progress .inner .percent {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        font-weight: bold;
                        text-align: center;
                    }

                    .green .progress .inner .percent,
                    .red .progress .inner .percent,
                    .orange .progress .inner .percent {
                        margin-top: 80px;
                        line-height: 40px;
                        font-size: 40px;

                    }

                    .green .progress .inner .percent {
                        color: #03c603;
                    }

                    .green .progress .inner .percent {
                        /*text-shadow: 0 0 10px #029502;*/
                    }

                    .green .progress .inner .percent,
                    .red .progress .inner .percent,
                    .orange .progress .inner .percent {
                        transition: all 1s ease;
                    }

                </style>
                <div class="col d-flex">
                    <div class="card radius-10 w-100 overflow-hidden">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h5 class="mb-0">Қизилда кам вақт сарфланган БЮДлар
                                    </h5>
                                </div>

                            </div>
                            <div class="card-body">
                                <div class="d-flex align-content-center">
                                    <div class="green">
                                        <div class="progress">
                                            <div class="inner">
                                                <div class="percent " style="color:#000000; z-index: 99"><span>60 <br>минут</span>
                                                </div>
                                                <div class="water"></div>
                                                <div class="glare"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">19.42 минут</h6>
                                    <p class="mb-0">Энг кам вақт сарфланган вақт</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 минут</h6>
                                    <p class="mb-0">Энг кўп вақт сарфланган вақт</p>
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
                                        <th scope="col">Давлат</th>
                                        <th scope="col">БЮД рақами</th>
                                        <th scope="col">Товар рақами</th>
                                        <th scope="col">ТИФ ТН коди</th>
                                        <th scope="col">Товар номи</th>

                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>


                                        <th scope="row">1</th>
                                        <td><i class="flag-icon flag-icon-in"></i> Ҳиндистон</td>
                                        <td>465465464</td>
                                        <td>656522</td>
                                        <td>23151511</td>
                                        <td>Товар номи</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td><i class="flag-icon flag-icon-us"></i> АҚШ</td>
                                        <td>465465464</td>
                                        <td>656522</td>
                                        <td>23151511</td>
                                        <td>Товар номи</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td><i class="flag-icon flag-icon-ru"></i> Россия</td>
                                        <td>465465464</td>
                                        <td>656522</td>
                                        <td>23151511</td>
                                        <td>Товар номи</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">4</th>
                                        <td><i class="flag-icon flag-icon-cn"></i> Хитой</td>
                                        <td>465465464</td>
                                        <td>656522</td>
                                        <td>23151511</td>
                                        <td>Товар номи</td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-xl-6 d-flex">
                    <!--                  empty-->
                </div>
            </div>
            <!--end row-->

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
<script src="assets/plugins/apexcharts-bundle/js/apex-custom.js"></script>

<script src="assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatable/js/dataTables.bootstrap5.min.js"></script>


<script src="assets/js/dashboard-analytics.js"></script>

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

<!--app JS-->
<script src="assets/js/app.js"></script>
<script src="assets/js/tiff.js"></script>

<script>
    new PerfectScrollbar('.product-list');
    new PerfectScrollbar('.customers-list');
</script>

</body>
</html>