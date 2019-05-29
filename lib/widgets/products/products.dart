import 'package:first_app/widgets/products/price_tag.dart';
import 'package:first_app/widgets/products/products_card.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  

  Widget _buildproductlist() {
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: (BuildContext context, index)=>
          ProductCard(products[index], index),
        
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text("No Product, Common ad some product"),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildproductlist();
  }
}
