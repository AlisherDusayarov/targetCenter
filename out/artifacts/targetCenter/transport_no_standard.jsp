<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 04.01.2023
  Time: 08:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-12 col-lg-12 col-xl-6">
        <div class="row row-cols-1 row-cols-lg-2">
            <div class="col">
                <div class="card radius-10 overflow-hidden">
                    <div class="card-body">
                        <div class="text-white font-35 d-flex data_risk10">
                            <i class='bx bx-task-x px-2'></i>
                            <div class="cursor-pointer risk10_modal"></div>
                        </div>
                        <p class="mb-0 mt-1">Мазкур транспорт бундай товарларни ташишга мос эмас</p>
                    </div>
                    <div id="risk10"></div>
                </div>
            </div>
            <div class="col">
                <div class="card radius-10 overflow-hidden">
                    <div class="card-body">
                        <div class="text-white font-35 d-flex data_risk17">
                            <i class='bx bx-trending-up px-2'></i>
                            <div></div>
                        </div>
                        <p class="mb-0 mt-1">Автотранспорт нархидан бир неча баробар қиммат</p>
                    </div>
                    <div id="risk17"></div>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-lg-2">
            <div class="col">
                <div class="card radius-10 overflow-hidden">
                    <div class="card-body">
                        <div class="text-white font-35 d-flex data_risk8">
                            <i class='bx bx-unite px-2'></i>
                            <div></div>
                        </div>
                        <p class="mb-0 mt-1">Жўнатувчи учун товар ноодатий</p>
                    </div>
                    <div id="risk8"></div>
                </div>
            </div>
            <div class="col">
                <div class="card radius-10 overflow-hidden">
                    <div class="card-body">
                        <div class="text-white font-35 d-flex data_risk9">
                            <i class='bx bxs-search'></i>
                            <div></div>
                        </div>
                        <p class="mb-0 mt-1">Товарларнинг ҳажми ва миқдори ноодатий</p>
                    </div>
                    <div id="risk9"></div>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-lg-2">
            <div class="col">
                <div class="card radius-10 overflow-hidden ">
                    <div class="card-body">
                        <div class="text-white font-35 d-flex data_risk14">
                            <i class='bx bx-recycle px-2'></i>
                            <div></div>
                        </div>
                        <p class="mb-0 mt-1">Автотранспорт учун ноодатий ташиш амалга оширилмоқда</p>
                    </div>
                    <div id="risk14"></div>
                </div>
            </div>
            <div class="col">
                <div class="card radius-10 overflow-hidden">
                    <div class="card-body">
                        <div class="text-white font-35 d-flex data_risk27">
                            <i class='bx bx-wrench px-2'></i>
                            <div></div>
                        </div>
                        <p class="mb-0 mt-1">Товарлар ноодатий қадоқланган</p><br />
                    </div>
                    <div id="risk27"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-lg-12 col-xl-6">
        <div class="card radius-10">
            <div class="card-body">
                <div id="submitted-application1"></div>
            </div>
        </div>
        <div class="card radius-10">
            <div class="card-body">
                <div id="submitted-application"></div>
            </div>
        </div>
    </div>
