import 'package:first_app/pages/Home.dart';
import 'package:first_app/pages/auth.dart';
import 'package:first_app/pages/product.dart';
import 'package:first_app/pages/product_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}

class MyState extends State<MyApp> {
  List<Map<String,dynamic>> _products = [];

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       home:Auth(),
      routes: {
        '/home': (BuildContext context) =>
          Home(_products),
        '/admin': (BuildContext context) => ProductAdminPage(_addProduct, _deleteProduct),
      },
      onGenerateRoute: (RouteSettings setting) {
        final List<String> pathElements = setting.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                  _products[index]['title'], _products[index]['image']));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) =>
              Home(_products),
        );
      },
    );
  }
}
