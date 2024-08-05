

console.log('graph.js');
document.addEventListener('DOMContentLoaded', function() {
    // Chart.js가 로드된 후에 차트 생성
	console.log('a');
    barChart();
    lineChart();
	console.log('b');
});

function barChart() {
    var ctx = document.getElementById("barCanvas").getContext("2d");

    var data = {
        labels: ["탄수화물", "지방", "단백질", "비타민A", "비타민B", "비타민B", "비타민B", "비타민B", "비타민B", "비타민C", "비타민D", "식이섬유", "무기질", "당류"],
        datasets: [		
			{
		            label: "필수영양소",
		            data: [65, 75, 85, 95, 200, 210, 220, 230, 350, 350, 370, 370, 400, 500],
		            backgroundColor: "rgba(255,0,0,0.5)",
		            borderColor: "rgba(255,0,0,0.8)",
		            borderWidth: 1
	        },
			{
					label: "섭취영양소",
		            data: [55, 65, 75, 85, 100, 110, 120, 130, 320, 250, 270, 270, 300, 400],
		            backgroundColor: "rgba(0,0,255,0.5)",
		            borderColor: "rgba(0,0,255,0.8)",
		            borderWidth: 1
            }
			
			]
    };

    var options = {
        responsive: true,
        plugins: {
            legend: {
                display: true
            },
            tooltip: {
                callbacks: {
                    label: function(context) {
                        let label = context.dataset.label || '';
                        if (label) {
                            label += ': ';
                        }
                        if (context.parsed.y !== null) {
                            label += context.parsed.y;
                        }
                        return label;
                    }
                }
            }
        },
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    new Chart(ctx, {
        type: 'bar',
        data: data,
        options: options
    });
}

function lineChart() {
    var ctx = document.getElementById("lineCanvas").getContext("2d");

    var data = {
        labels: ["월", "화", "수", "목", "금", "토", "일"],
        datasets: [
            {
                label: "필수영양소",
                data: [65, 75, 85, 95, 200, 210, 220],
                backgroundColor: "rgba(220,220,220,0.2)",
                borderColor: "rgba(255,0,0,1)",
                borderWidth: 1
            },
            {
                label: "섭취영양소",
                data: [55, 65, 75, 75, 100, 110, 120],
                backgroundColor: "rgba(151,187,205,0.2)",
                borderColor: "rgba(0,0,255,1)",
                borderWidth: 1
            }
        ]
    };

    var options = {
        responsive: true,
        plugins: {
            legend: {
                position: 'top',
            },
            tooltip: {
                callbacks: {
                    label: function(context) {
                        let label = context.dataset.label || '';
                        if (label) {
                            label += ': ';
                        }
                        if (context.parsed.y !== null) {
                            label += context.parsed.y;
                        }
                        return label;
                    }
                }
            }
        },
        scales: {
            y: {
                beginAtZero: true
            }
        }
    };

    new Chart(ctx, {
        type: 'line',
        data: data,
        options: options
    });
}
