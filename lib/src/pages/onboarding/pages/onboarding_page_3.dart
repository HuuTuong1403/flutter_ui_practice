import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/widgets/custom_swiper_pagination.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OnBoardingPage3 extends StatefulWidget {
  OnBoardingPage3({Key? key}) : super(key: key);

  @override
  _OnBoardingPage3State createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
  final SwiperController _swiperController = SwiperController();
  final int _pageCount = 3;
  int _currentIndex = 0;
  final List<String> titles = [
    "Lorem ipsum dolor \nsit amet, consectetur adipiscing \n elit placerat. ",
    "Aliquam eget justo \n nec arcu ultricies elementum \n id at metus. ",
    "Nulla facilisi. \nFusce non tempus risus.\n Sed ultrices scelerisque sem,"
  ];
  final List<String> images = [
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F2.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F3.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F5.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
  ];
  final List<Color> pageBgs = [
    Colors.blue.shade300,
    Colors.grey.shade600,
    Colors.cyan.shade300
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 300,
              margin: const EdgeInsets.only(left: 8, right: 8),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Swiper(
                  itemCount: _pageCount,
                  index: _currentIndex,
                  controller: _swiperController,
                  loop: false,
                  onIndexChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return _buildPage(
                        title: titles[index],
                        icon: images[index + 2],
                        pageBg: pageBgs[index]);
                  },
                  pagination: SwiperPagination(
                    builder: CustomPaginationBuilder(
                        activeSize: Size(10, 20),
                        size: Size(10, 15),
                        activeColor: Colors.red,
                        color: Colors.grey.shade600),
                  ),
                ),
              ),
              SizedBox(height: 10),
              _buildButtons(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      margin: const EdgeInsets.only(right: 16, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Opacity(
            opacity: _currentIndex > 0 ? 1 : 0,
            child: IconButton(
              splashColor: _currentIndex > 0 ? Colors.grey : Colors.transparent,
              color: Colors.black,
              icon: Icon(_currentIndex > 0 ? Icons.arrow_back_ios : null,
                  size: 30),
              onPressed: () async {
                if (_currentIndex > 0) {
                  _swiperController.previous();
                }
              },
            ),
          ),
          TextButton(
            child: Text("Skip", style: TextStyle(color: Colors.grey.shade600)),
            onPressed: () {
              Get.back();
            },
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(
                _currentIndex < _pageCount - 1
                    ? Icons.arrow_forward_ios
                    : FontAwesomeIcons.check,
                size: 30),
            onPressed: () async {
              if (_currentIndex < _pageCount - 1) {
                _swiperController.next();
              } else {
                Get.back();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPage(
      {required String title, required String icon, Color? pageBg}) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(16, 50, 16, 40),
      padding: const EdgeInsets.all(16),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: pageBg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(title, textAlign: TextAlign.center, style: titleStyle),
          SizedBox(height: 30),
          Expanded(
            child: ClipOval(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(icon), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}
