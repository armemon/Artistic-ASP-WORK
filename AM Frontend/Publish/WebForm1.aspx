<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Artistic_Html_to_Asp_.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="style1.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <!-- <script>
             google.charts.load("current", { packages: ["corechart"] });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart () {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Name');
    data.addColumn('number', 'Value');

    data.addRows([
                ['PH 1', 4],
                ['PH 2', 2]
            ]);

    
    var total = google.visualization.data.group(data, [{
        type: 'boolean',
        column: 0,
        modifier: function () {return true;}
    }], [{
        type: 'number',
        column: 1,
        aggregation: google.visualization.data.sum
    }]);
    
    data.addRow(['Total: ' + total.getValue(0, 1), 0]);
    
    var chart = new google.visualization.PieChart(document.querySelector('#chart_div'));
    chart.draw(data, {
        height: 400,
        width: 600,
        pieHole: 0.4,
        sliceVisibilityThreshold: 0,
        'legend': 'left'
    },
    );
}
google.load('visualization', '1', {packages:['corechart'], callback: drawChart});
    </script> -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", { packages: ["corechart"] });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['PH 1', 4],
                ['PH 2', 2]
            ]);

            var options = {
                pieHole: 0.5,
                'chartArea': { 'width': '100%', 'height': '99%' },
                'legend': 'none',
                colors: ['rgb(90, 165, 184)', 'rgb(57, 105, 118)'],
                // chartArea: {
                //     backgroundColor: {
                //         fill: '#FF0000',
                //     },
                // },
                backgroundColor: {
                    fill: 'transparent',
                    fillOpacity: 0.8
                },
            }
            var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
            chart.draw(data, options);
        }
    </script>
       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
       <script type="text/javascript">
           google.charts.load("current", { packages: ["corechart"] });
           google.charts.setOnLoadCallback(drawChart);
           function drawChart() {
               var data = google.visualization.arrayToDataTable([
                   ['Task', 'Hours per Day'],
                   ['PH 1', 2],
                   ['PH 2', 2],
                   ['Coal Boiler', 2]
               ]);
   
               var options = {
                   pieHole: 0.5,
                   'chartArea': { 'width': '100%', 'height': '99%' },
                   'legend': 'bottom',
                   colors: ['rgb(90, 165, 184)', 'rgb(57, 105, 118)', 'rgb(90, 214, 236)'],
                   // chartArea: {
                   //     backgroundColor: {
                   //         fill: '#FF0000',
                   //     },
                   // },
                   backgroundColor: {
                       fill: 'transparent',
                       fillOpacity: 0.8
                   },
               }
               var chart = new google.visualization.PieChart(document.getElementById('donutchart2'));
               chart.draw(data, options);
           }
       </script>



    <nav class="navbar">
        <div class="container-fluid ">
            <div class="navbar-brand" href="#">
                <img src="op.jpg" alt="Logo" height="100px" class="d-inline-block align-text-top">
                <h2 class="heading1 ml-2"> Energy Monitoring System</h2>
                <span></span>
            </div>
        </div>
    </nav>


    <div class="container-fluid container1">
        <h3>Electrical Overview</h3>
        <div class="container2">
            <div class="item2">
                <div class="MW">
                     <asp:DataList ID="DataList13" runat="server" DataSourceID="SqlDataSource13">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="PMWLabel" runat="server" Text='<%# Eval("PMW") %>' />
            &nbsp;<div class="gap small"> MW</div><br /><br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [PMW] FROM [dataupdate]"></asp:SqlDataSource>
                </div>
                <div class:"inline">
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            &nbsp;<span class="color1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>PH-1: <asp:Label ID="P1GLabel" runat="server" Text='<%# Eval("P1G") %>' />
                            &nbsp;KW<br />
<br />
                        </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [P1G] FROM [dataupdate]"></asp:SqlDataSource>
&nbsp;
                </div>
                <div class:"inline">
                    <span>
                        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
                            <ItemTemplate>
                                &nbsp;<span class="color2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>PH-2: <asp:Label ID="P2GLabel" runat="server" Text='<%# Eval("P2G") %>' />
                                &nbsp;KW<br />
