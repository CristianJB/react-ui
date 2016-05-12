$(function () {

    $('#container-barras-2x').highcharts({

        chart: {
            //backgroundColor: null,
            backgroundColor:'rgba(255, 255, 255, 0.4)',
            type: 'bar',
            events: {
                click: function (event) {
                    console.log(event.pageX + ',' + event.pageY);
                }
            }
        },

        credits: {
            enabled: false
        },

        title: {
            text: 'Deslocamento vs Tempo de Serviço'
        },

      //  xAxis: {
        //    categories: ['Equipe 11', 'Equipe 2', 'Equipe 3', 'Equipe 4', 'Equipe 5']
       // },

    /*    yAxis: [{
            min: 0,
            title: {
                text: 'Rainfall (mm)'
            }
        }, {
            min: 0,
            opposite:true, //optional, you can have it on the same side.
            title: {
                text: 'Temp (K)'
            }
        }],
*/
        xAxis: {
            categories: ['Equipe 233:  Planejado <br>  Executado', 'Equipe 244: Planejado <br>Executado', 'Equipe 923: Planejado <br>Executado', 'Equipe 4: Planejado <br>Executado', 'Equipe 5: Planejado <br>Executado']
        },


        yAxis: {
            allowDecimals: false,
            min: 0,
            title: {
                text: 'Tempo (horas)'
            }
        },

        tooltip: {
            enabled: false,
            formatter: function () {
                return '<b>' + this.x + '</b><br/>' + this.series.name + ': ' + this.y + '<br/>' +
                    'Total: ' + this.point.stackTotal;
            }
        },

        plotOptions: {
            // column: {
            //     stacking: 'normal'
            // }
            series: {
                stacking: 'normal',
                borderWidth: 0,
                events: {
                    click: function (event) {
                        //reloadFlash();
                        //$('#report').html('click on yAxis title');
                        console.log(event.pageX + ',' + event.pageY);
                    }
                }
            }
        },

        series: [{
            name: 'Deslocamento',
            color: 'rgba(89,89,89,1)',
            data: [3, 6, 8, 5, 3],
            stack: 'male',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }, {
            name: 'Operação',
            color: 'rgba(255,95,215,1)',
            data: [5, 4, 3, 1, 2],
            stack: 'male',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }, {
            name: 'Abastecimento',
            color: 'rgba(217,116,0,1)',
            data: [4, 5, 6, 2, 1],
            stack: 'female',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }, {
            name: 'Almoço',
            color: 'rgba(155,215,255,1)',
            data: [3, 0, 4, 4, 3],
            stack: 'female',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }]

    });
});
    // container-one with single value
$(function () {
    $('#container-1barra-2x').highcharts({

        chart: {
            type: 'bar',
            events: {
                click: function (event) {
                    console.log(event.pageX + ',' + event.pageY);
                }
            }
        },

        credits: {
            enabled: false
        },

        title: {
            text: 'Total fruit consumtion, grouped by gender'
        },

        xAxis: {
            categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
        },

        yAxis: {
            allowDecimals: false,
            min: 0,
            title: {
                text: 'Number of fruits'
            }
        },

        tooltip: {
            enabled: false,
            formatter: function () {
                return '<b>' + this.x + '</b><br/>' + this.series.name + ': ' + this.y + '<br/>' +
                    'Total: ' + this.point.stackTotal;
            }
        },

        plotOptions: {
            // column: {
            //     stacking: 'normal'
            // }
            series: {
                pointWidth: 20,
                stacking: 'normal',
                borderWidth: 0,
                events: {
                    click: function (event) {
                        //reloadFlash();
                        //$('#report').html('click on yAxis title');
                        console.log(event.pageX + ',' + event.pageY);
                    }
                }
            }
        },

        series: [{
            name: 'John',
            color: 'rgba(89,89,89,1)',
            data: [5],                     // data: [5, 3, 4, 7, 4],
            stack: 'male',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }, {
            name: 'Joe',
            color: 'rgba(255,95,215,1)',
            data: [3],                    // data: [3, 4, 4, 2, 2],
            stack: 'male',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }, {
            name: 'Jane',
            color: 'rgba(217,116,0,1)',
            data: [2],                    // data: [2, 5, 6, 2, 1],
            stack: 'female',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }, {
            name: 'Janet',
            color: 'rgba(155,215,255,1)',
            data: [3],        // data: [3, 0, 4, 4, 3],
            stack: 'female',
            pointPadding: -0.0,
            pointPlacement: -0.0
        }]

    });
});

//column range
$(function () {

    $('#columnrange').highcharts({

        chart: {
            backgroundColor:'rgba(255, 255, 255, 0.4)',
            type: 'columnrange',
            inverted: true
        },

        title: {
            text: 'Equipes: Rota Planejada vs Rota Executada'
        },

        subtitle: {
            text: 'Observed in Vik i Sogn, Norway'
        },

        xAxis: {
            categories: ['Equipe 233:  Planejado <br>  Executado', 'Equipe 244: Planejado <br>Executado', 'Equipe 923: Planejado <br>Executado', 'Equipe 4: Planejado <br>Executado', 'Equipe 5: Planejado <br>Executado']
        },

       /* yAxis: {
            title: {
                text: 'Tempo ( horas )'
            }
        },
        tooltip: {
        valueSuffix: 'h'
        },
*/
        //  teste horas eixo y (na verdade x, está invertido)
        yAxis: {
            title: {
                enabled: true,
                text: 'Tempo(horas)'
            },
            type: 'datetime',

            labels: {
                formatter: function () {
                    return Highcharts.dateFormat('%H:%M', this.value);
                },
                dateTimeLabelFormats: {
                    minute: '%H:%M',
                    hour: '%H:%M',
                    day: '%e. %b',
                    week: '%e. %b',
                    month: '%b \'%y',
                    year: '%Y'
                }
            }
        },
        tooltip: {
            formatter: function() {
                return ''+
                    "" +
                    'Time: '+ Highcharts.dateFormat('%H:%M', this.x);
            }
        },
// final teste eixo y

        plotOptions: {
            columnrange: {
                dataLabels: {
                    enabled: true,
                    formatter: function () {
                        return this.y + 'h';
                    }
                }
            }
        },

        legend: {
            enabled: false
        },

        series: [{
            name: 'Horário de serviço',
            data: [
//                [Date.UTC(2013, mês, dia, h, min), 12.7],
                [Date.UTC(2013, 0, 1, 1, 30), 12.7],
                [Date.UTC(2013, 3, 22, 1, 15), 13.5],
                [Date.UTC(2013, 3, 22, 1, 15), 15.5],
                [Date.UTC(2013, 3, 22, 1, 15), 16.5],
                [Date.UTC(2013, 3, 22, 1, 15), 18.8]
            ]
        }]



    });

});