import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class SlidersPage extends StatefulWidget {
  SlidersPage({Key? key}) : super(key: key);

  @override
  _SlidersPageState createState() => _SlidersPageState();
}

class _SlidersPageState extends State<SlidersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Sliders"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade800,
              child: Swiper(
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(fakeImage[index]),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
                itemCount: fakeImage.length,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              color: Colors.grey.shade800,
              padding: EdgeInsets.all(16),
              child: Swiper(
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(fakeImage[index]),
                              fit: BoxFit.cover)),
                    ),
                  );
                },
                itemWidth: 300,
                itemCount: fakeImage.length,
                layout: SwiperLayout.STACK,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 340,
              color: Colors.grey.shade800,
              padding: EdgeInsets.all(16),
              child: Swiper(
                  fade: 0.0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(fakeImage[index]),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          child: ListTile(
                            title: Text("Awesome image"),
                            subtitle: Text("awesome image caption"),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: fakeImage.length,
                  scale: 0.9,
                  pagination: SwiperPagination()),
            ),
          ],
        ),
      ),
    );
  }
}
