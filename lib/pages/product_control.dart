import 'package:flutter/material.dart';
import 'package:prototype/models/product.dart';

class ProductControl extends StatelessWidget{

  final Function addProduct;

  ProductControl(this.addProduct);

  Product sampleProduct = new Product(
      title: 'Trouser',
      description: 'Denim',
      price: 2000,
      image: 'assets/img.png');

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
              onPressed: () {
                addProduct(sampleProduct);
              },
              child: Text('Add Product'),
            );
  }

}