import 'package:flutter/material.dart';
import 'package:prototype/pages/create.dart';
import 'package:prototype/pages/product_manager.dart';

void main() {
  runApp(MyPrototype());
}

class MyPrototype extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPrototypeState();
  }
}

class _MyPrototypeState extends State<MyPrototype> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.grey,
      ),
      home: ProductManager(),
      routes: {
        '/create' : (BuildContext context) => CreateProduct(),
      },
    );
  }
}
