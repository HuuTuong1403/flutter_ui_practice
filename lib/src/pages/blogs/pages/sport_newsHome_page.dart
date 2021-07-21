import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SportNewsHomePage extends StatefulWidget {
  SportNewsHomePage({Key? key}) : super(key: key);

  @override
  _SportNewsHomePageState createState() => _SportNewsHomePageState();
}

class _SportNewsHomePageState extends State<SportNewsHomePage> {
  final Color bgColor = Color(0xffF3F3F3);
  final Color primaryColor = Color(0xffE70F0B);
  var titleTextStyle = TextStyle(
      color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold);
  var teamNameTextStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey.shade800);
  List<bool> check = [true, false, false];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Feed",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          ToggleButtons(
            fillColor: primaryColor,
            hoverColor: primaryColor,
            renderBorder: true,
            borderColor: Colors.grey.shade300,
            color: Colors.grey.shade800,
            selectedColor: Colors.white,
            borderRadius: BorderRadius.circular(10),
            isSelected: check,
            onPressed: (index) {
              setState(() {
                for (int i = 0; i < check.length; i++) {
                  check[i] = false;
                }
                check[index] = !check[index];
              });
            },
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.footballBall),
                    const SizedBox(height: 16),
                    Text("Football",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.basketballBall),
                    const SizedBox(height: 16),
                    Text(
                      "Basketball",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.basketballBall),
                    const SizedBox(height: 16),
                    Text(
                      "Hockey",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F1.png?alt=media')),
                  Spacer(),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("Libertad", style: teamNameTextStyle),
                        const SizedBox(height: 5),
                        Text("0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18))
                      ]),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Text(":",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Gremio", style: teamNameTextStyle),
                        const SizedBox(height: 5),
                        Text("2",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18))
                      ]),
                  Spacer(),
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F1.png?alt=media')),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F2.png?alt=media'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Liverpool beat Lyon in Geneva to end pre-season",
                        style: titleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: <Widget>[
                          Text("Yesterday, 9:24 PM",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          Spacer(),
                          Text("Football",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14))
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: 190,
                    left: 20,
                    child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          "LIVE",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )))
              ],
            ),
          ),
          const SizedBox(height: 10),
          Divider(),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Cosgrove hat-tricks sparks Aberdeen",
                style: titleTextStyle),
            subtitle: Text("Yesterday, 7:02 PM | Aberdeen"),
            trailing: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F3.png?alt=media'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Cosgrove hat-tricks sparks Aberdeen",
                style: titleTextStyle),
            subtitle: Text("Yesterday, 7:02 PM | Aberdeen"),
            trailing: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F3.png?alt=media'),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bgColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey.shade700,
        currentIndex: _currentIndex,
        elevation: 0,
        onTap: (index) {
          changeTab(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.listAlt),
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesomeIcons.listAlt),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(FontAwesomeIcons.solidCircle,
                      size: 8, color: primaryColor),
                ),
              ],
            ),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookmark),
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesomeIcons.bookmark),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(FontAwesomeIcons.solidCircle,
                      size: 8, color: primaryColor),
                ),
              ],
            ),
            label: "Book Mark",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartBar),
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesomeIcons.chartBar),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(FontAwesomeIcons.solidCircle,
                      size: 8, color: primaryColor),
                ),
              ],
            ),
            label: "Chart Bar",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clipboard),
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesomeIcons.clipboard),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(FontAwesomeIcons.solidCircle,
                      size: 8, color: primaryColor),
                ),
              ],
            ),
            label: "Clip Board",
          ),
        ],
      ),
    );
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
