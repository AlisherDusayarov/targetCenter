<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06.01.2023
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String parameter = request.getParameter("parameter");
%>
<div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content bg-primary">
        <div class="modal-header">
            <h5 class="modal-title ps-3">121212121122</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" title="Чиқиш"></button>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-12 col-lg-12 col-xl-6">
                    <div class="table_div" style="position: relative; min-height: 100px; max-height: 375px">
                        <table class="table table-bordered mb-0 table-hover font-20 table_risk10">
                            <thead class="table-light fw-bold text-center">
                            <tr>
                                <th scope="col">№</th>
                                <th scope="col">Пост номи</th>
                                <th scope="col">Декларация рақами</th>
                                <th scope="col">Юк жўнатувчи давлат</th>
                                <th scope="col">Юк қабул қилувчи давлат</th>
                                <th scope="col">Йўлаги</th>
                                <th scope="col">Авто рақами</th>
                                <th scope="col">Товарлар номи</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        alert('123232323232');
        $.ajax({
            type: 'GET',
            url: '<%=request.getContextPath()%>/autodecl_modal',
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            data: {'parameter': <%=parameter%>},
            success: function (res) {
                let tbody = '';
                for(var i = 0; i < res.autodecl_modal.length; i++) {
                    tbody += '<tr><td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].order + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].post_name + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].decl_number + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].start_country + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].end_country + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].channel_way + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].auto_number + '</h5></td>' +
                        '<td><h5 class="font-16 mb-1 text-center">' + res.autodecl_modal[i].goods_name + '</h5></td></tr>';
                }
                $('.table_risk10 > tbody').empty().append(tbody);
            },
            error: function (res) {
                console.log("Хатолик рўй берди: " + res);
                document.body.style.cursor = 'default';
            }
        });
    });

    new PerfectScrollbar('.table_div');
</script>