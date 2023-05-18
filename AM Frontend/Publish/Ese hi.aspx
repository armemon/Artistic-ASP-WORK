<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ese hi.aspx.cs" Inherits="Artistic_Html_to_Asp_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <link rel="stylesheet" href="style.css">
    <title></title>
</head>
<body>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
      google.charts.load("current", { packages: ["corechart"] });
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
          var data = google.visualization.arrayToDataTable([
              ['Task', 'Hours per Day'],
              ['Weaving Sheild 4', 4],
              ['Weaving Sheild 5 & 6', 2],
              ['Processing Unit', 2],
              ['Spinning Unit (AM-8)', 2],
              ['Spinning Unit (Am-17)', 7]
          ]);

          var options = {
              pieHole: 0.5,
              'chartArea': { 'width': '100%', 'height': '90%' },
          };

          var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
          chart.draw(data, options);
      }
  </script>









  <div class="grid-container">
    <div class="item1"></div>
    <div class="item2">


      <h4>Electrical Power Generated with Utilization</h4>


      <div class="chart-container">
        <canvas id="myChart" class="mychart"></canvas>
        <canvas id="difference"></canvas>
      </div>


      <div class="table">
        <div class="row">
          <div class="cell" data-title="Name">
            LV Auxilary Load
          </div>
          <div class="cell" data-title="Load">
            754.5
          </div>
        </div>

        <div class="row">
          <div class="cell" data-title="Name">
            Energy Load
          </div>
          <div class="cell" data-title="Load">
            4211.5
          </div>
        </div>

        <div class="row">
          <div class="cell" data-title="Name">
            Total Load
          </div>
          <div class="cell" data-title="Load">
            6726.2
          </div>
        </div>

        <div class="row">
          <div class="cell" data-title="Name">
            Weaving Load
          </div>
          <div class="cell" data-title="Load">
            3192.2
          </div>
        </div>
        <div class="row">
          <div class="cell" data-title="Name">
            Spining Load
          </div>
          <div class="cell" data-title="Load">
            2097.5
          </div>
        </div>

      </div>






      <div class="container">
        <div id="donutchart" style="width: 300px; height: 250px;">
        </div>
        <div class="relative">
          <p>1100</p>
          <p>KW</p>
        </div>
      </div>



      <table>
        <tr>
          <th>GAS PRESSURE</th>
          <th>mbar</th>
          <th>psi</th>
        </tr>
        <tr>
          <td>N-GAS</td>
          <td>65.49</td>
          <td>0.95</td>
        </tr>
        <tr>
          <td>N-GAS</td>
          <td>347.00</td>
          <td>5.03</td>
        </tr>
        <tr>
          <th>Gas Pressure</th>
          <th>bar</th>
          <th>psi</th>
        </tr>
        <tr class="last-row">
          <td>FBC-OUTLET</td>
          <td>16.08</td>
          <td>232.16</td>
        </tr>
        <tr>
          <th>GENERATED POWER</th>
          <th>6726</th>
          <th>KW</th>
        </tr>
        <tr>
          <td>Utility Power</td>
          <td>65.49</td>
          <td>KW</td>
        </tr>
        <td>Energy Consumed</td>
        <td>347.00</td>
        <td>KWh</td>
        </tr>
      </table>
    </div>
  </div>




  <!-- <div>
        <canvas id="myChart"></canvas>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        var xValues = ["Italy", "France", "Spain", "USA", "Argentina"];
        var yValues = [55, 49, 44, 24, 15];
        var barColors = [
          "#b91d47",
          "#00aba9",
          "#2b5797",
          "#e8c3b9",
          "#1e7145"
        ];
        
        new Chart("myChart", {
          type: "doughnut",
          data: {
            labels: xValues,
            datasets: [{
              backgroundColor: barColors,
              data: yValues
            }]
          },
          options: {
            title: {
              display: true,
              text: "World Wide Wine Production 2018"
            }
          }
        });
        </script> -->
  <script>
      var xValues = [6792, 6658];
      var yValues = [xValues[0], xValues[1]];
      var barColors = ["blue", "lightblue"];

      new Chart("myChart", {
          type: "bar",
          data: {
              labels: xValues,
              datasets: [{
                  backgroundColor: barColors,
                  data: yValues
              }]
          },
          options: {
              responsive: true,
              maintainAspectRatio: false,
              legend: { display: false },
              scales: {
                  xAxes: [{
                      barThickness: 30,
                  }],
                  yAxes: [{
                      ticks: {
                          beginAtZero: true,
                          max: 10000,
                          display: false
                      },

                      gridLines: {
                          display: false
                      }
                  }]
              }
          }
      });
      new Chart("difference", {
          type: "bar",
          data: {
              labels: [67.3],
              datasets: [{
                  backgroundColor: "red",
                  data: [67.3]
              }]
          },
          options: {
              responsive: true,
              maintainAspectRatio: false,
              legend: { display: false },
              scales: {
                  xAxes: [{
                      barThickness: 100,
                  }],
                  yAxes: [{
                      ticks: {
                          beginAtZero: true,
                          max: 200,
                          display: false
                      },
                      gridLines: {
                          display: false
                      }
                  }]
              }
          }
      });
  </script>
    </body>
</html>
