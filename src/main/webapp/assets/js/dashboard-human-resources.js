var today_risk8, today_risk9, today_risk10, today_risk14, today_risk17, today_risk27;

$(function () {
    "use strict";
    var week_date = [];
    var risk8 = [];
    var risk9 = [];
    var risk10 = [];
    var risk14 = [];
    var risk17 = [];
    var risk27 = [];
    $.ajax({
        type: 'GET',
        url: 'autodecl_nostandard_week',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        async: false,
        success: function (response) {
            for (var i = 0; i < response.autodecl_nostandard_week.length - 1; i++) {
                week_date[i] = response.autodecl_nostandard_week[i].date;
                risk8[i] = response.autodecl_nostandard_week[i].risk8;
                risk9[i] = response.autodecl_nostandard_week[i].risk9;
                risk10[i] = response.autodecl_nostandard_week[i].risk10;
                risk14[i] = response.autodecl_nostandard_week[i].risk14;
                risk17[i] = response.autodecl_nostandard_week[i].risk17;
                risk27[i] = response.autodecl_nostandard_week[i].risk27;
            }
            today_risk8 = parseInt(response.autodecl_nostandard_week[response.autodecl_nostandard_week.length - 1].risk8);
            today_risk9 = parseInt(response.autodecl_nostandard_week[response.autodecl_nostandard_week.length - 1].risk9);
            today_risk10 = parseInt(response.autodecl_nostandard_week[response.autodecl_nostandard_week.length - 1].risk10);
            today_risk14 = parseInt(response.autodecl_nostandard_week[response.autodecl_nostandard_week.length - 1].risk14);
            today_risk17 = parseInt(response.autodecl_nostandard_week[response.autodecl_nostandard_week.length - 1].risk17);
            today_risk27 = parseInt(response.autodecl_nostandard_week[response.autodecl_nostandard_week.length - 1].risk27);
            Risk10(risk10, week_date);
            Risk17(risk17, week_date);
            Risk8(risk8, week_date);
            Risk14(risk14, week_date);
            Risk27(risk27, week_date);
            Risk9(risk9, week_date);
        },
        error: function (response) {
            var r = jQuery.parseJSON(response.responseText);
            alert('Message: ' + r.Message);
            alert('StackTrace: ' + r.StackTrace);
            alert('ExceptionType: ' + r.ExceptionType);
        }
    });

    // mezon-10
    function Risk10(data1, data2) {
        var options1 = {
            chart: {
                type: 'area',
                height: 110,
                sparkline: {
                    enabled: true
                }
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    //gradientToColors: ['rgba(255, 255, 255, 0.12)'],
                    shadeIntensity: 1,
                    type: 'vertical',
                    opacityFrom: 0.7,
                    opacityTo: 0.1,
                    stops: [0, 100, 100, 100]
                },
            },
            colors: ['#FFFFFF'],
            series: [{
                name: 'Қиймати ',
                data: data1
            }],
            xaxis: {
                categories: data2
            },
            /*dataLabels: {
                enabled: true,
                textAnchor: 'start',
                style: {
                    colors: ['#fff']
                },
                formatter: function (val, opt) {
                    return opt.w.globals.labels[opt.dataPointIndex] + ":  " + val
                },
                offsetX: 0,
                dropShadow: {
                    enabled: true
                }
            },*/
            stroke: {
                width: 2.5,
                curve: 'smooth',
                dashArray: [0]
            },
            tooltip: {
                theme: 'dark',
                enabled: true
            }
        }
        new ApexCharts(document.querySelector("#risk10"), options1).render();
    }

    // mezon-17
    function Risk17(data1, data2) {
        var options1 = {
            chart: {
                type: 'area',
                height: 110,
                sparkline: {
                    enabled: true
                }
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    //gradientToColors: ['rgba(255, 255, 255, 0.12)'],
                    shadeIntensity: 1,
                    type: 'vertical',
                    opacityFrom: 0.7,
                    opacityTo: 0.1,
                    stops: [0, 100, 100, 100]
                },
            },
            colors: ["#fff"],
            series: [{
                name: 'Қиймати ',
                data: data1
            }],
            xaxis: {
                categories: data2
            },
            stroke: {
                width: 2.5,
                curve: 'smooth',
                dashArray: [0]
            },
            tooltip: {
                theme: 'dark',
                enabled: true
            }
        }
        new ApexCharts(document.querySelector("#risk17"), options1).render();
    }

    // mezon-8
    function Risk8(data1, data2) {
        var options1 = {
            chart: {
                type: 'area',
                height: 110,
                sparkline: {
                    enabled: true
                }
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    //gradientToColors: ['rgba(255, 255, 255, 0.12)'],
                    shadeIntensity: 1,
                    type: 'vertical',
                    opacityFrom: 0.7,
                    opacityTo: 0.1,
                    stops: [0, 100, 100, 100]
                },
            },
            colors: ["#fff"],
            series: [{
                name: 'Қиймати ',
                data: data1
            }],
            xaxis: {
                categories: data2
            },
            stroke: {
                width: 2.5,
                curve: 'smooth',
                dashArray: [0]
            },
            tooltip: {
                theme: 'dark',
                enabled: true
            }
        }
        new ApexCharts(document.querySelector("#risk8"), options1).render();
    }

    // mezon-14
    function Risk14(data1, data2) {
        var options1 = {
            chart: {
                type: 'area',
                height: 110,
                sparkline: {
                    enabled: true
                }
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    // gradientToColors: ['rgba(255, 255, 255, 0.12)'],
                    shadeIntensity: 1,
                    type: 'vertical',
                    opacityFrom: 0.7,
                    opacityTo: 0.1,
                    stops: [0, 100, 100, 100]
                },
            },
            colors: ["#fff"],
            series: [{
                name: 'Қиймати ',
                data: data1
            }],
            xaxis: {
                categories: data2
            },
            stroke: {
                width: 2.5,
                curve: 'smooth',
                dashArray: [0]
            },
            tooltip: {
                theme: 'dark',
                enable: true
            }
        }
        new ApexCharts(document.querySelector("#risk14"), options1).render();
    }

    // mezon-27
    function Risk27(data1, data2) {
        var options1 = {
            chart: {
                type: 'area',
                height: 110,
                sparkline: {
                    enabled: true
                }
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    //gradientToColors: ['rgba(255, 255, 255, 0.12)'],
                    shadeIntensity: 1,
                    type: 'vertical',
                    opacityFrom: 0.7,
                    opacityTo: 0.1,
                    stops: [0, 100, 100, 100]
                },
            },
            colors: ["#fff"],
            series: [{
                name: 'Қиймати ',
                data: data1
            }],
            xaxis: {
                categories: data2
            },
            stroke: {
                width: 2.5,
                curve: 'smooth',
                dashArray: [0]
            },
            tooltip: {
                theme: 'dark',
                enable: true
            }
        }
        new ApexCharts(document.querySelector("#risk27"), options1).render();
    }


    // mezon-9
    function Risk9(data1, data2) {
        var options1 = {
            chart: {
                type: 'area',
                height: 110,
                sparkline: {
                    enabled: true
                }
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'gradient',
                gradient: {
                    shade: 'light',
                    // gradientToColors: ['rgba(255, 255, 255, 0.12)'],
                    shadeIntensity: 1,
                    type: 'vertical',
                    opacityFrom: 0.7,
                    opacityTo: 0.1,
                    stops: [0, 100, 100, 100]
                },
            },
            colors: ["#fff"],
            series: [{
                name: 'Қиймати ',
                data: data1
            }],
            xaxis: {
                categories: data2
            },
            stroke: {
                width: 2.5,
                curve: 'smooth',
                dashArray: [0]
            },
            tooltip: {
                theme: 'dark',
                enable: true
            }
        }
        new ApexCharts(document.querySelector("#risk9"), options1).render();
    }




    var options = {
        chart: {
            height: 315,
            type: 'bar',
            foreColor: 'rgba(255, 255, 255, 0.65)',
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            bar: {
                columnWidth: '50%',
                endingShape: 'rounded',
                dataLabels: {
                    position: 'center',  // top, center, bottom
                },
            }
        },
        dataLabels: {
            enabled: true,
            formatter: function (val) {
                return parseInt(val);
            },
            offsetY: -20,
            style: {
                fontSize: '16px',
                fontWeight: 'bold',
                colors: ["rgba(0, 0, 0, 0.75)"]
            }
        },
        stroke: {
            width: 0,
        },
        series: [{
            name: 'Сони',
            data: [2, 3, 4, 4, 4, 3, 3]
        }],
        xaxis: {
            categories: ["5 кундан кўп", "3-5 кун", " 1-3 кун", "бугун", "1-3 кун", "3-5 кун", "5 кундан кўп"],
            position: 'bottom',
            labels: {
                offsetY: 0
            },
            axisBorder: {
                show: true
            },
            axisTicks: {
                show: true
            }
        },
        tooltip: {
            enabled: true,
            theme: 'dark'
        },
        grid: {
            show: true,
            borderColor: 'rgba(255, 255, 255, 0.12)'
        },
        fill: {
            opacity: 1
        },
        colors: '#FFFFFF',
        yaxis: {
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false
            },
            labels: {
                show: false,
                formatter: function (val) {
                    return parseInt(val);
                }
            }
        },
        title: {
            text: 'Қидирувдаги автотранспортлар',
            floating: true,
            offsetY: 0,
            align: 'center',
            style: {
                fontSize: '18px',
                color: '#fff'
            }
        }
    }
    var chart = new ApexCharts(document.querySelector("#submitted-application"), options);
    chart.render();



    // chart 1  Majburiyatnoma

    var options = {
        chart: {
            height: 330,
            type: 'bar',
            stacked: false,
            foreColor: 'rgba(255, 255, 255, 0.65)',
            toolbar: {
                show: false
            },
            dropShadow: {
                enabled: false,
                opacity: 0.1,
                blur: 3,
                left: -7,
                top: 22,
            }
        },
        plotOptions: {
            bar: {
                columnWidth: '50%',
                endingShape: 'rounded',
                dataLabels: {
                    position: 'top', // top, center, bottom
                },
            }
        },
        dataLabels: {
            enabled: false,
            formatter: function (val) {
                return parseInt(val);
            },
            offsetY: -20,
            style: {
                fontSize: '14px',
                colors: ["#304758"]
            }
        },
        stroke: {
            show: !0,
            width: 2,
            colors: ["transparent"]
        },
        grid: {
            show: true,
            borderColor: 'rgba(255, 255, 255, 0.12)',
        },
        series: [{
            name: 'Юкли',
            data: [44, 75, 37, 56, 61, 58, 83, 60, 66]
        }, {
            name: 'Юксиз',
            data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
        }, {
            name: 'Енгил',
            data: [20, 41, 26, 46, 30, 50, 12, 53, 41]
        }],
        xaxis: {
            categories: ['Январ', 'Феврал', 'Март', 'Апрел', 'Май', 'Июн', 'Июл', 'Август', 'Сентябр'],
        },
        fill: {
            opacity: 1
        },
        colors: ["rgba(255, 255, 255, 0.60)", "#fff", "rgba(255, 255, 255, 0.25)"],
        tooltip: {
            theme: 'dark',
            y: {
                formatter: function (val) {
                    return "$ " + val + " "
                }
            }
        },
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    height: 330,
                    stacked: true,
                },
                legend: {
                    show: !0,
                    position: "top",
                    horizontalAlign: "left",
                    offsetX: -20,
                    fontSize: "10px",
                    markers: {
                        radius: 50,
                        width: 10,
                        height: 10
                    }
                },
                plotOptions: {
                    bar: {
                        columnWidth: '30%'
                    }
                }
            }
        }]
    }
    var chart = new ApexCharts(
        document.querySelector("#recruitment-cost"),
        options
    );
    chart.render();



