import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Helper/Appbar.dart';
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
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: CustomAppBar(title: 'Choose Your Region',),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                height: 550,
                child: SfCartesianChart(
                  title: ChartTitle(
                    text: "Car sales"
                  ),
                  primaryXAxis: CategoryAxis(
                    title: AxisTitle(
                      text: 'Car Names'
                    )
                  ),
                  legend:
                  Legend(
                    isVisible: true,
                  )
                  ,
                  primaryYAxis: NumericAxis( title: AxisTitle(
                      text: 'Sales in Millions'
                  )
                  ),
                  series: <ChartSeries>[
                    ColumnSeries<SalesData,String>(
                      name: "Cars",
                        dataSource: getColumnData(),
                        xValueMapper: (SalesData sales,_)=>sales.x,
                        yValueMapper: (SalesData sales,_)=>sales.y,
                      dataLabelSettings: DataLabelSettings(
                        isVisible: true,
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
class SalesData {
  String x;
  double y;
  SalesData(this.x,this.y);
}
dynamic getColumnData(){
  List<SalesData> ColumnData= <SalesData>[
    SalesData('BMW', 20),
    SalesData('AUDI', 30),
    SalesData('HONDA', 35),
    SalesData('FERRARI', 40),
    SalesData('BUGATTI', 50)
  ];
  return ColumnData;
}