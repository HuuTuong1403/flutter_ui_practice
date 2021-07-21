import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/pages/grocery_item_detail_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_textstyle.dart';

class GroceryItemDaily extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const GroceryItemDaily(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => GroceryItemDetailPage()));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
        child: Row(
          children: [
            const SizedBox(width: 10.0),
            Container(
              height: 80,
              child: Image.network(
                image,
                height: 80,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GroceryTitle(text: title),
                  GrocerySubtitle(text: subTitle),
                ],
              ),
            ),
            const SizedBox(width: 10.0),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
}
