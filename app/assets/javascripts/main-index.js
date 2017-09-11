$(document).on("turbolinks:load", function(){
  $("#switch-right").click(function() {
    $(".wine-right-1").switchClass("wine-right-1", "wine-center", 500);
    $(".wine-center").switchClass("wine-center", "wine-left-1", 500);
    $(".wine-right-2").switchClass("wine-right-2", "wine-right-1", 500);
    $(".wine-left-1").switchClass("wine-left-1", "wine-left-2", 500);
    $(".wine-left-2").switchClass("wine-left-2", "wine-right-2", 500);
  });

  $("#switch-left").click(function() {
    $(".wine-right-1").switchClass("wine-right-1", "wine-right-2", 500);
    $(".wine-center").switchClass("wine-center", "wine-right-1", 500);
    $(".wine-right-2").switchClass("wine-right-2", "wine-left-2", 500);
    $(".wine-left-1").switchClass("wine-left-1", "wine-center", 500);
    $(".wine-left-2").switchClass("wine-left-2", "wine-left-1", 500);
  });

  $(".wine1").click(function() {
    $(".detail1").fadeToggle();
    $("#index-main-area").fadeToggle();
  });
  $(".detail1 .back").click(function() {
    $(".detail1").fadeToggle();
    $("#index-main-area").fadeToggle();
  });

  $(".wine2").click(function() {
    $(".detail2").fadeToggle();
    $("#index-main-area").fadeToggle();
  });
  $(".detail2 .back").click(function() {
    $(".detail2").fadeToggle();
    $("#index-main-area").fadeToggle();
  });

  $(".wine3").click(function() {
    $(".detail3").fadeToggle();
    $("#index-main-area").fadeToggle();
  });
  $(".detail3 .back").click(function() {
    $(".detail3").fadeToggle();
    $("#index-main-area").fadeToggle();
  });

  $(".wine4").click(function() {
    $(".detail4").fadeToggle();
    $("#index-main-area").fadeToggle();
  });
  $(".detail4 .back").click(function() {
    $(".detail4").fadeToggle();
    $("#index-main-area").fadeToggle();
  });

  $(".wine5").click(function() {
    $(".detail5").fadeToggle();
    $("#index-main-area").fadeToggle();
  });
  $(".detail5 .back").click(function() {
    $(".detail5").fadeToggle();
    $("#index-main-area").fadeToggle();
  });

  // $(".wine" )
  // .mouseenter(function() {
  //   $(this).animate({
  //     transform: scale(1.1,1.1)
  //   });
  // })
  // .mouseleave(function() {
  //   $(this).animate({
  //     transform: scale(1.0,1.0)
  //   });
  // });




//   var ctx = document.getElementById("color-chart1").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [
//             {
//               label: 'White',
//               data: [314, 318, 324, 316],
//               borderColor: 'rgba(255,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Red',
//               data: [521, 564, 543, 531],
//               borderColor: 'rgba(255,0,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Blue',
//               data: [444, 432, 431, 452],
//               borderColor: 'rgba(0,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Green',
//               data: [642, 643, 651, 666],
//               borderColor: 'rgba(0,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Yellow',
//               data: [316, 312, 341, 330],
//               borderColor: 'rgba(255,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Purple',
//               data: [222, 231, 212, 231],
//               borderColor: 'rgba(255,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Cyan',
//               data: [432, 444, 454, 424],
//               borderColor: 'rgba(0,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             }
//           ]
//       },
//       options: {
//       }
//   });

//   var ctx = document.getElementById("color-chart2").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [
//             {
//               label: 'White',
//               data: [32991, 32905, 32889, 32907],
//               borderColor: 'rgba(255,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Red',
//               data: [18699, 18591, 18765, 18],
//               borderColor: 'rgba(255,0,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Blue',
//               data: [444, 432, 431, 452],
//               borderColor: 'rgba(0,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Green',
//               data: [642, 643, 651, 666],
//               borderColor: 'rgba(0,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Yellow',
//               data: [316, 312, 341, 330],
//               borderColor: 'rgba(255,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Purple',
//               data: [222, 231, 212, 231],
//               borderColor: 'rgba(255,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Cyan',
//               data: [432, 444, 454, 424],
//               borderColor: 'rgba(0,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             }
//           ]
//       },
//       options: {
//       }
//   });

//     var ctx = document.getElementById("color-chart3").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [
//             {
//               label: 'White',
//               data: [314, 318, 324, 316],
//               borderColor: 'rgba(255,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Red',
//               data: [521, 564, 543, 531],
//               borderColor: 'rgba(255,0,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Blue',
//               data: [444, 432, 431, 452],
//               borderColor: 'rgba(0,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Green',
//               data: [642, 643, 651, 666],
//               borderColor: 'rgba(0,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Yellow',
//               data: [316, 312, 341, 330],
//               borderColor: 'rgba(255,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Purple',
//               data: [222, 231, 212, 231],
//               borderColor: 'rgba(255,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Cyan',
//               data: [432, 444, 454, 424],
//               borderColor: 'rgba(0,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             }
//           ]
//       },
//       options: {
//       }
//   });

//   var ctx = document.getElementById("color-chart4").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [
//             {
//               label: 'White',
//               data: [314, 318, 324, 316],
//               borderColor: 'rgba(255,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Red',
//               data: [521, 564, 543, 531],
//               borderColor: 'rgba(255,0,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Blue',
//               data: [444, 432, 431, 452],
//               borderColor: 'rgba(0,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Green',
//               data: [642, 643, 651, 666],
//               borderColor: 'rgba(0,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Yellow',
//               data: [316, 312, 341, 330],
//               borderColor: 'rgba(255,255,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Purple',
//               data: [222, 231, 212, 231],
//               borderColor: 'rgba(255,0,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             },
//             {
//               label: 'Cyan',
//               data: [432, 444, 454, 424],
//               borderColor: 'rgba(0,255,255,1)',
//               borderWidth: 1,
//               pointRadius: 3
//             }
//           ]
//       },
//       options: {
//       }
//   });

//   // var ctx = document.getElementById("color-chart5")
//   // if(ctx != null) {
//   //   ctx = ctx.getContext('2d');
//   //   var myChart = new Chart(ctx, {
//   //       type: 'line',
//   //       data: {
//   //           labels: ["7:30", "7:31", "7:32", "7:33"],
//   //           datasets: [
//   //             {
//   //               label: 'White',
//   //               data: [314, 318, 324, 316],
//   //               borderColor: 'rgba(255,255,255,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             },
//   //             {
//   //               label: 'Red',
//   //               data: [521, 564, 543, 531],
//   //               borderColor: 'rgba(255,0,0,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             },
//   //             {
//   //               label: 'Blue',
//   //               data: [444, 432, 431, 452],
//   //               borderColor: 'rgba(0,0,255,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             },
//   //             {
//   //               label: 'Green',
//   //               data: [642, 643, 651, 666],
//   //               borderColor: 'rgba(0,255,0,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             },
//   //             {
//   //               label: 'Yellow',
//   //               data: [316, 312, 341, 330],
//   //               borderColor: 'rgba(255,255,0,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             },
//   //             {
//   //               label: 'Purple',
//   //               data: [222, 231, 212, 231],
//   //               borderColor: 'rgba(255,0,255,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             },
//   //             {
//   //               label: 'Cyan',
//   //               data: [432, 444, 454, 424],
//   //               borderColor: 'rgba(0,255,255,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //             }
//   //           ]
//   //       },
//   //       options: {
//   //       }
//   //   });
//   // }








//   var ctx = document.getElementById("weight-chart1").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [1013, 1015, 1012, 1007],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   var ctx = document.getElementById("weight-chart2").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [1013, 1015, 1012, 1007],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   var ctx = document.getElementById("weight-chart3").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [1013, 1015, 1012, 1007],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   var ctx = document.getElementById("weight-chart4").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [1013, 1015, 1012, 1007],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   // var ctx = document.getElementById("weight-chart5");
//   // if(ctx != null){
//   //   ctx = ctx.getContext('2d');
//   //   var myChart = new Chart(ctx, {
//   //       type: 'line',
//   //       data: {
//   //           labels: ["7:30", "7:31", "7:32", "7:33"],
//   //           datasets: [{
//   //               label: 'Weight',
//   //               data: [1013, 1015, 1012, 1007],
//   //               borderColor: 'rgba(246,200,0,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //           }]
//   //       },
//   //       options: {
//   //       }
//   //   });
//   // }
  


//   var ctx = document.getElementById("temperature-chart1").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [22.1, 22.6, 22.9, 21.4],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   var ctx = document.getElementById("temperature-chart2").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [22.1, 22.6, 22.9, 21.4],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   var ctx = document.getElementById("temperature-chart3").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [12.1, 12.4, 12.6, 12.3],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   var ctx = document.getElementById("temperature-chart4").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'line',
//       data: {
//           labels: ["7:30", "7:31", "7:32", "7:33"],
//           datasets: [{
//               label: 'Weight',
//               data: [22.1, 22.6, 22.9, 21.4],
//               borderColor: 'rgba(246,200,0,1)',
//               borderWidth: 1,
//               pointRadius: 3
//           }]
//       },
//       options: {
//       }
//   });
//   // var ctx = document.getElementById("temperature-chart5");
//   // if(ctx != null){
//   //   ctx = ctx.getContext('2d');
//   //   var myChart = new Chart(ctx, {
//   //       type: 'line',
//   //       data: {
//   //           labels: ["7:30", "7:31", "7:32", "7:33"],
//   //           datasets: [{
//   //               label: 'Weight',
//   //               data: [22.1, 22.6, 22.9, 21.4],
//   //               borderColor: 'rgba(246,200,0,1)',
//   //               borderWidth: 1,
//   //               pointRadius: 3
//   //           }]
//   //       },
//   //       options: {
//   //       }
//   //   });
//   // }
});