// chart 3  deklarasiya

    var options = {
        chart: {
            width: 150,
            //height: 150,
            type: 'radialBar',
        },
        plotOptions: {
            radialBar: {
                //startAngle: -135,
                //endAngle: 135,
                hollow: {
                    margin: 0,
                    size: '70%',
                    background: 'rgba(0, 0, 0, 0.0)',
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: true,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.1
                    }
                },
                track: {
                    background: 'rgba(255, 255, 255, 0.12)',
                    strokeWidth: '100%',
                    margin: 0, // margin is in pixels
                    dropShadow: {
                        enabled: true,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.1
                    }
                },
                dataLabels: {
                    name: {
                        fontSize: '14px',
                        color: '#fff',
                        offsetY: -10,
                        show: false
                    },
                    value: {
                        offsetY: 6,
                        fontSize: '20px',
                        color: '#fff',
                        formatter: function (val) {
                            return val + "%";
                        }
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                shadeIntensity: 0.15,
                gradientToColors: ['#fff'],
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 50, 65, 91]
            },
        },
        stroke: {
            dashArray: 4,
        },
        colors: ["#fff"],
        series: [64],
        labels: ['Screening Calls'],

    }
    var chart = new ApexCharts(
        document.querySelector("#screening-calls"),
        options
    );
    chart.render();


