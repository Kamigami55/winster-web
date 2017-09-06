$( document ).ready(function() {
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

  var ctx = document.getElementById("taste-chart").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ["Mon.", "Tue.", "Wed.", "Thu.", "Fri.", "Sat.", "Sun.", "Mon.", "Tue.", "Wed.", "Thu."],
          datasets: [{
              label: 'Taste',
              data: [9.2, 9.3, 9.4, 9.4, 9.35, 9.2, 9.15, 9.18, 9.24, 9.31, 9.45],
              borderColor: 'rgba(246,200,0,1)',
              borderWidth: 1,
              pointRadius: 1
          }]
      },
      options: {
      }
  });

  var ctx = document.getElementById("weight-chart").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ["Mon.", "Tue.", "Wed.", "Thu.", "Fri.", "Sat.", "Sun.", "Mon.", "Tue.", "Wed.", "Thu."],
          datasets: [{
              label: 'Weight',
              data: [1013, 1015, 1012, 1011, 1009, 1005, 1007, 1004, 1003, 998, 1001],
              borderColor: 'rgba(246,200,0,1)',
              borderWidth: 1,
              pointRadius: 1
          }]
      },
      options: {
      }
  });
});

