import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final List<Map<String, String>> rooms = [
  {
    'image':
        'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20049827-3e05bdafcbc2a47b131ae737b7332ee2.jpeg?tr=q-40,c-at_max,w-740,h-500&_src=imagekit',
    'title': 'Awesome room near Bouddha',
  },
  {
    'image':
        'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10021388-c69cd84a59ba25d649dd34e416a0751f.jpeg?tr=q-40,c-at_max,w-740,h-500&_src=imagekit',
    'title': 'Peaceful Room',
  },
  {
    'image':
        'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10025934-a8c8af9fd47fe0cc178f256215e5aa5a.jpeg?tr=q-40,c-at_max,w-740,h-500&_src=imagekit',
    'title': 'Beautiful Room',
  },
  {
    'image':
        'https://ik.imagekit.io/tvlk/apr-asset/Ixf4aptF5N2Qdfmh4fGGYhTN274kJXuNMkUAzpL5HuD9jzSxIGG5kZNhhHY-p7nw/hotel/asset/67790890-c9b41617803d042b7627743b6b93f3d9.jpeg?tr=q-40,w-300,h-300&_src=imagekit',
    'title': 'Vintage room near Pashupatinah',
  },
];

class HotelHomePage extends StatefulWidget {
  HotelHomePage({Key? key}) : super(key: key);

  @override
  _HotelHomePageState createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180,
            backgroundColor: Colors.cyan,
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {},
              )
            ],
            floating: true,
            flexibleSpace: ListView(
              children: <Widget>[
                SizedBox(height: 70),
                Text("Type your location",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Bouddha, Kathmandu",
                        border: InputBorder.none,
                        icon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search))),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(child: _buildCategories()),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _buildRooms(context, index),
                childCount: 100),
          )
        ],
      ),
    );
  }

  Widget _buildRooms(BuildContext context, int index) {
    var room = rooms[index % rooms.length];
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl: room['image']!,
                      fadeInDuration: Duration(milliseconds: 1000),
                    ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(Icons.star,
                            color: Colors.grey.shade800, size: 20)),
                    Positioned(
                        right: 8,
                        top: 8,
                        child: Icon(Icons.star_border,
                            color: Colors.white, size: 20)),
                    Positioned(
                        right: 10,
                        bottom: 20,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text("\$40"),
                        )),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        room['title']!,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("Bouddha, Kathmandu"),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          SizedBox(width: 5),
                          Text("(220 reviews)",
                              style: TextStyle(color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 15),
          Category(
            backgroundColor: Colors.pink,
            title: "Hotel",
            icon: Icons.hotel,
          ),
          SizedBox(width: 15),
          Category(
            backgroundColor: Colors.blue,
            title: "Restaurant",
            icon: Icons.restaurant,
          ),
          SizedBox(width: 15),
          Category(
            backgroundColor: Colors.orange,
            title: "Cafe",
            icon: Icons.local_cafe,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final String title;

  const Category(
      {Key? key, required this.icon, required this.title, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.white),
            SizedBox(height: 5),
            Text(title, style: TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
