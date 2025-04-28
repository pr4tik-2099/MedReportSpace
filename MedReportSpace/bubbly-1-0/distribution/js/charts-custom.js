$(function () {


    var violet = '#DF99CA',
        red    = '#F0404C',
        green  = '#7CF29C';

    // ------------------------------------------------------- //
    // Charts Gradients
    // ------------------------------------------------------ //
    var ctx1 = $("canvas").get(0).getContext("2d");
    var gradient1 = ctx1.createLinearGradient(150, 0, 150, 300);
    gradient1.addColorStop(0, 'rgba(210, 114, 181, 0.91)');
    gradient1.addColorStop(1, 'rgba(177, 62, 162, 0)');

    var gradient2 = ctx1.createLinearGradient(10, 0, 150, 300);
    gradient2.addColorStop(0, 'rgba(252, 117, 176, 0.84)');
    gradient2.addColorStop(1, 'rgba(250, 199, 106, 0.92)');


    //let mm = null;
    //let hg = null;
    //$.ajax({
    //    type: "POST",
    //    url: "BPReport_Chart.aspx/getBPAverageChart",
    //    contentType: "application/json; charset=utf-8",
    //    dataType: "json",
    //    success: function (response) {
    //        let obj = JSON.parse(response.d);
    //        debugger;
    //        console.log(avg);
    //        hg = obj.map(function (MM) {
    //            return MM.HG;

    //        });
    //        mm = obj.map(function (HG) {
    //            return HG.MM;
    //        });
            
    //        console.log(hg);
    //        console.log(mm);
    //        // ------------------------------------------------------- //
    //        // Pie Chart
    //        // ------------------------------------------------------ //
    //        var PIECHART = $('#AVG_pieChart');
    //        var myPieChart = new Chart(PIECHART, {
    //            type: 'doughnut',
    //            options: {
    //                cutoutPercentage: 90,
    //                legend: {
    //                    display: false
    //                }
    //            },
    //            data: {
    //                labels: [
    //                    "First",
                        
    //                ],
    //                datasets: [
    //                    {
    //                        data: mm/*[250, 200]*/,
    //                        borderWidth: [0, 0],
    //                        backgroundColor: [
    //                            green,
    //                            "#eee",
    //                        ],
    //                        hoverBackgroundColor: [
    //                            green,
    //                            "#eee",
    //                        ]
    //                    }]
    //            }
    //        });


    //    },
    //    error: function (xhr, status, error) {
    //        console.error("Error:", error);
    //    }
    //});



    // ------------------------------------------------------- //
   // Pie Chart
   // ------------------------------------------------------ //
   var PIECHART = $('#pieChart1');
   var myPieChart = new Chart(PIECHART, {
       type: 'doughnut',
       options: {
           cutoutPercentage: 90,
           legend: {
               display: false
           }
       },
       data: {
           labels: [
               "First",
               "Second",
               "Third"
           ],
           datasets: [
               {
                   data: [250, 200],
                   borderWidth: [0, 0],
                   backgroundColor: [
                       green,
                       "#eee",
                   ],
                   hoverBackgroundColor: [
                       green,
                       "#eee",
                   ]
               }]
       }
   });


    // ------------------------------------------------------- //
   // Pie Chart
   // ------------------------------------------------------ //
   var PIECHART = $('#pieChart2');
   var myPieChart = new Chart(PIECHART, {
       type: 'doughnut',
       options: {
           cutoutPercentage: 90,
           legend: {
               display: false
           }
       },
       data: {
           labels: [
               "First",
               "Second"
           ],
           datasets: [
               {
                   data: [300, 50],
                   borderWidth: [0, 0],
                   backgroundColor: [
                       violet,
                       "#eee"
                   ],
                   hoverBackgroundColor: [
                       violet,
                       "#eee"
                   ]
               }]
       }
   });


    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //
    var LINECHARTEXMPLE   = $('#lineChartExample');
    var lineChartExample = new Chart(LINECHARTEXMPLE, {
        type: 'line',
        options: {
            legend: {labels:{fontColor:"#777", fontSize: 12}},
            scales: {
                xAxes: [{
                    display: true,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: true,
                    ticks: {
                        max: 100,
                        min: 20
                    },
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
        },
        data: {
            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [
                {
                    label: "Data Set One",
                    fill: true,
                    lineTension: 0.3,
                    backgroundColor: gradient1,
                    borderColor: 'rgba(210, 114, 181, 0.91)',
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 2,
                    pointBorderColor: gradient1,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 2,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: gradient1,
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    data: [0, 50, 33, 71, 49, 55, 35, 40, 30, 50, 25, 40],
                    spanGaps: false
                }
            ]
        }
    });



    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //

    var LINECHART = $('#lineCahrtsm1');
    var myLineChart = new Chart(LINECHART, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    ticks: {
                        max: 50,
                        min: 0
                    },
                    display: false
                }]
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [
                {
                    label: "Page Visitors",
                    fill: true,
                    lineTension: 0.4,
                    backgroundColor: "transparent",
                    borderColor: green,
                    pointBorderColor: green,
                    pointHoverBackgroundColor: green,
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 3,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 5,
                    pointHoverRadius: 5,
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 1,
                    pointRadius: 0,
                    pointHitRadius: 1,
                    data: [20, 14, 21, 15, 22, 8, 18, 13, 21, 13, 17, 13, 20, 15],
                    spanGaps: false
                }
            ]
        }
    });



    // ------------------------------------------------------- //
    // Bar Chart
    // ------------------------------------------------------ //
    var BARCHARTEXMPLE    = $('#barChartExample');
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
            scales: {
                xAxes: [{
                    display: false,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: false,
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
            legend: false
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [
                {
                    label: "Data Set 1",
                    backgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    hoverBackgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderWidth: 1,
                    data: [65, 59, 80, 81, 56, 55, 40, 30, 45, 80, 44, 36, 66, 58],
                }
            ]
        }
    });


    // --------------------------------------------------------------------------------------------------------------------------------------- //
    // Blood Pressure Report Bar Chart
    // ------------------------------------------------------ //

    let ReportDate = null;
    let BP_mm = null;
    $.ajax({
        type: "POST",
        url: "BPReport_Chart.aspx/getBPReportChart",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            let obj = JSON.parse(response.d);
            /*debugger;*/
            ReportDate = obj.map(function (BP_mm) {
                return BP_mm.Rp_Date;
            
            });
            BP_mm = obj.map(function (Rp_Date) {
                return Rp_Date.BP_mm;
            });
            let dateOnlyArray = ReportDate.map(dateStr => dateStr.split('T')[0]);
            console.log(dateOnlyArray);
            console.log(ReportDate);
            console.log(BP_mm);
            // ------------------------------------------------------- //
            // Bar Chart
            // ------------------------------------------------------ //
            var BARCHARTEXMPLE = $('#BP_reportChart');
            var barChartExample = new Chart(BARCHARTEXMPLE, {
                type: 'bar',
                options: {
                    scales: {
                        xAxes: [{
                            display: true,
                            gridLines: {
                                color: '#fff'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            ticks: {
                                max: 200,
                                min: 0
                            },
                            gridLines: {
                                color: '#fff'
                            }
                        }]
                    },
                    legend: false
                },
                data: {
                    labels: dateOnlyArray,
                    datasets: [
                        {
                            /*label: dateOnlyArray,*//*console.log(ReportDate),*/
                            backgroundColor: [
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2
                            ],
                            hoverBackgroundColor: [
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2
                            ],
                            borderColor: [
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2
                            ],
                            borderWidth: 3,
                            data: BP_mm/*[99, 59, 80, 81, 56, 55, 40, 30, 45, 80, 44, 36, 66, 58]*/,
                        }
                    ]
                }
            });

        },
        error: function (xhr, status, error) {
            console.error("Error:", error);
        }
    });



    // --------------------------------------------------------------------------------------------------------------------- //
    // Blood Sugar Report Chart //

    let ReportBSDate = null;
    let newBS_lvl = null;
    $.ajax({
        type: "POST",
        url: "BSReport_Chart.aspx/getBSReportChart",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            let obj = JSON.parse(response.d);
            /*debugger;*/
            ReportBSDate = obj.map(function (BS_lvl) {
                return BS_lvl.Rp_Date;

            });
            newBS_lvl = obj.map(function (Rp_Date) {
                return Rp_Date.BS_lvl;
            });
            let dateOnlyArray = ReportBSDate.map(dateStr => dateStr.split('T')[0]);
            console.log(dateOnlyArray);
            console.log(ReportBSDate);
            console.log(newBS_lvl);
            // ------------------------------------------------------- //
            // Bar Chart
            // ------------------------------------------------------ //
            var BARCHARTEXMPLE = $('#BS_reportChart');
            var barChartExample = new Chart(BARCHARTEXMPLE, {
                type: 'bar',
                options: {
                    scales: {
                        xAxes: [{
                            display: true,
                            gridLines: {
                                color: '#fff'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            ticks: {
                                max: 400,
                                min: 0
                            },
                            gridLines: {
                                color: '#fff'
                            }
                        }]
                    },
                    legend: false
                },
                data: {
                    labels: dateOnlyArray,
                    datasets: [
                        {
                          /*  label: dateOnlyArray,*//*console.log(ReportDate),*/
                            backgroundColor: [
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2
                            ],
                            hoverBackgroundColor: [
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2
                            ],
                            borderColor: [
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2,
                                gradient2
                            ],
                            borderWidth: 3,
                            data: newBS_lvl/*[99, 59, 80, 81, 56, 55, 40, 30, 45, 80, 44, 36, 66, 58]*/,
                        }
                    ]
                }
            });

        },
        error: function (xhr, status, error) {
            console.error("Error:", error);
        }
    });

    // --------------------------------------------------------------------------------------------------------------------------------- //


    var BARCHARTEXMPLE = $('#barChartExample');
    var barChartExample = new Chart(BARCHARTEXMPLE, {
        type: 'bar',
        options: {
            scales: {
                xAxes: [{
                    display: false,
                    gridLines: {
                        color: '#fff'
                    }
                }],
                yAxes: [{
                    display: false,
                    gridLines: {
                        color: '#fff'
                    }
                }]
            },
            legend: false
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [
                {
                    label: "Data Set 1",
                    backgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    hoverBackgroundColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderColor: [
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2,
                        gradient2
                    ],
                    borderWidth: 1,
                    data: [65, 59, 80, 81, 56, 55, 40, 30, 45, 80, 44, 36, 66, 58],
                }
            ]
        }
    });


  

    // ------------------------------------------------------- //
    // Doughnut Chart
    // ------------------------------------------------------ //
    var DOUGHNUTCHARTEXMPLE  = $('#doughnutChartExample');
    var pieChartExample = new Chart(DOUGHNUTCHARTEXMPLE, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 80,
        },
        data: {
            labels: [
                "A",
                "B",
                "C",
                "D"
            ],
            datasets: [
                {
                    data: [250, 50, 100, 40],
                    borderWidth: 0,
                    backgroundColor: [
                        '#df99ca',
                        '#c374ab',
                        "#a44e8a",
                        "#81376a"
                    ],
                    hoverBackgroundColor: [
                        '#df99ca',
                        '#c374ab',
                        "#a44e8a",
                        "#81376a"
                    ]
                }]
            }
    });

    var pieChartExample = {
        responsive: true
    };



    // ------------------------------------------------------- //
    // Polar Chart
    // ------------------------------------------------------ //
    var POLARCHARTEXMPLE  = $('#polarChartExample');
    var polarChartExample = new Chart(POLARCHARTEXMPLE, {
        type: 'polarArea',
        options: {
            elements: {
                arc: {
                    borderWidth: 0,
                    borderColor: '#aaa'
                }
            }
        },
        data: {
            datasets: [{
                data: [
                    7,
                    16,
                    12,
                    11
                ],
                backgroundColor: [
                    green,
                    "#6adf8a",
                    "#50c670",
                    "#3fac5c"
                ],
                label: 'My dataset' // for legend
            }],
            labels: [
                "A",
                "B",
                "C",
                "D"
            ]
        }
    });

    var polarChartExample = {
        responsive: true
    };


    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHARTEXMPLE    = $('#pieChartExample');
    var pieChartExample = new Chart(PIECHARTEXMPLE, {
        type: 'pie',
        data: {
            labels: [
                "A",
                "B",
                "C",
                "D"
            ],
            datasets: [
                {
                    data: [300, 50, 100, 80],
                    borderWidth: 0,
                    backgroundColor: [
                        green,
                        "#6adf8a",
                        "#50c670",
                        "#3fac5c",
                        "#2a9346"
                    ],
                    hoverBackgroundColor: [
                        green,
                        "#6adf8a",
                        "#50c670",
                        "#3fac5c",
                        "#2a9346"
                    ]
                }]
            }
    });

    var pieChartExample = {
        responsive: true
    };



    // ------------------------------------------------------- //
    // Radar Chart
    // ------------------------------------------------------ //
    var RADARCHARTEXMPLE  = $('#radarChartExample');
    var radarChartExample = new Chart(RADARCHARTEXMPLE, {
        type: 'radar',
        data: {
            labels: ["A", "B", "C", "D", "E", "C"],
            datasets: [
                {
                    label: "First dataset",
                    backgroundColor: "rgba(252, 117, 176, 0.4)",
                    borderWidth: 2,
                    borderColor: "rgba(252, 117, 176, 0.84)",
                    pointBackgroundColor: "rgba(252, 117, 176, 0.84)",
                    pointBorderColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointHoverBorderColor: "rgba(252, 117, 176, 0.84)",
                    data: [65, 59, 90, 81, 56, 55]
                },
                {
                    label: "Second dataset",
                    backgroundColor: "rgba(250, 199, 106, 0.4)",
                    borderWidth: 2,
                    borderColor: "rgba(250, 199, 106, 0.92)",
                    pointBackgroundColor: "rgba(250, 199, 106, 0.92)",
                    pointBorderColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointHoverBorderColor: "rgba(250, 199, 106, 0.92)",
                    data: [50, 60, 80, 45, 96, 70]
                }
            ]
        }
    });
    var radarChartExample = {
        responsive: true
    };



});
