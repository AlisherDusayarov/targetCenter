<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26.12.2022
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
                    <li><a href="#" class="auto_common_statistics"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="#" class="auto_nostandard_statistics"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
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
                    <li><a href="#"><i class="bx bx-right-arrow-alt"></i>УМУМИЙ СТАТИСТИКА</a>
                    </li>
                    <li><a href="#"><i class="bx bx-right-arrow-alt"></i>НОСТАНДАРТ ҲОЛАТЛАР</a>
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
            <div class="container-fluid">
                <style>
                    #container {
                        height: 850px;
                        min-width: 450px;
                        max-width: 1800px;
                        margin: 0 auto;
                    }

                    .highcharts-tooltip table th {
                        padding-bottom: 0.2em;
                        border-bottom: 1px solid silver;
                    }
                </style>
                <div id="container"></div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--end page wrapper -->
    <!--start overlay-->
    <script src="assets/js/highcharts/proj4.js"></script>
    <script src="assets/js/highcharts/highmaps.js"></script>
    <script src="assets/js/highcharts/offline-exporting.js"></script>
    <script src="assets/js/highcharts/marker-clusters.js"></script>
    <script src="assets/js/highcharts/coloraxis.js"></script>
    <script>
        (async () => {
            const topology = await fetch('assets/js/uz.json').then(response => response.json());
            const data = [
                ['uz-fa', 10], ['uz-tk', 11], ['uz-an', 12], ['uz-ng', 13],
                ['uz-ji', 14], ['uz-si', 15], ['uz-ta', 16], ['uz-bu', 17],
                ['uz-kh', 18], ['uz-qr', 19], ['uz-nw', 20], ['uz-sa', 21],
                ['uz-qa', 22], ['uz-su', 23]
            ];
            Highcharts.mapChart('container', {
                chart: {
                    map: topology
                },
                title:
                    false,
                mapNavigation: {
                    enabled: true,

                },
                // tooltip: {
                //     headerFormat: '',
                //     // pointFormat: '<b>{point.name}</b>',
                //     formatter: function () {
                //         return 'The <b>' + this.point.name +  '</b>';
                //     }
                // },
                tooltip: {
                    shared: true,
                    useHTML: true,
                    headerFormat: '<table><tr><th colspan="2" style="text-align: center">{point.key}</th></tr>',
                    pointFormat: '<tr><td style="color: {series.color}">Чегарадош мамлакат: ' + '<b>{point.border}</b> </td></tr>' +
                        '<tr><td style="color: {series.color}">Пост штати : ' + ' <b>{point.postEm};</b> ' + '  Хизматда: ' + '<b>{point.inServ}</b></td></tr>' +
                        '<tr><td style="color: {series.color}">ИКМ қўрилмаси: ' + ' <b>{point.ikm}</b></td> </tr>' +
                        '<tr><td style="color: {series.color}">Автотарози: ' + ' <b>{point.autoScales}</b></td></tr>' +
                        '<tr><td style="color: {series.color}">Кутилаётган импорт: ' + ' <b>{point.penImport}</b></td></tr>',
                    footerFormat: '</table>',
                    valueDecimals: 2
                },
                plotOptions: {
                    mappoint: {
                        cluster: {
                            enabled: true,
                            layoutAlgorithm: {
                                type: 'optimalizedKmeans'
                            }
                        }
                    }
                },
                series: [{
                    data: data,
                    name: 'DBQ Targetlash markazi',
                    borderColor: '#BADA55',
                    nullColor: 'rgba(200, 200, 200, 0.3)',
                    showInLegend: false
                },
                    {
                    name: 'Separators',
                    type: 'mapline',
                    nullColor: '#707070',
                    showInLegend: false,
                    enableMouseTracking: false,
                    accessibility: {
                        enabled: false
                    }
                },
                {
                    type: 'mappoint',
                    colorKey: 'clusterPointsAmount',
                    name: 'АВТО ЧЕГАРА БОЖХОНА ПОСТЛАРИ',
                    color: '#000',
                    data: [
                        {
                            name: 'Довуд ота ЧБП',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Rapiscan Eagle G60',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '35004',
                            lat: 44.894319,
                            lon: 55.999802
                        },
                        {
                            name: 'Ойбек ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'THSCAN MT1213LT',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '27011',
                            lat: 40.546330,
                            lon: 69.212287
                        },
                        {
                            name: 'Олот ЧБП',
                            border: 'Туркманистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Rapiscan Eagle M60, Z-portal',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '06010',
                            lat: 39.228152,
                            lon: 63.715349
                        },
                        {
                            name: 'Маданият ЧБП',
                            border: 'Қирғизистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '03009',
                            lat: 41.048738,
                            lon: 72.345371
                        },
                        {
                            name: 'Учқўрғон ЧБП',
                            border: 'Қирғизистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '14003',
                            lat: 41.101680,
                            lon: 72.178605
                        },
                        {
                            name: 'Дўстлик ЧБП',
                            border: 'Қирғизистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Z-portal',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '03002',
                            lat: 40.573016,
                            lon: 72.759930
                        },
                        {
                            name: 'Фарғона ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '30004',
                            lat: 40.150668,
                            lon: 71.731310
                        },
                        {
                            name: 'Ўзбекистон ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Rapiscan Eagle M60',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '30010',
                            lat: 40.274883,
                            lon: 72.043306
                        },
                        {
                            name: 'Андархон ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '30005',
                            lat: 40.365731,
                            lon: 70.456673
                        },
                        {
                            name: 'Жартепа ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'HCVM-3026',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '18002',
                            lat: 39.518556,
                            lon: 67.398534
                        },
                        {
                            name: 'Хўжайли ЧБП',
                            border: 'Туркманистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '35003',
                            lat: 42.373640,
                            lon: 59.301489
                        },
                        {
                            name: 'Дўстлик ЧБП',
                            border: 'Туркманистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '33004',
                            lat: 41.182392,
                            lon: 61.370012
                        },
                        {
                            name: 'Айритом ЧБП',
                            border: 'Афғонистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Rapiscan Eagle M60, HCVM-3026, Z-portal',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '22017',
                            lat: 37.237196,
                            lon: 67.423023
                        },
                        {
                            name: 'Сариосиё ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Rapiscan Eagle G60',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '22003',
                            lat: 38.502649,
                            lon: 68.102012
                        },
                        {
                            name: 'Сўх ЧБП',
                            border: 'Қирғизистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '30012',
                            lat: 40.124864,
                            lon: 71.081251
                        },
                        {
                            name: 'Қўшкент ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '08007',
                            lat: 40.061050,
                            lon: 68.948379
                        },
                        {
                            name: 'Ховособод ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '24002',
                            lat: 40.195342,
                            lon: 68.847035
                        },
                        {
                            name: 'Бекобод авто ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'THSCA',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '27013',
                            lat: 40.212324,
                            lon: 69.204949
                        },
                        {
                            name: 'Фарҳод ЧБП',
                            border: 'Тожикистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '27023',
                            lat: 40.196277,
                            lon: 69.301853
                        },
                        {
                            name: 'Қарши-Керки ЧБП',
                            border: 'Туркманистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            lat: 38.351854,
                            lon: 65.467507,
                            code: '10008',
                        },
                        {
                            name: 'С.Нажимов ЧБП',
                            lat: 41.523911,
                            lon: 69.408371,
                            code: '27009',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'THSCAN MT1213LT',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            label: {position: 'top'}
                        },
                        {
                            name: 'Сирдарё ЧБП',
                            lat: 40.835917,
                            lon: 68.564990,
                            code: '24003',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'Rapiscan Eagle G60',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)'
                        },
                        {
                            name: 'Яллама ЧБП',
                            lat: 40.968030,
                            lon: 68.726585,
                            code: '27001',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'THSCAN MT1213LT, Z-portal',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)'
                        },
                        {
                            name: 'Ғишткўприк ЧБП', label: {position: 'top'},
                            lat: 41.471112,
                            lon: 69.357866,
                            code: '27021',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)'
                        },
                        {
                            name: 'ДБҚ Таргетлаш маркази',
                            lat: 41.310426,
                            lon: 69.250539,
                            border: false,
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: false
                        },
                        {
                            name: 'Косонсой ЧБП',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: false,
                            autoScales: false,
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '14004',
                            lat: 41.291736,
                            lon: 71.538209
                        },
                        {
                            name: 'Навоий ЧБП',
                            border: 'Қозиғистон',
                            postEm: 103,
                            inServ: 36,
                            ikm: 'THSCAN MT1213LT',
                            autoScales: 'Соз ҳолатда',
                            penImport: '15 партия (ПВХ гранула, Пиломатериалы, Игрушки, Ворсовое полотно....)',
                            code: '27008',
                            lat: 41.454453,
                            lon: 69.208586,
                            dataLabels: {
                                align: 'left',
                                x: 5,
                                verticalAlign: 'middle'
                            }
                        }]
                }]
            });
        })();
    </script>
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
<script src="assets/plugins/chartjs/js/Chart.min.js"></script>
<script src="assets/plugins/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="assets/plugins/vectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="assets/plugins/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="assets/plugins/sparkline-charts/jquery.sparkline.min.js"></script>
<script src="assets/plugins/apexcharts-bundle/js/apexcharts.min.js"></script>
<script src="assets/plugins/jquery-knob/excanvas.js"></script>
<script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
<script>
    $(function () {
        $(".knob").knob();
    });

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
<script src="assets/js/index.js"></script>
<!--app JS-->
<script src="assets/js/app.js"></script>
</body>
</html>