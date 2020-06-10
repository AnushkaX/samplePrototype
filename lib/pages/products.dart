import 'package:flutter/material.dart';
import 'package:prototype/models/product.dart';

class Products extends StatelessWidget {
  List<Product> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Products",
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            )
          ],
        ),
        body: _buildProductsList(products, context),
      ),
    );
  }

  

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/img.png'),
          Text(products[index].title)
        ],
      ),
    );
  }

  Widget _buildProductsList(List<Product> products, BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return products.length > 0
        ? GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Text('No prods');
  }
}
