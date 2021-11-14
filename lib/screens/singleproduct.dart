import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget{
  var product ;
  SingleProduct(this.product);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(product['p_name']),
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Image.asset(product['p_image']),
          Text(product['p_price'].toString()),
          Text(product['d_price'].toString()),
          Text(product['p_desc']),
          ElevatedButton(
            onPressed: (){

            },
            child: Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}