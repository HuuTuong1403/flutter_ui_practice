import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';

class OnBoardingPage6 extends StatefulWidget {
  OnBoardingPage6({Key? key}) : super(key: key);

  @override
  _OnBoardingPage6State createState() => _OnBoardingPage6State();
}

const List<String> introIllus = [
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F1.png?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F2.png?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F3.png?alt=media'
];

class _OnBoardingPage6State extends State<OnBoardingPage6> {
  SwiperController _swiperController = SwiperController();
  int _currentIndex = 0;
  final int _pageCount = 3;
  final List<String> titles = ['Welcome', 'Awesome App', 'Flutter App'];

  final List<String> subTitles = [
    "Welcome to this awesome intro screen app.",
    "This is an awesome app, of intro screen design",
    "Flutter is awesome for app development"
  ];

  final List<Color> colors = [
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.indigo.shade300,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _swiperController,
            itemCount: _pageCount,
            pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    activeColor: Colors.red, activeSize: 20)),
            itemBuilder: (context, index) {
              return _buildItem(
                  title: titles[index],
                  bg: colors[index],
                  subTitle: subTitles[index],
                  imageUrl: introIllus[index]);
            },
          ),
          _buildButtons(),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(right: 16, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _currentIndex > 0
              ? IconButton(
                  splashColor:
                      _currentIndex > 0 ? Colors.grey : Colors.transparent,
                  color: Colors.black,
                  icon: Icon(_currentIndex > 0 ? Icons.arrow_back : null,
                      size: 30),
                  onPressed: () async {
                    if (_currentIndex > 0) {
                      _swiperController.previous();
                    }
                  },
                )
              : TextButton(
                  child: Text("Skip", style: TextStyle(color: Colors.black)),
                  onPressed: () {
                    Get.back();
                  },
                ),
          IconButton(
            color: Colors.black,
            icon: Icon(
                _currentIndex < _pageCount - 1
                    ? Icons.arrow_forward
                    : Icons.check,
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

  Widget _buildItem(
      {required String title, Color? bg, String? subTitle, String? imageUrl}) {
    return Container(
        color: bg ?? Theme.of(context).primaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 40),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white),
                ),
                if (subTitle != null) ...[
                  const SizedBox(height: 20),
                  Text(
                    subTitle,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.center,
                  )
                ],
                const SizedBox(height: 40),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 70),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Material(
                            elevation: 4,
                            child: CachedNetworkImage(
                                imageUrl: imageUrl!, fit: BoxFit.cover)),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
