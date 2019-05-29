import 'package:first_app/widgets/products/adress_tag.dart';
import 'package:first_app/widgets/products/price_tag.dart';
import 'package:first_app/widgets/ui_elements/title_default.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
   final Map<String, dynamic> product;
   final int product_index;

   ProductCard(this.product, this.product_index);

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Card(
      borderOnForeground: true,
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleDefault( product['title']),
              SizedBox(width: 10.0),
              PriceTag(product['price'].toString()),
            ],
          ),

          AdressTag("Vijaynagar, Indore"),
         
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.info_outline,
                  ),
                  color: Colors.blueAccent,
                  onPressed: () => Navigator.pushNamed<bool>(
                        context,
                        '/product/' + product_index.toString(),
                      )),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  color: Colors.pink,
                  onPressed: () => Navigator.pushNamed<bool>(
                        context,
                        '/product/' + product_index.toString(),
                      ))
            ],
          )
        ],
      ),
    );
  }
}
