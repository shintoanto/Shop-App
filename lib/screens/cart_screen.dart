import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your cart'),
      ),
      body: Column(
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(15),
              child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    children: <Widget>[
                      Text('Total'),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        label: Text('\$${cart.totalAmount}'),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      FlatButton(
                        child: Text('ORDER NOW'),
                        onPressed: () {},
                        textColor: Theme.of(context).primaryColor,
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
