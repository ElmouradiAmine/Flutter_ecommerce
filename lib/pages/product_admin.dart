import 'package:first_app/pages/Home.dart';
import 'package:first_app/pages/product_create.dart';
import 'package:first_app/pages/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleleteProduct;
  ProductAdminPage(this.addProduct, this.deleleteProduct);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(

       length: 2,
        child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("All Product"),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context,'/home');
                    
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Manage Product"),
        bottom: TabBar(tabs: <Widget>[
          Tab(text: "My Products"),
          Tab(text: "My Products",),
        ],),
      ),
      body: TabBarView(children: <Widget>[ProductCreatePage(addProduct),ProductListPage()],)
    ));
    ;
  }
}
