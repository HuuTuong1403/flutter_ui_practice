import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/navigation/widgets/oval_right_border.dart';
import 'package:get/get.dart';

class LightDrawerPage extends StatefulWidget {
  LightDrawerPage({Key? key}) : super(key: key);

  @override
  _LightDrawerPageState createState() => _LightDrawerPageState();
}

class _LightDrawerPageState extends State<LightDrawerPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("lightDrawer".trArgs(), style: TextStyle(color: primary)),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu, color: primary),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10))),
            SizedBox(height: 10),
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10))),
            SizedBox(height: 10),
            Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10))),
          ],
        ),
      ),
    );
  }

  _buildDrawer() {
    final String image =
        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F1.png?alt=media';

    return ClipPath(
      clipper: OvalRightBorder(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 40),
          decoration: BoxDecoration(
            color: primary,
            boxShadow: [BoxShadow(color: Colors.black45)],
          ),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    )),
                Container(
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Colors.orange, Colors.deepOrange])),
                  child: CircleAvatar(
                      radius: 40, backgroundImage: NetworkImage(image)),
                ),
                SizedBox(height: 5),
                Text("erika costell",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                Text("@erika07",
                    style: TextStyle(
                        color: active,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 30),
                _buildRow(Icons.home, "Home"),
                _buildDivider(),
                _buildRow(Icons.person_pin, "My Profile"),
                _buildDivider(),
                _buildRow(Icons.message, "Messages", showBadge: true),
                _buildDivider(),
                _buildRow(Icons.notifications, "Notifications",
                    showBadge: true),
                _buildDivider(),
                _buildRow(Icons.settings, "Settings"),
                _buildDivider(),
                _buildRow(Icons.email, "Contact us"),
                _buildDivider(),
                _buildRow(Icons.info_outline, "Help"),
                _buildDivider(),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(color: divider);
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16);
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: InkWell(
          splashColor: Colors.red,
          onTap: () {},
          child: Row(children: <Widget>[
            Icon(icon, color: active),
            SizedBox(width: 10),
            Text(
              title,
              style: tStyle,
            ),
            Spacer(),
            if (showBadge)
              Material(
                color: Colors.deepOrange,
                elevation: 5,
                shadowColor: Colors.red,
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 25,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "10+",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
