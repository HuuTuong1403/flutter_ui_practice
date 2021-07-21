import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_item_cart.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class GroceryWishlistPage extends StatefulWidget {
  GroceryWishlistPage({Key? key}) : super(key: key);

  @override
  _GroceryWishlistPageState createState() => _GroceryWishlistPageState();
}

class _GroceryWishlistPageState extends State<GroceryWishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              GroceryItemCart(
                  title: 'Pineapple',
                  subTitle: '4 in a pack',
                  image: pineapple),
              GroceryItemCart(
                  title: 'cabbage', subTitle: '1kg', image: cabbage),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        _buildTotals()
      ],
    );
  }

  Widget _buildTotals() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Add to Wishlist',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
