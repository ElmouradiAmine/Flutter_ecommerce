import 'package:flutter/material.dart';


class AdressTag extends StatelessWidget{

  final String _adresses;
  AdressTag(this._adresses);

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green, width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(_adresses),
              ));
  }

}