// chart 4  derlarasiya nazoratda

    var options = {
        chart: {
            width: 150,
            //height: 150,
            type: 'radialBar',
        },
        plotOptions: {
            radialBar: {
                //startAngle: -135,
                //endAngle: 135,
                hollow: {
                    margin: 0,
                    size: '70%',
                    background: 'rgba(0, 0, 0, 0.0)',
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: true,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.1
                    }
                },
                track: {
                    background: 'rgba(255, 255, 255, 0.12)',
                    strokeWidth: '100%',
                    margin: 0, // margin is in pixels
                    dropShadow: {
                        enabled: true,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.1
                    }
                },
                dataLabels: {
                    name: {
                        fontSize: '14px',
                        color: '#fff',
                        offsetY: -10,
                        show: false
                    },
                    value: {
                        offsetY: 6,
                        fontSize: '20px',
                        color: '#fff',
                        formatter: function (val) {
                            return val + "%";
                        }
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                shadeIntensity: 0.15,
                gradientToColors: ['#fff'],
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 50, 65, 91]
            },
        },
        stroke: {
            dashArray: 4,
        },
        colors: ["#fff"],
        series: [76],
        labels: ['Assignments'],
    }
    var chart = new ApexCharts(
        document.querySelector("#assignments"),
        options
    );
    chart.render();


