import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/pages/grocery_cart_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/pages/grocery_home_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/pages/grocery_wishlist_page.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/pages/grocery_you_page.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class GroceryNavigationPage extends StatefulWidget {
  GroceryNavigationPage({Key? key}) : super(key: key);

  @override
  _GroceryNavigationPageState createState() => _GroceryNavigationPageState();
}

class _GroceryNavigationPageState extends State<GroceryNavigationPage> {
  int _currentIndex = 0;
  List<Map<String, Widget>> _pages = [
    {'pages': GroceryHomePage()},
    {'pages': GroceryCartPage()},
    {'pages': GroceryWishlistPage()},
    {'pages': GroceryYouPage()},
  ];

  List<Widget> _appBars = [];

  @override
  void initState() {
    super.initState();
    _appBars.add(_buildAppBar());
    _appBars.add(_buildAppBarOne('Your cart'));
    _appBars.add(_buildAppBarOne('Your Wishlist'));
    _appBars.add(_buildAppBarOne('You'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: _appBars[_currentIndex] as PreferredSizeWidget?,
      body: _pages[_currentIndex]['pages'],
      bottomNavigationBar: _buildBottomNavigationbar(),
    );
  }

  Widget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            child: Card(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    hintText: "Search products",
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
          ),
          leading: Image.network(deliveryIcon),
        ),
      ),
    );
  }

  Widget _buildAppBarOne(String title) {
    return AppBar(
      bottom: PreferredSize(
        child: Container(
          color: Colors.grey.shade200,
          height: 1.0,
        ),
        preferredSize: Size.fromHeight(1.0),
      ),
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  BottomNavigationBar _buildBottomNavigationbar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
      selectedLabelStyle: TextStyle(
        color: Colors.red,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.grey,
      ),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
          label: 'Cart',
          icon: Icon(Icons.shopping_cart),
          tooltip: 'Cart',
        ),
        BottomNavigationBarItem(
          label: 'Wishlist',
          icon: Icon(Icons.favorite_outline),
          tooltip: 'Wishlist',
        ),
        BottomNavigationBarItem(
          label: 'You',
          icon: Icon(Icons.person_outline),
          tooltip: 'You',
        ),
      ],
    );
  }
}
