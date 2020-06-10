import 'package:flutter/material.dart';
import 'package:prototype/models/product.dart';
import 'package:prototype/pages/products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Product> _products = [];

  void _addProduct(Product product) {
    setState(() {
      _products.add(product);
    });
  }

  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/create');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      drawer: _buildSideDrawer(context),     
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Center(
              child: Products(_products)
              //child: ProductControl(_addProduct),
            ),
          ),
          //Expanded(child: Products(_products))
        ],
      ),
    );
  }
}
