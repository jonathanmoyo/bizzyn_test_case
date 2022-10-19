import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Helper/Appbar.dart';
import 'home.dart';
class Welcome extends StatelessWidget {

//   const Welcome({Key? key}) : super(key: key);
//
//   @override
//   _WelcomeState createState() => _WelcomeState();
// }
//
// class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.blueGrey.shade900,
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
            },),
            actions: [
              IconButton(
                color: Colors.grey,
                icon: Icon(Icons.share_outlined),
                onPressed: () {

                },
              )
            ],
            backgroundColor: Colors.blueGrey.shade900,
            elevation: 10,
            title: Text(
              'Revenue', style: TextStyle(color: Colors.grey),),
          ),

            body:ListView(
                children:<Widget> [
                  //Calender
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: myBoxDecoration(), //            <--- BoxDecoration here

                    // A Calendar view
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "<",
                          style: TextStyle(fontSize: 20.0,color: Colors.grey.shade400),
                        ),
                        Text(
                          "This month: September 2022",
                          style: TextStyle(fontSize: 20.0,color: Colors.grey.shade400),
                        ),
                        Text(
                          ">",
                          style: TextStyle(fontSize: 20.0,color: Colors.grey.shade400),
                        ),
                      ],
                    ),
                  ),
                  //Tabbar
                  Container(
                    child:new TabBar(
                      indicatorColor: Colors.green,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.greenAccent,
                      tabs: [
                        Tab(
                          text: "HOURLY",
                        ),
                        Tab(
                          text: "DAILY",
                        ),
                        Tab(
                          text: "WEEKLY",
                        ),
                      ],
                    ),
                  ),
                  // Graph
                  Container(
                    height: 400,
                    child: SfCartesianChart(
                      title: ChartTitle(
                        text: "Total: £300.00",
                        textStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                   fontSize: 18,
                                   fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'Roboto'
                                 ),
                        alignment: ChartAlignment.near,

                      ),
                      primaryXAxis: CategoryAxis(
                        majorGridLines: MajorGridLines(width: 0),

                        // title: AxisTitle(
                        //   text: 'Car Names'
                        // )
                      ),


                      // legend:
                      // Legend(
                      //   isVisible: false,
                      // )
                      // ,

                      primaryYAxis: NumericAxis(
                          axisLine: AxisLine(width: 0)
                        // title: AxisTitle(
                      //     text: 'Sales in Millions'
                      // )
                      ),
                      series: <ChartSeries>[
                        ColumnSeries<SalesData,String>(
                          name: "Cars",
                            dataSource: getColumnData(),
                            xValueMapper: (SalesData sales,_)=>sales.x,
                            yValueMapper: (SalesData sales,_)=>sales.y,
                            pointColorMapper: (SalesData sales,_)=>sales.color,

                          // dataLabelSettings: DataLabelSettings(
                          //   isVisible: true,
                          // )
                        )
                      ],
                    ),
                  ),
                  // Table
                  DataTable(
                    columns: [
                      DataColumn(label: Text("DAILY",style: TextStyle(color: Colors.grey))),
                      DataColumn(label: Text("REVENUE",style: TextStyle(color: Colors.grey))),
                      DataColumn(label: Text("SALES",style: TextStyle(color: Colors.grey))),
                      DataColumn(label: Text("PROFITS",style: TextStyle(color: Colors.grey))),
                    ],
                    rows: [
                      DataRow(cells:
                      [ DataCell(Text("Tue",style: TextStyle(color: Colors.greenAccent.shade400))),
                        DataCell(Text("£200.00",style: TextStyle(color: Colors.grey))),
                        DataCell(Text("4",style: TextStyle(color: Colors.greenAccent.shade400))),
                        DataCell(Text("£50.00",style: TextStyle(color: Colors.grey))),
                      ]),
                      DataRow(cells:
                      [ DataCell(Text("Wed",style: TextStyle(color: Colors.redAccent))),
                        DataCell(Text("£100.00",style: TextStyle(color: Colors.grey))),
                        DataCell(Text("2",style: TextStyle(color: Colors.redAccent))),
                        DataCell(Text("50.00",style: TextStyle(color: Colors.grey))),
                      ]),
                    ],
                  ),
            // bullets
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("\u2022", style: TextStyle(fontSize: 80,color: Colors.greenAccent),),
                      ), //bullet text
                      SizedBox(width: 10,), //space between bullet and text
                      Text("Best day ", style: TextStyle(fontSize: 20,color: Colors.greenAccent),)
                    ]
                ),
                SizedBox(width: 30,),
                Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: Text("\u2022", style: TextStyle(fontSize: 80,color: Colors.redAccent),),
                      ), //bullet text
                      SizedBox(width: 10,), //space between bullet and text
                      Text("Worst day", style: TextStyle(fontSize: 20,color: Colors.redAccent),)
                    ]
                )
              ]
        )


                ],
              ),
        ),
      ),
    );
  }
}

  //Histogram
class SalesData {
  String x;
  double y;
  final Color? color;
  SalesData(this.x,this.y,this.color);
}
dynamic getColumnData(){
  List<SalesData> ColumnData= <SalesData>[
    SalesData('Sun', 0,Colors.greenAccent),
    SalesData('Mon', 0,Colors.greenAccent),
    SalesData('Tue', 200,Colors.greenAccent),
    SalesData('Wed', 150,Colors.greenAccent),
    SalesData('Thu', 0,Colors.greenAccent),
    SalesData('Fri', 0,Colors.greenAccent),
    SalesData('Sat', 0,Colors.greenAccent),
  ];
  return ColumnData;
}