</div>
<div class="row pt-3">
    <h5 class="mb-0 fw-bold text-uppercase text-center">Ноанаънавий юк жўнатувчи давлатлардан ҳаракатланган товар партиялари (Постлар бўйича)</h5>
    <hr/>
    <div class="card">
        <div class="card-body">
            <div class="table_div" style="position: relative; min-height: 100px; max-height: 305px">
                <table class="table table-bordered mb-0 table-hover font-20 table_risk5">
                    <thead class="table-light fw-bold text-center">
                    <tr>
                        <th scope="col">№</th>
                        <th scope="col" class="d-none">Пост коди</th>
                        <th scope="col">Юк жўнатувчи давлат</th>
                        <th scope="col">Қабул қилувчи пост номи</th>
                        <th scope="col">Товар партияси сони</th>
                        <th scope="col">Фоизи</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-12 col-lg-8 col-xl-8">
        <div class="card radius-10 overflow-hidden">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h6 class="mb-0">Белгиланган муддатда манзил божхона постига етиб бормаган авто
                            транспортлар - мажбуриятномалар кесимида </h6>
                    </div>
                </div>
                <div class="chart-container">
                    <div id="recruitment-cost"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-lg-4 col-xl-4">
        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h6 class="mb-0">Контейнер тури ташилаётган товар хусусиятига мос эмас</h6>
                    </div>
                </div>
                <div class="">
                    <div id="top-referrers"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-12 col-lg-4 col-xl-4 ">
        <div class="card radius-10 py-1">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="">
                        <h3 class="mt-3 mb-0">54</h3>
                        <p class="mb-0">Нечта декларация расмийлаштирилган</p>
                    </div>
                    <div class="card-content dash-array-chart-box ms-auto">
                        <div id="screening-calls"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card radius-10 py-1">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="">
                        <h3 class="mt-3 mb-0">82</h3>
                        <p class="mb-0">Нечта декларация назоратда</p>
                    </div>
                    <div class="card-content dash-array-chart-box ms-auto">
                        <div id="assignments"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card radius-10 py-1">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="">
                        <h3 class="mt-3 mb-0">92</h3>
                        <p class="mb-0">Нечта декларация назоратдан ечилган</p>
                    </div>
                    <div class="card-content dash-array-chart-box ms-auto">
                        <div id="interviews"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-lg-4 col-xl-4 ">
        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h6 class="mb-0">Назоратдаги кузатувга олинган товарлар улуши</h6>
                    </div>
                </div>
                <div class="text-center chart-container-9 d-flex align-items-center justify-content-center">
                    <div id="vacancies-status"></div>
                </div>
            </div>
            <div class="card-footer bg-transparent border-top mb-1">
                <div class="row align-items-center text-center">
                    <div class="col border-end">
                        <h4 class="mb-0">713</h4>
                        <small class="extra-small-font">Жами товар партиялари</small>
                    </div>
                    <div class="col border-end">
                        <h4 class="mb-0">577</h4>
                        <small class="extra-small-font">Кузатувга олинган товар партиялари</small>
                    </div>
                    <div class="col">
                        <h4 class="mb-0">205</h4>
                        <small class="extra-small-font">Манзилга етказилган товар партиялари</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-lg-4 col-xl-4 ">
        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h6 class="mb-0"> Контейнер назорат рақами нотўғри ҳолатлар улуши</h6>
                    </div>
                </div>
                <div class="text-center chart-container-9 d-flex align-items-center justify-content-center">
                    <div id="vacancies-status1"></div>
                </div>
            </div>
            <div class="card-footer bg-transparent border-top">
                <div class="row align-items-center text-center ">
                    <div class="col border-end">
                        <h4 class="mb-0">452</h4>
                        <small class="extra-small-font">Назорат рақами нотўғри контейнерлар сони</small>
                    </div>
                    <div class="col">
                        <h4 class="mb-0">680</h4>
                        <small class="extra-small-font">Жами контейнерлар сони</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="examplePrimaryModal">
</div>
<script src="assets/js/dashboard-human-resources.js"></script>
<script>
    $(document).ready(function () {
        $('.data_risk10 > div').html(today_risk10);
        $('.data_risk17 > div').html(today_risk17);
        $('.data_risk8 > div').html(today_risk8);
        $('.data_risk9 > div').html(today_risk9);
        $('.data_risk14 > div').html(today_risk14);
        $('.data_risk27 > div').html(today_risk27);

        $.ajax({
            type: 'GET',
            url: '<%=request.getContextPath()%>/post_percent',
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            success: function (res) {
                let tbody = '';
                for(var i = 0; i < res.post_percent.length; i++) {
                    tbody += '<tr><td><h5 class="font-16 mb-1 text-center">' + res.post_percent[i].order + '</h5></td>' +
                        '<td class="d-none"><h5 class="font-16 mb-1 text-center">' + res.post_percent[i].post_code + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center"><i class="flag-icon flag-icon-' + res.post_percent[i].flag + '"></i> ' + res.post_percent[i].country + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.post_percent[i].post_name + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.post_percent[i].direct_count + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.post_percent[i].percent + '</h5></td></tr>';
                }
                $('.table_risk5 > tbody').empty().append(tbody);
            },
            error: function (res) {
                console.log("Хатолик рўй берди: " + res);
                document.body.style.cursor = 'default';
            }
        });

        $(document).on('click', '.risk10_modal', function () {
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/transport_modal.jsp',
                dataType: 'html',
                header: 'Content-type: text/html; charset=utf-8',
                data: {'parameter': '10'},
                success: function (res) {
                    $('#examplePrimaryModal').html(res).modal('show');
                },
                error: function (res) {
                    console.log("Хатолик рўй берди: " + res);
                }
            });
        });
    });

    new PerfectScrollbar('.table_div');
</script>