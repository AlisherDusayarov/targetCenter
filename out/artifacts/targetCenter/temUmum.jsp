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
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
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
                <img src="assets/images/gtk_image.png" class="logo-icon" alt="logo icon">
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
                    <li><a href="avtoUmum.html"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="avtoNostandart.html"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
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
                    <li><a href="app-chat-box.html"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
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
                    <li><a href="#"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="app-chat-box.html"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
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
            <h6 class="mb-0 text-uppercase text-center">Темир йўлда ташилган товарлар тўғрисида маълумот
            </h6>
            <hr/>
            <div class="row row-cols-1 row-cols-md-4 row-cols-xl-4 temUm">

                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons  mx-auto mb-3">
                                    <img src="assets/images/wagon.svg" alt="wagon" width="65px">
                                </div>
                                <h4 class="my-1">1286</h4>
                                <p class="mb-0">Жами вагонлар</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons  mx-auto mb-3"><img src="assets/images/product.svg"
                                                                              alt="product" width="45px">
                                </div>
                                <h4 class="my-1">3812</h4>
                                <p class="mb-0">Товар партияси</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons  mx-auto mb-3">
                                    <img src="assets/images/tarozi.svg" alt="" width="40px">
                                </div>
                                <h4 class="my-1">2856</h4>
                                <p class="mb-0">Оғирлиги</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="text-center">
                                <div class="widgets-icons  mx-auto mb-3">
                                    <img src="assets/images/cost.svg" alt="" width="45px">
                                </div>
                                <h4 class="my-1">346 млрд</h4>
                                <p class="mb-0">Қиймати</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3 temUm">
                <div class="col">
                    <div class="card radius-10">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>


                                    <h4 class="my-1">Ёпиқ вагонлар <span>205 </span></h4>


                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/w1.svg" width="70px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">96 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </h6>
                                    <p class="mb-0">Товар партияси</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 тонна <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.5%</h6>
                                    <p class="mb-0">Оғирлиги</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">568 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 6%</h6>
                                    <p class="mb-0">Қиймати</p>
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


                                    <h4 class="my-1">Платформа <span>205</span></h4>


                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/w2.svg" width="75px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">96 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </h6>
                                    <p class="mb-0">Товар партияси</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 тонна <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.5%</h6>
                                    <p class="mb-0">Оғирлиги</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">568 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 6%</h6>
                                    <p class="mb-0">Қиймати</p>
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


                                    <h4 class="my-1">Полувагон <span>205</span></h4>


                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/w3.svg" width="65px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">96 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </h6>
                                    <p class="mb-0">Товар партияси</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 тонна <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.5%</h6>
                                    <p class="mb-0">Оғирлиги</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">568 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 6%</h6>
                                    <p class="mb-0">Қиймати</p>
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

                                    <h4 class="my-1">Цистерна <span>205</span></h4>


                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/w4.svg" width="65px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">96 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </h6>
                                    <p class="mb-0">Товар партияси</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 тонна <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.5%</h6>
                                    <p class="mb-0">Оғирлиги</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">568 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 6%</h6>
                                    <p class="mb-0">Қиймати</p>
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


                                    <h4 class="my-1">Изотермик <span>205</span></h4>


                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/w5.svg" width="65px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">96 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </h6>
                                    <p class="mb-0">Товар партияси</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 тонна <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.5%</h6>
                                    <p class="mb-0">Оғирлиги</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">568 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 6%</h6>
                                    <p class="mb-0">Қиймати</p>
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


                                    <h4 class="my-1">Бошқа турдаги <span>205</span></h4>


                                </div>
                                <div class="widgets-icons ms-auto">
                                    <img src="assets/images/w6.svg" width="65px" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer bg-transparent border-top-0">
                            <div class="d-flex align-items-center justify-content-between text-center">
                                <div>
                                    <h6 class="mb-1 font-weight-bold">96 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 3%
                                    </h6>
                                    <p class="mb-0">Товар партияси</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">212 тонна <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 0.5%</h6>
                                    <p class="mb-0">Оғирлиги</p>
                                </div>
                                <div class="mb-1">
                                    <h6 class="mb-1 font-weight-bold">568 <i
                                            class="bx bxs-up-arrow align-middle text-success"></i> 6%</h6>
                                    <p class="mb-0">Қиймати</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <h6 class="mb-0 text-uppercase text-center">Контейнерда ташилган товар партиялари
            </h6>
            <hr/>
            <div class="row row-cols-1 row-cols-lg-2 row-cols-xl-4 ">

                <div class="col">
                    <div class="card radius-10 bg-success">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0 text-white">Контейнерлар сони</p>
                                    <h4 class="my-1 text-white">210 та</h4>
                                    <p class="mb-0 font-13 text-white"><i class="bx bxs-up-arrow align-middle"></i> 4%
                                    </p>
                                </div>
                                <div class="widgets-icons bg-white text-success ms-auto"><i class="bx bxs-wallet"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 bg-info">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0 text-dark">Товар партиялар сони</p>
                                    <h4 class="my-1 text-dark">210 та</h4>
                                    <p class="mb-0 font-13 text-white"><i class="bx bxs-up-arrow align-middle"></i> 5%
                                    </p>

                                </div>
                                <div class="widgets-icons bg-white text-dark ms-auto"><i class="bx bxs-group"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 bg-danger">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0 text-white">Товар оғирлиги</p>
                                    <h4 class="my-1 text-white">595 тонна</h4>
                                    <p class="mb-0 font-13 text-white"><i class="bx bxs-down-arrow align-middle"></i>
                                        0.5%</p>
                                </div>
                                <div class="widgets-icons bg-white text-danger ms-auto"><i
                                        class="bx bxs-binoculars"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 bg-warning">
                        <div class="card-body">
                            <div class="d-flex align-items-center">
                                <div>
                                    <p class="mb-0 text-dark">Товар қиймати</p>
                                    <h4 class="my-1 text-dark">$ 3 млн</h4>
                                    <p class="mb-0 font-13 text-dark"><i class="bx bxs-down-arrow align-middle"></i>
                                        2.2%
                                    </p>
                                </div>
                                <div class="widgets-icons bg-white text-dark ms-auto"><i
                                        class='bx bx-line-chart-down'></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-12  d-flex">
                    <div class="row">
                        <h6 class="mb-0 text-uppercase text-center">Энг кўп темир йўлда импорт қилинган товарлар
                            тўғрисида маълумот
                        </h6>
                        <hr/>
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-bordered mb-0 table-hover text-center font-18">
                                    <thead>
                                    <tr>

                                        <th scope="col">#</th>
                                        <th scope="col">Товар тоифаси</th>
                                        <th scope="col"> Т/Й да импорт қилинганлик ҳажми</th>
                                        <th scope="col">Партиялар сони</th>
                                        <th scope="col">Оғирлиги</th>
                                        <th scope="col">Қиймати</th>

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

        <!--end page wrapper -->
        <!--start overlay-->


    </div>
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
            $('#Transaction-History').DataTable({
                lengthMenu: [[6, 10, 20, -1], [6, 10, 20, 'Todos']]
            });
        });
    </script>
    <script src="assets/js/dashboard-eCommerce.js"></script>
    <!--app JS-->
    <script src="assets/js/app.js"></script>
    <script>
        new PerfectScrollbar('.product-list');
        new PerfectScrollbar('.customers-list');
    </script>
    <script src="assets/js/widgets.js"></script>


</body>

</html>