import 'package:flutter/material.dart';

class GroceryItemCategory extends StatelessWidget {
  final String title;
  final String image;
  final Color? backgroundColor;
  const GroceryItemCategory({
    Key? key,
    required this.title,
    required this.image,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.grey.shade200,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          padding: const EdgeInsets.all(10),
          width: 100,
          child: Column(
            children: [
              Image.network(image),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
