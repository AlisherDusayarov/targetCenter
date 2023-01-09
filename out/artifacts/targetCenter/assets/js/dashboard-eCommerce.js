$(function () {
    "use strict";
    var week_date = [];
    var transport_count = [];
    $.ajax({
        type: 'GET',
        url: 'transport_by_region',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        async: false,
        success: function (response) {
            for (var i = 0; i < response.transport_by_region.length - 1; i++) {
                transport_count[i] = response.transport_by_region[i].amount;
                week_date[i] = response.transport_by_region[i].date;
            }
            yesterday_transport_count = response.transport_by_region[6].amount;
            today_transport_count = response.transport_by_region[7].amount;
            Transport_Count_ByRegion(transport_count, week_date);
        },
        error: function (response) {
            var r = jQuery.parseJSON(response.responseText);
            alert('Message: ' + r.Message);
            alert('StackTrace: ' + r.StackTrace);
            alert('ExceptionType: ' + r.ExceptionType);
        }
    });

    function Transport_Count_ByRegion(data1, data2) {
        e = {
            series: [{
                name: "Transport",
                data: data1
            }],
            chart: {
                type: "line",
                height: 65,
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: 0,
                    top: 3,
                    left: 14,
                    blur: 4,
                    opacity: .12,
                    color: "#fff"
                },
                sparkline: {
                    enabled: !0
                }
            },
            markers: {
                size: 3,
                colors: ["#fff"],
                strokeColors: "#fff",
                strokeWidth: 2,
                hover: {
                    size: 7
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 3,
                curve: "straight"
            },
            colors: ["#fff"],
            xaxis: {
                categories: data2
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                theme: "dark",
                fixed: {
                    enabled: !1
                },
                x: {
                    show: true
                },
                y: {
                    title: {
                        formatter: function (e) {
                            return ""
                        }
                    }
                },
                marker: {
                    show: !1
                }
            }
        };
        new ApexCharts(document.querySelector("#transport_count"), e).render();
    }

    var autodecl_count = [];
    var autodecl_price = [];
    $.ajax({
        type: 'GET',
        url: 'autodecl_by_region',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        async: false,
        success: function (response) {
            for (var i = 0; i < response.autodecl_by_region.length - 1; i++) {
                autodecl_count[i] = response.autodecl_by_region[i].amount;
                autodecl_price[i] = response.autodecl_by_region[i].price;
            }
            yesterday_autodecl_count = response.autodecl_by_region[6].amount;
            today_autodecl_count = response.autodecl_by_region[7].amount;
            yesterday_autodecl_price = response.autodecl_by_region[6].price;
            today_autodecl_price = response.autodecl_by_region[7].price;
            AutoDecl_Count_ByRegion(autodecl_count, week_date);
        },
        error: function (response) {
            var r = jQuery.parseJSON(response.responseText);
            alert('Message: ' + r.Message);
            alert('StackTrace: ' + r.StackTrace);
            alert('ExceptionType: ' + r.ExceptionType);
        }
    });

    function AutoDecl_Count_ByRegion(data1, data2) {
        e = {
            series: [{
                name: "Auto Declaration",
                data: data1
            }],
            chart: {
                type: "line",
                height: 65,
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: 0,
                    top: 3,
                    left: 14,
                    blur: 4,
                    opacity: .12,
                    color: "#fff"
                },
                sparkline: {
                    enabled: !0
                }
            },
            markers: {
                size: 3,
                colors: ["#fff"],
                strokeColors: "#fff",
                strokeWidth: 2,
                hover: {
                    size: 7
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 3,
                curve: "straight"
            },
            colors: ["#fff"],
            xaxis: {
                //categories: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
                categories: data2
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                theme: "dark",
                fixed: {
                    enabled: !1
                },
                x: {
                    show: true
                },
                y: {
                    title: {
                        formatter: function (e) {
                            return ""
                        }
                    }
                },
                marker: {
                    show: !1
                }
            }
        };
        new ApexCharts(document.querySelector("#autodecl_count"), e).render();
    }


    var e = {
        series: [{
            name: "Goods Price",
            data: autodecl_price
        }],
        chart: {
            type: "line",
            height: 65,
            toolbar: {
                show: !1
            },
            zoom: {
                enabled: !1
            },
            dropShadow: {
                enabled: 0,
                top: 3,
                left: 14,
                blur: 4,
                opacity: .12,
                color: "#fff"
            },
            sparkline: {
                enabled: !0
            }
        },
        markers: {
            size: 3,
            colors: ["#fff"],
            strokeColors: "#fff",
            strokeWidth: 2,
            hover: {
                size: 7
            }
        },
        dataLabels: {
            enabled: !1
        },
        stroke: {
            show: !0,
            width: 3,
            curve: "straight"
        },
        colors: ["#fff"],
        xaxis: {
            categories: week_date
        },
        fill: {
            opacity: 1
        },
        tooltip: {
            theme: "dark",
            fixed: {
                enabled: !1
            },
            x: {
                show: true
            },
            y: {
                title: {
                    formatter: function (e) {
                        return ""
                    }
                }
            },
            marker: {
                show: !1
            }
        }
    };
    new ApexCharts(document.querySelector("#good_price"), e).render();


    var cargo = [];
    var empty = [];
    var car = [];
    var months = [];
    $.ajax({
        type: 'GET',
        url: 'transport_fullyear_by_region',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        async: false,
        success: function (response) {
            for (var i = 0; i < 11; i++) {
                cargo[i] = response.transport_fullyear_by_region[i].cargo;
                empty[i] = response.transport_fullyear_by_region[i].empty;
                car[i] = response.transport_fullyear_by_region[i].car;
                months[i] = response.transport_fullyear_by_region[i].months;
            }
            yesterday_cargo = response.transport_fullyear_by_region[11].cargo;
            today_cargo = response.transport_fullyear_by_region[12].cargo;
            yesterday_empty = response.transport_fullyear_by_region[11].empty;
            today_empty = response.transport_fullyear_by_region[12].empty;
            yesterday_car = response.transport_fullyear_by_region[11].car;
            today_car = response.transport_fullyear_by_region[12].car;
            Transport_FullYear_ByRegion(cargo, empty, car, months);
        },
        error: function (response) {
            var r = jQuery.parseJSON(response.responseText);
            alert('Message: ' + r.Message);
            alert('StackTrace: ' + r.StackTrace);
            alert('ExceptionType: ' + r.ExceptionType);
        }
    });

    function Transport_FullYear_ByRegion(data1, data2, data3, data4) {
        e = {
            series: [{
                name: "Юкли машина",
                data: data1
            }, {
                name: "Юксиз машина",
                data: data2
            }, {
                name: "Енгил машина",
                data: data3
            }],
            chart: {
                foreColor: "#9ba7b2",
                type: "bar",
                height: 300,
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !1,
                    columnWidth: "55%",
                    endingShape: "rounded"
                }
            },
            grid: {
                borderColor: 'rgba(255, 255, 255, 0.12)',
                show: true,
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 2,
                colors: ["transparent"]
            },
            colors: ["rgba(255, 255, 255, 0.60)", "#fff", "rgba(255, 255, 255, 0.25)"],
            xaxis: {
                categories: data4
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                theme: "dark",
                y: {
                    formatter: function (e) {
                        return " " + e + " дона"
                    }
                }
            }
        };
        new ApexCharts(document.querySelector("#transport_fullyear"), e).render();
    }


    e = {
        series: [35, 55, 14],
        chart: {
            height: 240,
            type: "donut"
        },
        legend: {
            position: "bottom",
            show: !1
        },
        plotOptions: {
            pie: {
                donut: {
                    size: "80%"
                }
            }
        },
        colors: ["rgba(255, 255, 255, 0.70)", "#fff", "rgba(255, 255, 255, 0.55)", "rgba(255, 255, 255, 0.25)"],
        dataLabels: {
            enabled: !1
        },
        tooltip: {
            enabled: false,
            theme: "dark",
            y: {
                formatter: function (e) {
                    return "$ " + e + " thousands"
                }
            }
        },
        labels: ["Импорт", "Экспорт", "Транзит"],
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    height: 200
                },
                legend: {
                    position: "bottom"
                }
            }
        }]
    };
    new ApexCharts(document.querySelector("#chart15"), e).render();
    e = {
        chart: {
            height: 180,
            type: "radialBar",
            toolbar: {
                show: !1
            }
        },
        plotOptions: {
            radialBar: {
                hollow: {
                    margin: 0,
                    size: "78%",
                    background: "transparent",
                    image: void 0,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: "front",
                    dropShadow: {
                        enabled: !1,
                        top: 3,
                        left: 0,
                        blur: 4,
                        color: "rgba(0, 169, 255, 0.85)",
                        opacity: .65
                    }
                },
                track: {
                    background: "rgba(255, 255, 255, 0.12)",
                    margin: 0,
                    dropShadow: {
                        enabled: !1,
                        top: -3,
                        left: 0,
                        blur: 4,
                        color: "rgba(0, 169, 255, 0.85)",
                        opacity: .65
                    }
                },
                dataLabels: {
                    showOn: "always",
                    name: {
                        offsetY: -8,
                        show: !0,
                        color: "#fff",
                        fontSize: "15px"
                    },
                    value: {
                        formatter: function (e) {
                            return e + "%"
                        },
                        color: "#fff",
                        fontSize: "25px",
                        show: !0,
                        offsetY: 10
                    }
                }
            }
        },
        fill: {
            type: "gradient",
            gradient: {
                shade: "light",
                type: "horizontal",
                shadeIntensity: .5,
                gradientToColors: ["#71d037"],
                inverseColors: !1,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#71d037"],
        series: [68],
        stroke: {
            lineCap: "round",
            width: "5"
        },
        labels: ["Яшил"]
    };
    new ApexCharts(document.querySelector("#chart16"), e).render();
    e = {
        chart: {
            height: 180,
            type: "radialBar",
            toolbar: {
                show: !1
            }
        },
        plotOptions: {
            radialBar: {
                hollow: {
                    margin: 0,
                    size: "78%",
                    background: "transparent",
                    image: void 0,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: "front",
                    dropShadow: {
                        enabled: !1,
                        top: 3,
                        left: 0,
                        blur: 4,
                        color: "rgba(0, 169, 255, 0.85)",
                        opacity: .65
                    }
                },
                track: {
                    background: "rgba(255, 255, 255, 0.12)",
                    margin: 0,
                    dropShadow: {
                        enabled: !1,
                        top: -3,
                        left: 0,
                        blur: 4,
                        color: "rgba(0, 169, 255, 0.85)",
                        opacity: .65
                    }
                },
                dataLabels: {
                    showOn: "always",
                    name: {
                        offsetY: -8,
                        show: !0,
                        color: "#fff",
                        fontSize: "15px"
                    },
                    value: {
                        formatter: function (e) {
                            return e + "%"
                        },
                        color: "#fff",
                        fontSize: "25px",
                        show: !0,
                        offsetY: 10
                    }
                }
            }
        },
        fill: {
            type: "gradient",
            gradient: {
                shade: "light",
                type: "horizontal",
                shadeIntensity: .5,
                gradientToColors: ["#d0ba48"],
                inverseColors: !1,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#d0ba48"],
        series: [60],
        stroke: {
            lineCap: "round"
        },
        labels: ["Сариқ"]
    };
    new ApexCharts(document.querySelector("#chart17"), e).render();
    e = {
        chart: {
            height: 180,
            type: "radialBar",
            toolbar: {
                show: !1
            }
        },
        plotOptions: {
            radialBar: {
                hollow: {
                    margin: 0,
                    size: "78%",
                    background: "transparent",
                    image: void 0,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: "front",
                    dropShadow: {
                        enabled: !1,
                        top: 3,
                        left: 0,
                        blur: 4,
                        color: "rgba(0, 169, 255, 0.85)",
                        opacity: .65
                    }
                },
                track: {
                    background: "rgba(255, 255, 255, 0.12)",
                    margin: 0,
                    dropShadow: {
                        enabled: !1,
                        top: -3,
                        left: 0,
                        blur: 4,
                        color: "rgba(0, 169, 255, 0.85)",
                        opacity: .65
                    }
                },
                dataLabels: {
                    showOn: "always",
                    name: {
                        offsetY: -8,
                        show: !0,
                        color: "#fff",
                        fontSize: "15px"
                    },
                    value: {
                        formatter: function (e) {
                            return e + "%"
                        },
                        color: "#fff",
                        fontSize: "25px",
                        show: !0,
                        offsetY: 10
                    }
                }
            }
        },
        fill: {
            type: "gradient",
            gradient: {
                shade: "light",
                type: "horizontal",
                shadeIntensity: .5,
                gradientToColors: ["#ff0000"],
                inverseColors: !1,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#ff0000"],
        series: [45],
        stroke: {
            lineCap: "round"
        },
        labels: ["Қизил"]
    };
    new ApexCharts(document.querySelector("#chart18"), e).render();
    e = {
        series: [{
            name: "Orders",
            data: [240, 160, 671, 414, 555, 257, 901, 613, 727, 414, 555, 257]
        }],
        chart: {
            foreColor: "rgba(255, 255, 255, 0.65)",
            type: "bar",
            height: 270,
            toolbar: {
                show: !1
            },
            zoom: {
                enabled: !1
            },
            dropShadow: {
                enabled: 0,
                top: 3,
                left: 14,
                blur: 4,
                opacity: .12,
                color: "#0d6efd"
            },
            sparkline: {
                enabled: !1
            }
        },
        markers: {
            size: 0,
            colors: ["#0d6efd"],
            strokeColors: "#fff",
            strokeWidth: 2,
            hover: {
                size: 7
            }
        },
        plotOptions: {
            bar: {
                horizontal: !1,
                columnWidth: "30%",
                endingShape: "rounded"
            }
        },
        dataLabels: {
            enabled: !1
        },
        stroke: {
            show: !0,
            width: 3,
            curve: "smooth"
        },
        grid: {
            borderColor: 'rgba(255, 255, 255, 0.12)',
            show: true,
        },
        colors: ["#fff"],
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        },
        fill: {
            opacity: 1
        },
        tooltip: {
            theme: "dark",
            fixed: {
                enabled: !1
            },
            x: {
                show: !0
            },
            y: {
                formatter: function (e) {
                    return " " + e + " "
                }
            },
            marker: {
                show: !1
            }
        }
    };
    new ApexCharts(document.querySelector("#chart19"), e).render();
    e = {
        series: [87],
        chart: {
            height: 310,
            type: "radialBar",
            offsetY: -10
        },
        plotOptions: {
            radialBar: {
                startAngle: -135,
                endAngle: 135,
                hollow: {
                    margin: 0,
                    size: "70%",
                    background: "transparent"
                },
                track: {
                    background: "rgba(255, 255, 255, 0.25)",
                    strokeWidth: "100%",
                    dropShadow: {
                        enabled: !1,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: .12
                    }
                },
                dataLabels: {
                    name: {
                        fontSize: "16px",
                        color: "#fff",
                        offsetY: 5
                    },
                    value: {
                        offsetY: 20,
                        fontSize: "30px",
                        color: "#fff",
                        formatter: function (e) {
                            return e + "%"
                        }
                    }
                }
            }
        },
        fill: {
            type: "gradient",
            gradient: {
                shade: "dark",
                shadeIntensity: .15,
                inverseColors: !1,
                gradientToColors: ["#fff"],
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 50, 65, 91]
            }
        },
        colors: ["#fff"],
        stroke: {
            dashArray: 4
        },
        labels: ["Total Sales"],
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    height: 300
                }
            }
        }]
    };
    new ApexCharts(document.querySelector("#chart20"), e).render();
    e = {
        series: [{
            name: "Visitors",
            data: [427, 613, 801, 457, 605, 414, 671, 360, 540]
        }],
        chart: {
            foreColor: "rgba(255, 255, 255, 0.50)",
            type: "bar",
            height: 390,
            toolbar: {
                show: !1
            },
            zoom: {
                enabled: !1
            },
            dropShadow: {
                enabled: !1,
                top: 3,
                left: 10,
                blur: 3,
                opacity: .1,
                color: "#0d6efd"
            },
            sparkline: {
                enabled: !1
            }
        },
        plotOptions: {
            radialBar: {
                hollow: {
                    size: "70%"
                }
            },
            bar: {
                horizontal: !1,
                columnWidth: "35%",
                endingShape: "rounded"
            }
        },
        markers: {
            size: 0,
            colors: ["#fff"],
            strokeColors: "#fff",
            strokeWidth: 2,
            hover: {
                size: 7
            }
        },
        dataLabels: {
            enabled: !1
        },
        grid: {
            borderColor: 'rgba(255, 255, 255, 0.12)',
            show: true,
        },
        stroke: {
            show: !0,
            width: 3,
            curve: "smooth"
        },
        colors: ["#fff"],
        xaxis: {
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep"]
        },
        fill: {
            opacity: 1
        },
        tooltip: {
            theme: "dark",
            y: {
                formatter: function (e) {
                    return "$ " + e + " thousands"
                }
            }
        }
    };
    new ApexCharts(document.querySelector("#chart21"), e).render();
});