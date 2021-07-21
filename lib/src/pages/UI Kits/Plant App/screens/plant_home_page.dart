import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Plant%20App/screens/green_plant_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Plant%20App/screens/indoor_plant_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Plant%20App/screens/shape_plant_page.dart';

class PlantHomePage extends StatefulWidget {
  PlantHomePage({Key? key}) : super(key: key);

  @override
  _PlantHomePageState createState() => _PlantHomePageState();
}

class _PlantHomePageState extends State<PlantHomePage> {
  List<Widget> _listWidgets = [
    GreenPlantPage(),
    IndoorPlantPage(),
    ShapePlanePage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90,
            padding: const EdgeInsets.symmetric(vertical: 35),
            color: Colors.green,
            child: RotatedBox(
              quarterTurns: 1,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz, color: Colors.white),
                    onPressed: () {},
                  ),
                  Spacer(),
                  buildMenuItem("Green Plant", 0),
                  SizedBox(width: 15),
                  buildMenuItem("Indoor Plant", 1),
                  SizedBox(width: 15),
                  buildMenuItem("Shape Plant", 2),
                  Spacer(),
                  RotatedBox(
                    quarterTurns: -1,
                    child: IconButton(
                      icon: Icon(Icons.home, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: PageView(
                children: [
                  _listWidgets[_currentIndex],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildMenuItem(String title, int index) {
    bool isSelected = _currentIndex == index;
    return TextButton(
      onPressed: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isSelected
              ? Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                )
              : Container(
                  height: 10,
                ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white60,
              fontSize: isSelected ? 20 : 18,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
