import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/hero-animation/hero_animation.dart';

import '../../../fake_data.dart';

class HeroDetailAnim extends StatelessWidget {
  final int? index;
  const HeroDetailAnim({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Hero(
          tag: "image$index",
          child: Image.network(images[index!], fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              IconButton(
                color: Colors.white,
                icon: Icon(
                    Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              const SizedBox(height: 10),
              Hero(
                tag: "title$index",
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    dummy[index!]['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Hero(
                tag: "price$index",
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    dummy[index!]['price'],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ]),
    );
  }
}