<br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [P2G] FROM [dataupdate]"></asp:SqlDataSource>
                    </span>
                </div>
                <div>
                </div>
            </div>
            
            <div class="piecontainer"> 
                <div>
               


                    <asp:Chart ID="Chart2" runat="server" Palette="None" PaletteCustomColors="LightSkyBlue; DodgerBlue; CornflowerBlue">
                        <series>
                            <asp:Series ChartType="Doughnut" Name="Series1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    </div>
                     <div class="relative">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:Label ID="PGLabel" runat="server" Text='<%# Eval("PG") %>' />
                            &nbsp;<div class="gap"> KW</div><br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [PG] FROM [dataupdate]"></asp:SqlDataSource>

                </div>
            </div>

            
            <div class="item3">
                <div>Natural Gas:
                  
                        <asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource8">
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="NGPSILabel" runat="server" Text='<%# Eval("NGPSI") %>' />
                                &nbsp;PSI
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [NGPSI] FROM [dataupdate]"></asp:SqlDataSource>
                  
                </div>
                <div>RLNG:
                  
                        <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource9">
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="RLNGPSILabel" runat="server" Text='<%# Eval("RLNGPSI") %>' />
                                &nbsp;PSI
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [RLNGPSI] FROM [dataupdate]"></asp:SqlDataSource>
                   
                </div>
                <div>FCG:
                    <asp:DataList ID="DataList10" runat="server" DataSourceID="SqlDataSource10">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="FCGPSILabel" runat="server" Text='<%# Eval("FCGPSI") %>' />
                            &nbsp;PSI
                        </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [FCGPSI] FROM [dataupdate]"></asp:SqlDataSource>
                   
                </div>
            </div>
        </div>
    </div>
    </div>



    <div class="container-fluid container1 line">  <h3>Steam Overview  </h3>
        <div class="container2">
            <div class="item2">
                <div class="MW">
                      <asp:DataList ID="DataList15" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="PSLabel" runat="server" Text='<%# Eval("PS") %>' />
                            &nbsp;<div class="gap small"> T/H</div><br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [PS] FROM [dataupdate]"></asp:SqlDataSource>
                </div>
                <div class:"inline">
                    <asp:DataList ID="DataList11" runat="server" DataSourceID="SqlDataSource11">
                        <ItemTemplate>
&nbsp;<span class="color1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> PH-1: <asp:Label ID="P1SLabel" runat="server" Text='<%# Eval("P1S") %>' />
                            &nbsp;t/h<br />
                            <br />
                        </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [P1S] FROM [dataupdate]" ></asp:SqlDataSource>
                </div>
                <div class:"inline">
                    
                        <asp:DataList ID="DataList12" runat="server" DataSourceID="SqlDataSource12">
                            <ItemTemplate>
                                &nbsp;<span class="color2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> PH-2: <asp:Label ID="P2SLabel" runat="server" Text='<%# Eval("P2S") %>' />
                                &nbsp;t/h<br />
<br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [P2S] FROM [dataupdate]"></asp:SqlDataSource>
                    
                </div>
                <div class:"inline">
                    
                        <asp:DataList ID="DataList14" runat="server" DataSourceID="SqlDataSource14">
                            <ItemTemplate>
                                &nbsp;<span class="color3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                 Coal Boiler: <asp:Label ID="CBLabel" runat="server" Text='<%# Eval("CB") %>' />
                                &nbsp;T/h<br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [CB] FROM [dataupdate]"></asp:SqlDataSource>
                </div>
                <div>
                </div>
            </div>

            <div class="piecontainer"> 
                <div>
                    <asp:Chart ID="Chart4" runat="server" EnableViewState="True" ImageLocation="~/op.jpg" Palette="None" PaletteCustomColors="LightSkyBlue; DodgerBlue; CornflowerBlue">
                        <series>
                            <asp:Series ChartType="Doughnut" Name="Series2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    </div>
                <div class="relative">
                    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="PSLabel" runat="server" Text='<%# Eval("PS") %>' />
                            &nbsp;<div class="gap"> T/H</div><br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [PS] FROM [dataupdate]"></asp:SqlDataSource>

                </div>
            </div>

            <div class="item3">
                <div>HRSG Gas Flow:
          
                        <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource5">
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="HRSGFLOWLabel" runat="server" Text='<%# Eval("HRSGFLOW") %>' />
                                &nbsp;m3/h
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [HRSGFLOW] FROM [dataupdate]"></asp:SqlDataSource>
                  
                </div>
                <div>GAS FIRED BOILER GAS FLOW:
                        <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource7">
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="CBLabel" runat="server" Text='<%# Eval("CB") %>' />
                                &nbsp;m3/h
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:amdemosql_demoConnectionString %>" SelectCommand="SELECT [CB] FROM [dataupdate]"></asp:SqlDataSource>
                  
                    <br />
                  
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource11">
            <series>
                <asp:Series ChartType="Doughnut" Name="Series1">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    </form>
</body>
</html>
