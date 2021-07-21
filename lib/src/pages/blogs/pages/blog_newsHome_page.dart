import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_practice/src/pages/blogs/widgets/rounded_border_container.dart';

class BlogNewsHomePage extends StatefulWidget {
  BlogNewsHomePage({Key? key}) : super(key: key);

  @override
  _BlogNewsHomePageState createState() => _BlogNewsHomePageState();
}

class _BlogNewsHomePageState extends State<BlogNewsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          _buildFeatureNews(),
          const SizedBox(height: 10),
          _buildHeading(title: "Popular posts"),
          _buildListItem(color: Colors.green.shade200),
          _buildListItem(color: Colors.red.shade200),
          _buildListItem(color: Colors.blue.shade200),
          _buildListItem(color: Colors.red.shade200),
          _buildHeading(title: "Browse by category"),
          GridView.builder(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 8, crossAxisCount: 3, mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print('$index');
                },
                child: Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade200)),
              );
            },
            itemCount: 6,
          ),
        ],
      ),
    );
  }

  Widget _buildListItem({required Color color}) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Row(
          children: <Widget>[
            Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: color)),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "Id fugiat enim est ea dolore ullamco anim pariatur id anim aliquip fugiat. Consequat sint esse labore dolore Lorem non mollit laborum et eu officia culpa veniam tempor. Aliquip id laborum ex est. Exercitation in duis aliquip magna ad est excepteur. Eu occaecat mollit nulla Lorem elit ea commodo dolor. Mollit fugiat qui sunt dolore ut reprehenderit irure incididunt labore officia Lorem est ad non.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                      "Amet non anim pariatur id officia veniam est ut ut irure qui.")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildHeading({required title}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(title,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600)),
          ),
          MaterialButton(
            elevation: 0,
            textColor: Colors.white,
            color: Colors.teal.shade300,
            height: 0,
            minWidth: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(2),
            child: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  RoundedContainer _buildFeatureNews() {
    return RoundedContainer(
      height: 270,
      borderRadius: BorderRadius.circular(0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured News",
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Swiper(
              pagination: SwiperPagination(
                  margin: const EdgeInsets.only(),
                  builder: DotSwiperPaginationBuilder(activeColor: Colors.red)),
              viewportFraction: 0.9,
              loop: false,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: RoundedContainer(
                    borderRadius: BorderRadius.circular(8),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "A complete set of design elements, and thie intitutive design.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.red,
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F1.png?alt=media',
                              fit: BoxFit.cover,
                              height: 210,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
