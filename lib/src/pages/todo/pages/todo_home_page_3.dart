import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodoHomePage3 extends StatefulWidget {
  TodoHomePage3({Key? key}) : super(key: key);

  @override
  _TodoHomePage3State createState() => _TodoHomePage3State();
}

class _TodoHomePage3State extends State<TodoHomePage3> {
  var orangeTextStyle = TextStyle(color: Colors.deepOrange);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 4,
                width: 18,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4)),
              ),
              const SizedBox(height: 4),
              Container(
                height: 4,
                width: 12,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4)),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: CircleAvatar(
              maxRadius: 15,
              backgroundImage: CachedNetworkImageProvider(avatars[0]),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Text("Wiki Lists",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
          const SizedBox(height: 16),
          Row(
            children: <Widget>[
              Expanded(
                child: _buildWikiCategory(FontAwesomeIcons.calendarCheck,
                    "All Wikis", Colors.deepOrange.withOpacity(0.7)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildWikiCategory(FontAwesomeIcons.lock,
                    "My private notes", Colors.blue.withOpacity(0.6)),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: <Widget>[
              Expanded(
                child: _buildWikiCategory(FontAwesomeIcons.bookmark,
                    "Bookmarked wikis", Colors.indigo.withOpacity(0.7)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildWikiCategory(
                    FontAwesomeIcons.file, "Templates", Colors.greenAccent),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Recently Opened Wikis",
            style: orangeTextStyle,
          ),
          const SizedBox(height: 10),
          _buildRecentWikiRow(avatars[2], "Brand Guideline"),
          const SizedBox(height: 5),
          _buildRecentWikiRow(avatars[3], "Project Gril Sprint plan"),
          const SizedBox(height: 5),
          _buildRecentWikiRow(avatars[4], "Personal Wiki"),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              Text(
                "Channels/Group",
                style: orangeTextStyle,
              ),
              IconButton(
                  icon:
                      Icon(Icons.add_circle_outline, color: Colors.greenAccent),
                  onPressed: () {})
            ],
          ),
          _buildChannelListItem("Tixio 2.0"),
          _buildChannelListItem("Project Grail"),
          _buildChannelListItem("Fun facts"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 16),
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.deepOrange,
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
      floatingActionButton: MaterialButton(
          onPressed: () {},
          color: Colors.green,
          child: Icon(Icons.add),
          textColor: Colors.white,
          minWidth: 0,
          splashColor: Colors.grey.shade700,
          elevation: 4,
          padding: const EdgeInsets.all(8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Row _buildChannelListItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.circle,
          size: 16,
        ),
        const SizedBox(width: 10),
        Text(title),
        Spacer(),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
      ],
    );
  }

  Widget _buildRecentWikiRow(String image, String label) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 15,
          backgroundImage: CachedNetworkImageProvider(image),
        ),
        const SizedBox(width: 10),
        Text(label,
            style: TextStyle(
                color: Colors.grey.shade700, fontWeight: FontWeight.bold))
      ],
    );
  }

  Widget _buildWikiCategory(IconData icon, String label, Color color) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(26),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          child: Opacity(
            opacity: 0.3,
            child: Icon(icon, size: 40, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: Colors.white),
              const SizedBox(height: 16),
              Text(label,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
