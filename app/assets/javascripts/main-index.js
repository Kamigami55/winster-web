$("#right").click(function() {
  $(".wine-right-1").switchClass("wine-right-1", "wine-center", 500);
  $(".wine-center").switchClass("wine-center", "wine-left-1", 500);
  $(".wine-right-2").switchClass("wine-right-2", "wine-right-1", 500);
  $(".wine-left-1").switchClass("wine-left-1", "wine-left-2", 500);
  $(".wine-left-2").switchClass("wine-left-2", "wine-right-2", 500);
});

$("#left").click(function() {
  $(".wine-right-1").switchClass("wine-right-1", "wine-right-2", 500);
  $(".wine-center").switchClass("wine-center", "wine-right-1", 500);
  $(".wine-right-2").switchClass("wine-right-2", "wine-left-2", 500);
  $(".wine-left-1").switchClass("wine-left-1", "wine-center", 500);
  $(".wine-left-2").switchClass("wine-left-2", "wine-left-1", 500);
});