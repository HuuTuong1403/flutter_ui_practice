import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/pages/grocery_item_detail_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_textstyle.dart';

class GroceryItemNewArrival extends StatelessWidget {
  final String image;
  final String title;
  final String? price;
  final String subTitle;
  const GroceryItemNewArrival(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
        boxShadow: [
          BoxShadow(
              blurRadius: 10, color: Colors.grey.shade200, spreadRadius: 2)
        ],
      ),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GroceryItemDetailPage()));
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(
                        '$image',
                        height: 150.0,
                      ),
                    ),
                    GroceryTitle(text: title),
                    GrocerySubtitle(text: subTitle),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0))),
                  child: Text(
                    "Add to Cart",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
