import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_textstyle.dart';

class GroceryYouPage extends StatefulWidget {
  GroceryYouPage({Key? key}) : super(key: key);

  @override
  _GroceryYouPageState createState() => _GroceryYouPageState();
}

class _GroceryYouPageState extends State<GroceryYouPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            onTap: () {},
            title: GroceryTitle(
              text: 'My Orders',
            ),
            leading: Icon(Icons.edit),
          ),
          ListTile(
            onTap: () {},
            title: GroceryTitle(
              text: 'My Favorite',
            ),
            leading: Icon(Icons.favorite_outline),
          ),
          ListTile(
            onTap: () {},
            title: GroceryTitle(
              text: 'Payment Details',
            ),
            leading: Icon(Icons.account_balance_wallet),
          ),
          ListTile(
            onTap: () {},
            title: GroceryTitle(
              text: 'My Account',
            ),
            leading: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
