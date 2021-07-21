import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_textstyle.dart';

class GroceryItemCart extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final double? price;

  const GroceryItemCart(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const SizedBox(width: 10),
          Container(
            height: 80,
            child: Image.network(
              image,
              height: 80,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 120.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GroceryTitle(text: title),
                  GrocerySubtitle(text: subTitle),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_circle,
                ),
                color: Colors.green,
                onPressed: () {},
              ),
              Text(
                '1',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(
                  Icons.remove_circle,
                ),
                color: Colors.green,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
