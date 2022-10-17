import 'dart:html';

import 'package:bizzyn_test_case/welcome.dart';
import 'package:flutter/material.dart';
import 'Helper/Appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  var isLoaded = true;
  var listname=['Jonathan moyo','azim emannuel','Richard Kimoda','Joel kazimoto','imani rafael','Brenda abel',
  'Dorcas Leskanga','Victor Mwangoge','Herdt Rweyemamu'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: CustomAppBar(title: 'Choose your name',),
        body:
        Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
              itemCount: listname.length,
              itemBuilder: (context,index){
                return Card(
                  elevation: 20 ,
                  color: Colors.white,
                  child: ListTile(
                    // leading: Icons.ima ,
                    trailing: Icon(Icons.leaderboard),
                    subtitle: Text('Lorem ipsum dolor sit amet'),
                    dense: true,
                    title: Text(listname[index],style: TextStyle(fontWeight: FontWeight.bold)),
                    onTap:() {
                      // print(regions![index].regionCode);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));

                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ViewDistrict(regionCode: regions![index].regionCode)));

                    },
                  ),

                );

              }
          ),
        )
    );


  }
}