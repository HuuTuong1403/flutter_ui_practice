import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_item_category.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_item_daily.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_item_newArrival.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class GroceryHomePage extends StatefulWidget {
  GroceryHomePage({Key? key}) : super(key: key);

  @override
  _GroceryHomePageState createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  List<String> titles = [
    'Vegetables',
    'Fruit',
    'Masala',
  ];

  List<String> images = [
    deliveryIcon,
    fruit,
    mortar,
  ];

  List<Color> colors = [
    Color.fromRGBO(11, 200, 0, 0.15),
    Color.fromRGBO(200, 0, 11, 0.15),
    Color.fromRGBO(20, 20, 15, 0.15),
  ];

  List<Map<String, String>> _listNewArrivals = [
    {
      'image': mango,
      'title': 'Local Mango',
      'subTitle': '1kg',
    },
    {
      'image': brocoli,
      'title': 'Brocoli',
      'subTitle': '6 in a pack',
    },
  ];

  List<Map<String, String>> _listDailyNeed = [
    {'title': "Cabbage", 'image': cabbage, 'subtitle': "1 kg"},
    {'title': "Red/yellow Capsicum", 'image': capsicum, 'subtitle': "1 kg"},
    {'title': "Pineapple", 'image': pineapple, 'subtitle': "4 in a pack"}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildCategories(),
        const SizedBox(height: 10.0),
        _buildListHeader('NEW ARRIVALS', 'SEE ALL'),
        _buildNewArrivals(),
        const SizedBox(height: 10.0),
        _buildListHeader("DAILY NEEDS", "SEE ALL"),
        const SizedBox(height: 10.0),
        ..._buildDailyNeeds(),
      ],
    );
  }

  List<Widget> _buildDailyNeeds() {
    return List.generate(
      _listDailyNeed.length,
      (index) {
        return GroceryItemDaily(
          title: _listDailyNeed[index]['title'] ?? '',
          subTitle: _listDailyNeed[index]['subTitle'] ?? '',
          image: _listDailyNeed[index]['image'] ?? '',
        );
      },
    );
  }

  Widget _buildNewArrivals() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 290,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _listNewArrivals.length,
        itemBuilder: (context, index) {
          return GroceryItemNewArrival(
            image: _listNewArrivals[index]['image']!,
            title: _listNewArrivals[index]['title']!,
            subTitle: _listNewArrivals[index]['subTitle']!,
          );
        },
      ),
    );
  }

  Widget _buildListHeader(String left, String right) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.red,
            child: Text(
              left,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: Text(
                right,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return GroceryItemCategory(
            title: titles[index],
            image: images[index],
            backgroundColor: colors[index],
          );
        },
      ),
    );
  }
}
