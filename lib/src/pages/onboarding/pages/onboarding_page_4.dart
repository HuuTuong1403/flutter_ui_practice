import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_practice/src/pages/onboarding/widgets/custom_swiper_pagination.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OnBoardingPage4 extends StatefulWidget {
  OnBoardingPage4({Key? key}) : super(key: key);

  @override
  _OnBoardingPage4State createState() => _OnBoardingPage4State();
}

class _OnBoardingPage4State extends State<OnBoardingPage4> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
                fit: BoxFit.contain),
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Swiper(
                  index: _currentIndex,
                  controller: _swiperController,
                  itemCount: _pageCount,
                  loop: false,
                  itemBuilder: (context, index) {
                    return _buildPage(
                        title: titles[index], icon: images[index]);
                  },
                  onIndexChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  pagination: SwiperPagination(
                    builder: CustomPaginationBuilder(
                        activeSize: Size(10, 20),
                        activeColor: Colors.red,
                        size: Size(10, 15),
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
              icon: Icon(
                  _currentIndex > 0 ? FontAwesomeIcons.arrowCircleLeft : null,
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
                    ? FontAwesomeIcons.arrowCircleRight
                    : FontAwesomeIcons.checkCircle,
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

  Widget _buildPage({required String title, required String icon}) {
    final TextStyle titleStyle =
        TextStyle(fontWeight: FontWeight.w500, fontSize: 20);
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: NetworkImage(icon),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.multiply),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(5, 5),
                  color: Colors.black26)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(title,
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(color: Colors.white)),
            SizedBox(height: 30)
          ],
        ));
  }
}
