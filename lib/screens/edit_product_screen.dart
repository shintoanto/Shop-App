import 'package:flutter/material.dart';

class EditeProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';

  @override
  _EditeProductScreenState createState() => _EditeProductScreenState();
}

class _EditeProductScreenState extends State<EditeProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            child: ListView(
          children: <Widget>[TextFormField()],
        )),
      ),
    );
  }
}
