import 'package:first_app/widgets/products/adress_tag.dart';
import 'package:first_app/widgets/ui_elements/title_default.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        onWillPop: () {
          print(" back button is pressed ");
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child:TitleDefault(title),

                ),

                AdressTag("Vijaynagar, Indore"),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                        child: Text("Delete "),
                        onPressed: () => {
                              showDialog(context: context, builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Are you Sure"),
                                  content: Text("This cannot be done"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("DISCARD"),
                                      onPressed: () => {Navigator.pop(context)},
                                    ),
                                    FlatButton(
                                      child: Text("CONTINUE"),
                                      onPressed: () => {
                                            Navigator.pop(context),
                                            Navigator.pop(context, true)
                                          },
                                    ),
                                  ],
                                );
                              })
                            }))
              ],
            )));
  }
}
