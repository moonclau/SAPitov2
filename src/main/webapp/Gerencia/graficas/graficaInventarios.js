var ctx = document.getElementById("gInventarios").getContext('2d');
var myChart = new Chart(ctx, {
   type: 'horizontalBar',
    data: {
      labels: ["Inmuebles"],
      datasets: [
        {
          label: "Inventario inmuebles",
          backgroundColor: ["#3e95cd"],
          data: [2478]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: 'Inventario de inmuebles en renta - Octubre 2018'
      }
    }
});

