import 'package:flutter/material.dart';
import 'package:shop_app/screens/edit_product_screen.dart';

class UserProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  UserProductItem(this.id,this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {Navigator.of(context).pushNamed(EditeProductScreen.routeName,arguments: )},
            color: Theme.of(context).primaryColor,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
