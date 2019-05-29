import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue = '';
  String _discriptionValue = '';
  String _priceValue = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin:
            EdgeInsets.only(left: 12.0, right: 12.0, bottom: 10.0, top: 10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Product Title"),
              onChanged: (String value) {
                _titleValue = value;
              },
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(labelText: "Product discriptiopn"),
              onChanged: (String value) {
                
                _discriptionValue = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: " Product price"),
              onChanged: (String value) {
                _priceValue = value;
              },
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              child: Text("Add Product"),
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': _titleValue,
                  'discription': _discriptionValue,
                  'price': _priceValue,
                  'image': 'assets/food.jpg'
                };
                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, '/home');
              },
            )
          ],
        ));
  }
}
