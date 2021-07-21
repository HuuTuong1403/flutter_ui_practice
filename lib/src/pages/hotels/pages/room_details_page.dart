import 'package:flutter/material.dart';

class RoomDetailsPage extends StatefulWidget {
  RoomDetailsPage({Key? key}) : super(key: key);

  @override
  _RoomDetailsPageState createState() => _RoomDetailsPageState();
}

class _RoomDetailsPageState extends State<RoomDetailsPage> {
  final String image = "assets/images/room3.jpg";
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            foregroundDecoration: BoxDecoration(color: Colors.black26),
            height: 400,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Lux Hotel\nToronto",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Text(
                        "8.4/85 reviews",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.purple),
                                    Icon(Icons.star, color: Colors.purple),
                                    Icon(Icons.star, color: Colors.purple),
                                    Icon(Icons.star, color: Colors.purple),
                                    Icon(Icons.star, color: Colors.purple),
                                  ],
                                ),
                                Text.rich(TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.location_on,
                                      size: 16,
                                      color: Colors.grey,
                                    )),
                                    TextSpan(text: "8 km to centrum"),
                                  ],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )),
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "\$ 200",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "/per night",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 32),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: Colors.purple),
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Description".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Adipisicing et in Lorem duis culpa voluptate mollit anim aute ex duis incididunt. Excepteur quis ex dolore nisi Lorem. Aute mollit minim ullamco culpa labore dolore proident. Elit et incididunt enim sunt. Veniam adipisicing aliquip deserunt magna proident quis enim non culpa. Ipsum esse amet aliqua reprehenderit sunt enim ex ut ipsum tempor fugiat. Irure veniam commodo velit ullamco esse nostrud proident culpa laboris. Fugiat ad labore exercitation consectetur magna culpa deserunt dolor dolore sit nisi officia. Tempor commodo dolor qui velit qui laboris minim voluptate quis sint officia consectetur ullamco. Id quis id nostrud deserunt in commodo fugiat. Laboris aliqua consectetur laborum eu velit voluptate aliqua quis eiusmod tempor incididunt. Deserunt proident veniam proident occaecat non cillum minim esse ipsum irure aute amet. Veniam Lorem occaecat dolor voluptate. Fugiat exercitation pariatur do incididunt laborum aliquip ullamco esse id. Qui ea fugiat adipisicing do esse deserunt laborum nisi. Pariatur aliquip ipsum nulla quis in aliquip reprehenderit adipisicing. Fugiat ipsum officia ad voluptate et. Laboris tempor velit ad minim anim excepteur nulla magna exercitation fugiat velit do ad. Incididunt do ex ex minim excepteur. Et labore sint commodo voluptate eiusmod magna et id aliquip anim non. Amet ut id veniam nisi eu. In do irure pariatur excepteur mollit nulla in dolor cillum id occaecat qui magna Lorem. Ullamco veniam adipisicing est deserunt officia et. Sint ullamco occaecat irure ea occaecat occaecat do dolore do reprehenderit quis et mollit mollit. Ad incididunt adipisicing Lorem esse eiusmod excepteur qui anim eu. Culpa excepteur mollit excepteur dolor consequat elit exercitation cillum ut deserunt ullamco cupidatat deserunt. Anim est elit esse cillum amet ea Lorem exercitation nostrud ullamco laborum. Aute ut qui do qui proident qui dolore deserunt nostrud sunt sit quis deserunt exercitation.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text("DETAIL",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                backgroundColor: Colors.white54,
                elevation: 0,
                selectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "", tooltip: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border),
                      label: "",
                      tooltip: "Favorites"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: "",
                      tooltip: "Settings"),
                ]),
          ),
        ],
      ),
    );
  }
}
