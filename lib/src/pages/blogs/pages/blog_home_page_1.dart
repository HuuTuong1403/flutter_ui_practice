import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class BlogHomePage1 extends StatefulWidget {
  BlogHomePage1({Key? key}) : super(key: key);

  @override
  _BlogHomePage1State createState() => _BlogHomePage1State();
}

class _BlogHomePage1State extends State<BlogHomePage1> {
  final Color primaryColor = Color(0xffFD6592);
  final Color bgColor = Color(0xffF9E0E3);
  final Color secondaryColor = Color(0xff324558);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
        data: ThemeData(
          primaryColor: primaryColor,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              textTheme: TextTheme(
                headline6: TextStyle(
                    color: secondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              iconTheme: IconThemeData(color: secondaryColor),
              actionsIconTheme: IconThemeData(color: secondaryColor)),
        ),
        child: Scaffold(
          backgroundColor: Theme.of(context).buttonColor,
          appBar: AppBar(
            centerTitle: true,
            leading: Icon(Icons.category),
            title: Text("Categories"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: primaryColor,
              indicatorColor: primaryColor,
              unselectedLabelColor: secondaryColor,
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("For You"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Design"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Beauty"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Education"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Entertainment"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return _buildArticleItem(index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: articles.length,
              ),
              Container(
                child: Text("Tab 2"),
              ),
              Container(
                child: Text("Tab 3"),
              ),
              Container(
                child: Text("Tab 4"),
              ),
              Container(
                child: Text("Tab 5"),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 1,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  tooltip: "Home",
                  icon: Icon(Icons.home),
                  label: "",
                ),
                BottomNavigationBarItem(
                  tooltip: "Folder",
                  icon: Icon(FontAwesomeIcons.folderOpen),
                  label: "",
                ),
                BottomNavigationBarItem(
                  tooltip: "Favorite",
                  icon: Icon(Icons.favorite_border),
                  label: "",
                ),
                BottomNavigationBarItem(
                  tooltip: "Person",
                  icon: Icon(Icons.person_outline),
                  label: "",
                ),
                BottomNavigationBarItem(
                  tooltip: "Settings",
                  icon: Icon(Icons.settings),
                  label: "",
                ),
              ]),
        ),
      ),
    );
  }

  Widget _buildArticleItem(int index) {
    Map article = articles[index];
    final String image =
        "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png";
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(width: 90, height: 90, color: bgColor),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            child: Row(children: <Widget>[
              Container(
                height: 100,
                width: 80,
                color: Colors.blue,
                child: CachedNetworkImage(imageUrl: image, fit: BoxFit.cover),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      article['title'],
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text.rich(
                        TextSpan(children: [
                          WidgetSpan(
                              child: CircleAvatar(
                                  radius: 15, backgroundColor: primaryColor)),
                          WidgetSpan(child: SizedBox(width: 5)),
                          TextSpan(
                              text: article['author'],
                              style: TextStyle(fontSize: 16)),
                          WidgetSpan(child: SizedBox(width: 25)),
                          TextSpan(
                            text: article['time'],
                          ),
                        ]),
                        style: TextStyle(height: 2))
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