// chart 5   deklarasiya nazoratdan yechilgan

    var options = {
        chart: {
            width: 150,
            //height: 150,
            type: 'radialBar',
        },
        plotOptions: {
            radialBar: {
                //startAngle: -135,
                //endAngle: 135,
                hollow: {
                    margin: 0,
                    size: '70%',
                    background: 'rgba(255, 255, 255, 0.0)',
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: true,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.1
                    }
                },
                track: {
                    background: 'rgba(255, 255, 255, 0.12)',
                    strokeWidth: '100%',
                    margin: 0, // margin is in pixels
                    dropShadow: {
                        enabled: true,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.1
                    }
                },
                dataLabels: {
                    name: {
                        fontSize: '14px',
                        color: '#fff',
                        offsetY: -10,
                        show: false
                    },
                    value: {
                        offsetY: 6,
                        fontSize: '20px',
                        color: '#fff',
                        formatter: function (val) {
                            return val + "%";
                        }
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                shadeIntensity: 0.15,
                gradientToColors: ['#fff'],
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 50, 65, 91]
            },
        },
        stroke: {
            dashArray: 4,
        },
        colors: ["#fff"],
        series: [83],
        labels: ['interviews'],
    }
    var chart = new ApexCharts(
        document.querySelector("#interviews"),
        options
    );
    chart.render();


