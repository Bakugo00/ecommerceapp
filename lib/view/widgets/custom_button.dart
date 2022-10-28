import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  String text;
  Function? onpressed;

  custombutton({this.text = "", this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      padding: EdgeInsets.all(10.0),
      color: Color.fromARGB(255, 74, 195, 104),
      onPressed: (() {
        onpressed;
      }),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
