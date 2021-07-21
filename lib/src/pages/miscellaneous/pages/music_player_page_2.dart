import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class MusicPlayerPage2 extends StatefulWidget {
  MusicPlayerPage2({Key? key}) : super(key: key);

  @override
  _MusicPlayerPage2State createState() => _MusicPlayerPage2State();
}

class _MusicPlayerPage2State extends State<MusicPlayerPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Music Player 2",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          MaterialButton(
            shape: CircleBorder(),
            elevation: 0,
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            child: CircleAvatar(
              maxRadius: 15,
              backgroundImage: NetworkImage(
                  'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              child: Swiper(
                itemCount: fakeImage.length,
                viewportFraction: 0.8,
                scale: 0.9,
                itemBuilder: (context, index) => Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(fakeImage[index]),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Travel Series",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.all(16),
              child: Text(
                "My Playlist, 348 Songs".toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pause),
              title: Text("Ariana Grande"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Daydraming"),
                  const SizedBox(height: 10)
                ],
              ),
              trailing: Text("3:45"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 20),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: double.infinity, height: 1, color: Colors.grey),
                  Container(
                      width: MediaQuery.of(context).size.width - 300,
                      height: 1,
                      color: Colors.black),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Beyonce"),
              subtitle: Text("Halo"),
              trailing: Text("3:05"),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Don't let me down"),
              subtitle: Text("Coldplay"),
              trailing: Text("3:05"),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Just the way you are"),
              subtitle: Text("Bruno Mars"),
              trailing: Text("3:05"),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Don't let me down"),
              subtitle: Text("Coldplay"),
              trailing: Text("3:05"),
            ),
            ListTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Just the way you are"),
              subtitle: Text("Bruno Mars"),
              trailing: Text("3:05"),
            ),
          ],
        ),
      ),
    );
  }
}
