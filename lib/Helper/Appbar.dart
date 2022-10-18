import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const CustomAppBar({Key? key,required this.title}):super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      centerTitle: true,
      actions: [
        IconButton(
          color: Colors.amberAccent,
          icon: Icon(Icons.share),
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
            //     Home()), (Route<dynamic> route) => false);
          },
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0 ,
      title: Text(title),
    );
  }
}