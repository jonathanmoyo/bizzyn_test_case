
import 'package:bizzyn_test_case/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
//
// class _HomeState extends State<Home> {
  var isLoaded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.grey,),
        actions: [
          IconButton(
            color: Colors.grey,
            icon: Icon(Icons.share_outlined),
            onPressed: () {
              // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
              //     Home()), (Route<dynamic> route) => false);
            },
          )
        ],
        backgroundColor: Colors.blueGrey.shade900,
        elevation: 10,
        title: Text(
          'Analytics', style: TextStyle(color: Colors.grey),),
      ),
      body:
      ListView(
        //A column of Card
        children: <Widget>[
          // CALENDER
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

          // card 1 Revenue
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(

              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Welcome()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.blueGrey.shade900,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  // borderRadius:,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //FIRST ROW IN CARD
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Revenue',
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                    textAlign: TextAlign.center,),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 8, 10, 0),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Text('£750.00',
                                      style: TextStyle(fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent.shade400),
                                      textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(155, 10, 0, 5),
                                child: Container(
                                  // height: 80,
                                    child: Icon(Icons.trending_up, size: 80,
                                        color: Colors.greenAccent)
                                ),
                              )
                            ],
                          ),

                          // SECOND ROW IN CARD
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Best Day:28 Sep',
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.grey.shade400),
                                  textAlign: TextAlign.center,),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  child: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ),
          ),
          Divider(height: 2,color: Colors.blueGrey.shade800,thickness: 2,),
          //Card two Sales
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(

              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Welcome()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.blueGrey.shade900,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  // borderRadius:,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //FIRST ROW IN CARD
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Sales',
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                    textAlign: TextAlign.center,),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 8, 10, 0),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Text('9',
                                      style: TextStyle(fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent.shade400),
                                      textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(228, 10, 0, 5),
                                child: Container(
                                  // height: 80,
                                    child: Icon(Icons.trending_up, size: 80,
                                        color: Colors.greenAccent)
                                ),
                              )
                            ],
                          ),

                          // SECOND ROW IN CARD
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Best Day:28 Sep',
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.grey.shade400),
                                  textAlign: TextAlign.center,),
                                Container(
                                    margin: EdgeInsets.only(top: 0),
                                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ),
          ),
          Divider(height: 2,color: Colors.blueGrey.shade800,thickness: 2,),
          //Card three Tickets
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(

              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Welcome()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.blueGrey.shade900,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  // borderRadius:,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //FIRST ROW IN CARD
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Average Ticket Size',
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                    textAlign: TextAlign.center,),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 8, 10, 0),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Text('£83.33',
                                      style: TextStyle(fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent.shade400),
                                      textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(100, 10, 0, 5),
                                child: Container(
                                  // height: 80,
                                    child: Icon(Icons.trending_up, size: 80,
                                        color: Colors.greenAccent)
                                ),
                              )
                            ],
                          ),

                          // SECOND ROW IN CARD
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Best Day:28 Sep',
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.grey.shade400),
                                  textAlign: TextAlign.center,),
                                Container(
                                    margin: EdgeInsets.only(top: 0),
                                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ),
          ),
          Divider(height: 2,color: Colors.blueGrey.shade800,thickness: 2,),
          //Card Four Profits
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(

              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Welcome()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.blueGrey.shade900,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  // borderRadius:,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //FIRST ROW IN CARD
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Profits',
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                    textAlign: TextAlign.center,),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 8, 10, 0),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Text('£0.00',
                                      style: TextStyle(fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent.shade400),
                                      textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(189, 10, 0, 5),
                                child: Container(
                                  // height: 80,
                                    child: Icon(Icons.trending_up, size: 80,
                                        color: Colors.greenAccent)
                                ),
                              )
                            ],
                          ),

                          // SECOND ROW IN CARD
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Best Day:28 Sep',
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.grey.shade400),
                                  textAlign: TextAlign.center,),
                                Container(
                                    margin: EdgeInsets.only(top: 0),
                                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ),
          ),
          Divider(height: 2,color: Colors.blueGrey.shade800,thickness: 2,),
          // Card five SalesTax
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(

              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Welcome()));
                },
                child: Card(
                  elevation: 0,
                  color: Colors.blueGrey.shade900,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  // borderRadius:,

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //FIRST ROW IN CARD
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Sales Tax',
                                    style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade400),
                                    textAlign: TextAlign.center,),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 8, 10, 0),
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Text('0.00',
                                      style: TextStyle(fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent.shade400),
                                      textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(192, 10, 0, 5),
                                child: Container(
                                  // height: 80,
                                    child: Icon(Icons.trending_up, size: 80,
                                        color: Colors.greenAccent)
                                ),
                              )
                            ],
                          ),

                          // SECOND ROW IN CARD
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Best Day:28 Sep',
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.grey.shade400),
                                  textAlign: TextAlign.center,),
                                Container(
                                    margin: EdgeInsets.only(top: 0),
                                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.blueGrey.shade800,
        width: 3.0
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(5.0) //                 <--- border radius here
    ),
  );
}