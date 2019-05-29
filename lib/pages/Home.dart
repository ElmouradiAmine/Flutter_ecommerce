import 'package:first_app/pages/product_admin.dart';
import 'package:first_app/widgets/products/products.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  List<Map<String, dynamic>> products = [];
   
   Home(this.products);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text("Manage Task"),
              onTap: () {
                Navigator.pushReplacementNamed( context, '/admin'
                   );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Products(products),
    );
  }
}
