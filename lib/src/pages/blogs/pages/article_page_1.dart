import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticlePage1 extends StatelessWidget {
  const ArticlePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 2,
        title: Text("article1".trArgs()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.slideshow, color: Colors.white),
                      SizedBox(width: 10),
                      Text("Technology", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Text("Oct 21, 2017")),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Text(
                    "Id sint velit qui incididunt duis elit deserunt anim.",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      SizedBox(width: 5),
                      Text("20.2k"),
                      SizedBox(width: 10),
                      Icon(Icons.comment),
                      SizedBox(width: 5),
                      Text("2.2k")
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Est sint nisi cillum enim minim ex consequat. Sunt aute in sunt do est officia officia exercitation sunt magna exercitation officia. Fugiat ea aliqua eiusmod nisi nisi ea.Aliquip do ea adipisicing tempor consequat ullamco occaecat dolor cillum id duis et anim. Ipsum sit sunt do fugiat adipisicing ipsum nostrud excepteur consequat deserunt in. Occaecat ut dolor do ex amet consectetur ad.Dolor sint do do ad. Enim qui in aliqua nisi. Velit exercitation duis pariatur consectetur nisi cupidatat nostrud. Excepteur laborum mollit aute ut nisi. Id occaecat occaecat in nisi Lorem. Laboris exercitation non do voluptate sunt Lorem officia proident cillum. Nostrud sit nisi incididunt voluptate labore voluptate sint consequat labore magna ad sint.",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
