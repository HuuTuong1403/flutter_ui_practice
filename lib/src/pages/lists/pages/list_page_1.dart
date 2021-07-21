import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/models/place_item.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class ListPage1 extends StatefulWidget {
  @override
  _ListPage1State createState() => _ListPage1State();
}

class _ListPage1State extends State<ListPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Place List 1'),
        elevation: 2,
        actions: <Widget>[
          Container(padding: EdgeInsets.all(10), child: Icon(Icons.filter_list))
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(6),
        itemCount: placeItems.length,
        itemBuilder: (context, index) {
          PlaceItem placeItem = placeItems[index];
          return Card(
            elevation: 3,
            child: Row(
              children: <Widget>[
                Container(
                  height: 125,
                  width: 110,
                  padding:
                      EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(placeItem.image!),
                        fit: BoxFit.cover),
                  ),
                  child: placeItem.discount == null
                      ? Container()
                      : Container(
                          color: Colors.deepOrange,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                placeItem.discount!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Discount',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        placeItem.title!,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        placeItem.catagory!,
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      Text(
                        placeItem.place!,
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.pink, size: 18),
                          Icon(Icons.star, color: Colors.pink, size: 18),
                          Icon(Icons.star, color: Colors.pink, size: 18),
                          Icon(Icons.star, color: Colors.pink, size: 18),
                          Icon(Icons.star, color: Colors.pink, size: 18),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            placeItem.ratings!,
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Ratings',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
