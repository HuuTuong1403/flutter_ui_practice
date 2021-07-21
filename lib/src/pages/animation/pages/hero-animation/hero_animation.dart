import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/hero-animation/hero_detail.dart';
import 'package:get/get.dart';

import '../../../fake_data.dart';

class HeroAnimation extends StatefulWidget {
  HeroAnimation({Key? key}) : super(key: key);

  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

const List<Map> dummy = [
  {"title": "Beautiful Cardigan", "price": "\$600"},
  {"title": "Leather Bag", "price": "\$400"},
  {"title": "White Beautiful Bag", "price": "\$350"},
];

class _HeroAnimationState extends State<HeroAnimation>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  SwiperController _swiperController = SwiperController();
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                  Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Best items ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "from around",
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Swiper(
              physics: BouncingScrollPhysics(),
              viewportFraction: 0.8,
              itemCount: 3,
              loop: false,
              controller: _swiperController,
              onIndexChanged: (index) {
                _controller.reverse();
                setState(() {
                  _currentIndex = index;
                  _controller.forward();
                });
              },
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 1),
                              pageBuilder: (_, __, ___) =>
                                  HeroDetailAnim(index: index),
                            ),
                          ),
                          child: Hero(
                            tag: "image$index",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(images[index],
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Stack(
            children: [
              AnimatedOpacity(
                opacity: _currentIndex == 0 ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: _buildDesc(0),
              ),
              AnimatedOpacity(
                opacity: _currentIndex == 1 ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: _buildDesc(1),
              ),
              AnimatedOpacity(
                opacity: _currentIndex == 2 ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: _buildDesc(2),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDesc(int index) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Hero(
            tag: "title$index",
            child: Material(
              type: MaterialType.transparency,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  dummy[index]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Hero(
            tag: 'price$index',
            child: Material(
              type: MaterialType.transparency,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  dummy[index]['price'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
