import 'package:flutter/material.dart';


class TitleDefault extends StatelessWidget{
 final String title;

 TitleDefault(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
                 title,
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0),
              );
  }


}