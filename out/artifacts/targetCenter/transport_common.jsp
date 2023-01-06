<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26.12.2022
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
    <div class="col col-lg-12">
        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="only_transport_count">
                        <p class="mb-0">Транспортлар сони</p>
                        <h4 class="my-1"></h4>
                        <div></div>
                    </div>
                    <div class="widgets-icons ms-auto"><i class='bx bxs-binoculars'></i>
                    </div>
                </div>
                <div id="transport_count"></div>
            </div>
        </div>
    </div>
    <div class="col col-lg-12">
        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="only_autodecl_count">
                        <p class="mb-0">Декларациялар сони</p>
                        <h4 class="my-1"></h4>
                        <div></div>
                    </div>
                    <div class="widgets-icons ms-auto"><i class='bx bxs-group'></i>
                    </div>
                </div>
                <div id="autodecl_count"></div>
            </div>
        </div>
    </div>
    <div class="col col-lg-12">
        <div class="card radius-10">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="only_good_price">
                        <p class="mb-0">Товар қиймати</p>
                        <h4 class="my-1"></h4>
                        <div></div>
                    </div>
                    <div class="widgets-icons ms-auto"><i class='bx bxs-wallet'></i>
                    </div>
                </div>
                <div id="good_price"></div>
            </div>
        </div>
    </div>
</div>
<div class="row row-cols-1 row-cols-xl-2">
    <div class="col d-flex">
        <div class="card radius-10 w-100">
            <div class="card-body">
                <div class="row row-cols-1 row-cols-sm-3 mt-4">
                    <div class="col">
                        <div class="only_transportfullyear_cargo">
                            <p class="mb-0">Юкли машина</p>
                            <h4 class="my-1 text-white"></h4>
                            <div></div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="only_transportfullyear_empty">
                            <p class="mb-0">Юксиз машина</p>
                            <h4 class="my-1 text-white"></h4>
                            <div></div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="only_transportfullyear_car">
                            <p class="mb-0">Енгил машина</p>
                            <h4 class="my-1 text-white"></h4>
                            <div></div>
                        </div>
                    </div>
                </div>
                <div id="transport_fullyear"></div>
            </div>
        </div>
    </div>
    <div class="col d-flex">
        <div class="card radius-10 w-100">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h5 class="mb-1">Декларациялар сони</h5>
                    </div>
                </div>
            </div>
            <div class="product-list p-3 mb-3">
                <div class="row border mx-0 mb-3 py-2 radius-10 cursor-pointer">
                    <div class="col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="product-img">
                                <img src="assets/images/icons/chair.png" alt=""/>
                            </div>
                            <div class="ms-2">
                                <h6 class="mb-1">Экспорт</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm">
                        <h6 class="mb-1">Қиймати  $ 2140.00</h6>
                        <p class="mb-0">345 декларациялар</p>
                    </div>
                </div>
                <div class="row border mx-0 mb-3 py-2 radius-10 cursor-pointer">
                    <div class="col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="product-img">
                                <img src="assets/images/icons/user-interface.png" alt=""/>
                            </div>
                            <div class="ms-2">
                                <h6 class="mb-1">Импорт</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm">
                        <h6 class="mb-1">Қиймати  $ 3570.00</h6>
                        <p class="mb-0">148 декларациялар</p>
                    </div>
                </div>
                <div class="row border mx-0 mb-3 py-2 radius-10 cursor-pointer">
                    <div class="col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="product-img">
                                <img src="assets/images/icons/watch.png" alt=""/>
                            </div>
                            <div class="ms-2">
                                <h6 class="mb-1">Транзит</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm">
                        <h6 class="mb-1">Қиймати  $ 3650.00</h6>
                        <p class="mb-0">122 декларациялар</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row row-cols-1 row-cols-lg-3">
    <div class="col d-flex">
        <div class="card radius-10 w-100">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div>
                        <h5 class="mb-0">Контейнерда ташувлар миқдори</h5>
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
                <h5 class="font-weight-bold mb-1">Умумий БҚБлар сони</h5>
                <div class="d-flex align-items-center">
                    <div>
                        <h6 class="mb-0">43,540</h6>
                    </div>
                    <div class="">
                        <p class="mb-0 align-self-center font-weight-bold ms-2">4.4 <i class='bx bxs-up-arrow-alt mr-2'></i>
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
            <div class="customers-list p-3 mb-3">
                <div class="customers-list-item d-flex align-items-center border-top border-bottom p-2 cursor-pointer">
                    <div class="">
                        <img src="assets/images/avatars/avatar-3.png" class="rounded-circle" width="46" height="46" alt=""/>
                    </div>
                    <div class="ms-2">
                        <h6 class="mb-1 font-14">Хайдарова Алина</h6>
                        <p class="mb-0 font-13">emy_jac@xyz.com</p>
                    </div>
                    <div class="list-inline d-flex customers-contacts ms-auto">
                        <a href="javascript:;" class="list-inline-item">50</a>
                        <a href="javascript:;" class="list-inline-item">12%</a>
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
                    <div class="list-inline d-flex customers-contacts ms-auto">
                        <a href="javascript:;"
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
                <div id="chart19"></div>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/dashboard-eCommerce.js"></script>
<script>
    $(document).ready(function () {
        $('.only_transport_count > h4').html(today_transport_count);
        $('.only_transport_count > div').html(IncrementDecrement(today_transport_count, yesterday_transport_count));
        $('.only_autodecl_count > h4').html(today_autodecl_count);
        $('.only_autodecl_count > div').html(IncrementDecrement(today_autodecl_count, yesterday_autodecl_count));
        $('.only_good_price > h4').html('$ ' + today_autodecl_price.toFixed(3) + ' млн');
        $('.only_good_price > div').html(IncrementDecrement(today_autodecl_price, yesterday_autodecl_price));

        $('.only_transportfullyear_cargo > h4').html(today_cargo);
        $('.only_transportfullyear_cargo > div').html(IncrementDecrement(today_cargo, yesterday_cargo));
        $('.only_transportfullyear_empty > h4').html(today_empty);
        $('.only_transportfullyear_empty > div').html(IncrementDecrement(today_empty, yesterday_empty));
        $('.only_transportfullyear_car > h4').html(today_car);
        $('.only_transportfullyear_car > div').html(IncrementDecrement(today_car, yesterday_car));
    });
    new PerfectScrollbar('.product-list');
    new PerfectScrollbar('.customers-list');
</script>