$( document ).ready(function() {
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