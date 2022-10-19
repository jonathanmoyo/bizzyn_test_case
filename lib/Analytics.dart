import 'package:flutter/material.dart';
class Analytics extends StatelessWidget {
  const Analytics ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
        centerTitle: true,
        // menu
        leading: Icon(Icons.menu),
        actions: [
        IconButton(
        color: Colors.blue,
        icon: Icon(Icons.share),
        onPressed: () {
        // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
        //     Home()), (Route<dynamic> route) => false);
        },
        )
        ],
        backgroundColor: Colors.black45,
        elevation: 10 ,
        title: Text('title'),
        ) ,
        body: Center(
          child: Container(
        child: new TabBar(
        indicatorColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.blue,
        tabs: [
        Tab(
        text: "ONE",
        ),
        Tab(
        text: "TWO",
        ),
        Tab(
        text: "THREE",
        ),
        ],
        ),
        ),
        ),
        ),
      ),
    );
  }
}
