import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_item_cart.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class GroceryCartPage extends StatefulWidget {
  GroceryCartPage({Key? key}) : super(key: key);

  @override
  _GroceryCartPageState createState() => _GroceryCartPageState();
}

class _GroceryCartPageState extends State<GroceryCartPage> {
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
        const SizedBox(height: 10),
        _buildTotals(),
      ],
    );
  }

  Widget _buildTotals() {
    return ClipPath(
      clipper: OvalTopBorderClipper(),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Colors.grey.shade700,
              spreadRadius: 80.0,
            )
          ],
          color: Colors.white,
        ),
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('Rs. 1500'),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivary fee'),
                Text('Rs. 100'),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text('Rs. 1600'),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Continue to Checkout',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Rs. 1600',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