// chart 6   konteyner nazorat raqami notugri

    var options = {
        chart: {
            height: 325,
            type: 'radialBar',
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            radialBar: {
                startAngle: -135,
                endAngle: 225,
                hollow: {
                    //margin: 20,
                    size: '80%',
                    background: 'transparent',
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: true,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.24
                    }
                },
                track: {
                    background: 'rgba(255, 255, 255, 0.12)',
                    //strokeWidth: '67%',
                    margin: 0, // margin is in pixels
                    dropShadow: {
                        enabled: true,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.35
                    }
                },
                dataLabels: {
                    showOn: 'always',
                    name: {
                        offsetY: -10,
                        show: false,
                        color: '#fff',
                        fontSize: '16px'
                    },
                    value: {
                        formatter: function (val) {
                            return val + "%";
                        },
                        color: '#fff',
                        fontSize: '40px',
                        show: true,
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'light',
                type: 'horizontal',
                shadeIntensity: 0.5,
                gradientToColors: ['#fff'],
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#fff"],
        series: [81],
        stroke: {
            lineCap: 'round'
        },
        labels: ['Median Ratio'],
    }
    var chart = new ApexCharts(
        document.querySelector("#vacancies-status"),
        options
    );
    chart.render();


    // chart 6.1    nazoratdagi kuzatuvga olingan

    var options = {
        chart: {
            height: 325,
            type: 'radialBar',
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            radialBar: {
                startAngle: -135,
                endAngle: 225,
                hollow: {
                    //margin: 20,
                    size: '80%',
                    background: 'transparent',
                    image: undefined,
                    imageOffsetX: 0,
                    imageOffsetY: 0,
                    position: 'front',
                    dropShadow: {
                        enabled: true,
                        top: 3,
                        left: 0,
                        blur: 4,
                        opacity: 0.24
                    }
                },
                track: {
                    background: 'rgba(255, 255, 255, 0.12)',
                    //strokeWidth: '67%',
                    margin: 0, // margin is in pixels
                    dropShadow: {
                        enabled: true,
                        top: -3,
                        left: 0,
                        blur: 4,
                        opacity: 0.35
                    }
                },

                dataLabels: {
                    showOn: 'always',
                    name: {
                        offsetY: -10,
                        show: false,
                        color: '#fff',
                        fontSize: '16px'
                    },
                    value: {
                        formatter: function (val) {
                            return val + "%";
                        },
                        color: '#fff',
                        fontSize: '40px',
                        show: true,
                    }
                }
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'light',
                type: 'horizontal',
                shadeIntensity: 0.5,
                gradientToColors: ['#fff'],
                inverseColors: false,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100]
            }
        },
        colors: ["#fff"],
        series: [75],
        stroke: {
            lineCap: 'round'
        },
        labels: ['Median Ratio'],
    }
    var chart = new ApexCharts(
        document.querySelector("#vacancies-status1"),
        options
    );
    chart.render();


// chart 7   konteyner turi tashilayotgan tovar

    var options = {
        chart: {
            height: 330,
            type: 'bar',
            foreColor: 'rgba(255, 255, 255, 0.65)',
            toolbar: {
                show: false
            },
            dropShadow: {
                enabled: false,
                opacity: 0.1,
                blur: 3,
                left: -7,
                top: 22,
            }
        },
        plotOptions: {
            bar: {
                barHeight: '80%',
                endingShape: 'rounded',
                distributed: true,
                horizontal: true,
                dataLabels: {
                    position: 'bottom'
                },
            }
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'light',
                gradientToColors: ['#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff'],
                shadeIntensity: 0.60,
                type: 'vertical',
                opacityFrom: 0.4,
                opacityTo: 0.4,
                stops: [0, 100, 100, 100]
            },
        },
        colors: ['#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff', '#fff'],
        dataLabels: {
            enabled: true,
            textAnchor: 'start',
            style: {
                colors: ['#fff']
            },
            formatter: function (val, opt) {
                return opt.w.globals.labels[opt.dataPointIndex] + ":  " + val
            },
            offsetX: 0,
            dropShadow: {
                enabled: true
            }
        },
        series: [{
            data: [950, 730, 848, 570, 840, 580, 900, 1100, 1200, 1280]
        }],
        stroke: {
            width: 1,
            colors: ['#fff'],

        },
        xaxis: {
            categories: ['1(841370)', '3(481810)', '3(292212)', '3(844120)', '1(401219)', '1(640690)', '1(150500)', '2(600539)', '2(320490)', '1(190410)'],
        },
        yaxis: {
            labels: {
                show: false
            }
        },
        tooltip: {
            theme: 'dark',
            x: {
                show: false
            },
            y: {
                title: {
                    formatter: function () {
                        return ''
                    }
                }
            }
        },
        grid: {
            show: true,
            borderColor: 'rgba(255, 255, 255, 0.12)',
        },
        legend: {
            show: false
        }
    }
    var chart = new ApexCharts(
        document.querySelector("#top-referrers"),
        options
    );
    chart.render();



    // chart 6

    var options = {
        chart: {
            width: 200,
            height: 73,
            type: 'bar',
            zoom: {
                enabled: false
            },
            foreColor: '#4e4e4e',
            toolbar: {
                show: false
            },
            sparkline: {
                enabled: true
            },
            dropShadow: {
                enabled: true,
                opacity: 0.1,
                blur: 3,
                left: -4,
                top: 22
            }
        },
        plotOptions: {
            bar: {
                columnWidth: '30%',
                endingShape: 'rounded'
            }
        },
        stroke: {
            width: 0,
            curve: 'smooth'
        },
        dataLabels: {
            enabled: false
        },
        series: [{
            name: 'Bounce Rate',
            data: [47, 45, 74, 14, 56, 74, 14, 11, 7, 39, 82]
        }],
        yaxis: [{
            y: 0,
            offsetX: 0,
            offsetY: 0,
            padding: {
                left: 0,
                right: 0
            }
        }],
        tooltip: {
            theme: 'dark',
            x: {
                show: false
            }
        },
        colors: ["#fff"],
        grid: {
            show: false,
            borderColor: 'rgba(66, 59, 116, 0.15)'
        },
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    width: 150,
                    height: 70
                }
            }
        }]
    }
    var chart = new ApexCharts(document.querySelector("#bounce-rate"), options);
    chart.render();


    // chart 13.1   yetib borish muddati

    var options = {
        chart: {
            height: 315,
            type: 'bar',
            foreColor: 'rgba(255, 255, 255, 0.65)',
            toolbar: {
                show: false
            }
        },
        plotOptions: {
            bar: {
                distributed: true,  // this line is mandatory
                columnWidth: '50%',
                endingShape: 'rounded',
                dataLabels: {
                    position: 'center',  // top, center, bottom
                },
            }
        },
        colors: [
            "#4daf31",
            "#7adc5b",
            "#7adc5b",
            "#ffffff",
            "#ee5c5c",
            "#ee5c5c",
            "#cb2525"
        ],
        dataLabels: {
            enabled: true,
            formatter: function (val) {
                return parseInt(val);
            },
            offsetY: -20,
            style: {
                fontSize: '16px',
                fontWeight: 'bold',
                colors: ["rgba(0, 0, 0, 0.75)"]
            }
        },
        stroke: {
            width: 0,
        },
        series: [{
            name: 'Сони',
            data: [2, 3, 4, 4, 4, 3, 3]
        }],
        xaxis: {
            categories: ["5 кундан кўп", "3-5 кун", " 1-3 кун", "бугун", "1-3 кун", "3-5 кун", "5 кундан кўп"],
            position: 'bottom',
            labels: {
                offsetY: 0
            },
            axisBorder: {
                show: true
            },
            axisTicks: {
                show: true
            }
        },
        tooltip: {
            enabled: true,
            theme: 'dark'
        },
        grid: {
            show: true,
            borderColor: 'rgba(255, 255, 255, 0.12)'
        },
        fill: {
            //type: ['solid', 'gradient'],
            opacity: 1
        },
        yaxis: {
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false
            },
            labels: {
                show: false,
                formatter: function (val) {
                    return parseInt(val);
                }
            }
        },
        title: {
            text: 'Етиб бориш муддати ўтиб кетган транспорт воситалари',
            floating: true,
            offsetY: 0,
            align: 'center',
            style: {
                fontSize: '18px',
                color: '#fff'
            }
        }
    }
    var chart = new ApexCharts(document.querySelector("#submitted-application1"), options);
    chart.render();



    // chart 14

    var options = {
        chart: {
            height: 225,
            type: 'area',
            zoom: {
                enabled: false
            },
            foreColor: 'rgba(255, 255, 255, 0.65)',
            toolbar: {
                show: false
            },
            sparkline: {
                enabled: false,
            }
        },
        plotOptions: {
            bar: {
                columnWidth: '10%',
                endingShape: 'rounded',
                dataLabels: {
                    position: 'top', // top, center, bottom
                },
            }
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            width: 2.5,
            curve: 'smooth'
        },
        series: [{
            name: 'Товарларнинг ҳажми ',
            data: [15, 26, 20, 33, 27, 43, 17, 26, 19]
        }, {
            name: 'Товарларнинг ноодатий миқдори ',
            data: [33, 21, 42, 19, 32, 25, 36, 29, 49]
        }],

        xaxis: {
            type: 'month',
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep"],
        },
        yaxis: {
            axisBorder: {
                show: false
            },
            axisTicks: {
                show: false,
            },
            labels: {
                show: false,
                formatter: function (val) {
                    return parseInt(val);
                }
            }

        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'light',
                gradientToColors: ['#fff', 'rgba(255, 255, 255, 0.30)'],
                shadeIntensity: 1,
                type: 'vertical',
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 80, 100]
            },
        },
        colors: ['#fff', 'rgba(255, 255, 255, 0.30)'],
        legend: {
            show: !0,
            position: "top",
            horizontalAlign: "left",
            offsetX: -20,
            fontSize: "12px",
            markers: {
                radius: 50,
                width: 10,
                height: 10
            }
        },
        grid: {
            show: true,
            borderColor: 'rgba(255, 255, 255, 0.12)',
        },
        tooltip: {
            theme: 'dark',
            x: {
                format: 'dd/MM/yy HH:mm',
            },

        },
        responsive: [{
            breakpoint: 480,
            options: {
                chart: {
                    height: 300
                },
                legend: {
                    offsetX: -20,
                    fontSize: "12px",
                }
            }
        }]
    }

    var chart = new ApexCharts(
        document.querySelector("#users-status"),
        options
    );

    chart.render();


});