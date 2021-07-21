import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/animation/pages/animation-bottom-bar/animatedBottomNav.dart';

class AnimationBottomBar extends StatefulWidget {
  AnimationBottomBar({Key? key}) : super(key: key);

  @override
  _AnimationBottomBarState createState() => _AnimationBottomBarState();
}

class _AnimationBottomBarState extends State<AnimationBottomBar> {
  int? _currentPage;

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Animated Bottom Navigation Bar'),
      ),
      body: getPage(_currentPage!),
      bottomNavigationBar: AnimatedBottomNav(
        currentIndex: _currentPage,
        onChange: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }

  getPage(int index) {
    switch (index) {
      case 0:
        return Center(
          child: Text('Home Page'),
        );
      case 1:
        return Center(
          child: Text('Profile Page'),
        );
      case 2:
        return Center(
          child: Text('Menu Page'),
        );
    }
  }
}
