import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticlePage2 extends StatelessWidget {
  const ArticlePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "article2".trArgs(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/intro%2F3.png?alt=media',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 250, 16, 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Pariatur sint qui laborum veniam eu minim consectetur.",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 10),
                    Text("Oct 21, 2017 By Dlohani"),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.favorite_border),
                        SizedBox(width: 5),
                        Text("20.2k"),
                        SizedBox(width: 16),
                        Icon(Icons.comment),
                        SizedBox(width: 5),
                        Text("2.2k")
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Aliqua cupidatat do velit nulla reprehenderit. Adipisicing do aute aliqua id. Officia adipisicing consequat laboris cillum adipisicing amet irure. Irure occaecat consectetur nisi commodo dolor id sint Lorem irure labore eu proident sint. Nostrud commodo ipsum consectetur laborum enim aute officia. Commodo occaecat excepteur anim dolore sint. Veniam quis ut incididunt sit excepteur aliquip pariatur sunt. Mollit anim ea magna eu ex ullamco magna cillum commodo commodo sint do. Do ea officia do consectetur ad occaecat occaecat consequat non et incididunt Lorem. Et velit Lorem ullamco laborum est minim duis velit mollit ad ullamco quis eu incididunt. Labore aliquip pariatur commodo aute sunt pariatur. Deserunt amet dolore commodo do qui anim deserunt. Cupidatat esse do non nostrud labore nulla eiusmod eu cupidatat ea consectetur labore mollit. Ex in fugiat est incididunt tempor nostrud est ad ipsum ipsum ipsum. Ut cupidatat est aliqua tempor dolore velit. Cillum duis dolor occaecat officia proident est reprehenderit aute sunt. Sint non sit officia minim ad quis consequat magna ipsum esse in fugiat id.",
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Aliqua cupidatat do velit nulla reprehenderit. Adipisicing do aute aliqua id. Officia adipisicing consequat laboris cillum adipisicing amet irure. Irure occaecat consectetur nisi commodo dolor id sint Lorem irure labore eu proident sint. Nostrud commodo ipsum consectetur laborum enim aute officia. Commodo occaecat excepteur anim dolore sint. Veniam quis ut incididunt sit excepteur aliquip pariatur sunt. Mollit anim ea magna eu ex ullamco magna cillum commodo commodo sint do. Do ea officia do consectetur ad occaecat occaecat consequat non et incididunt Lorem. Et velit Lorem ullamco laborum est minim duis velit mollit ad ullamco quis eu incididunt. Labore aliquip pariatur commodo aute sunt pariatur. Deserunt amet dolore commodo do qui anim deserunt. Cupidatat esse do non nostrud labore nulla eiusmod eu cupidatat ea consectetur labore mollit. Ex in fugiat est incididunt tempor nostrud est ad ipsum ipsum ipsum. Ut cupidatat est aliqua tempor dolore velit. Cillum duis dolor occaecat officia proident est reprehenderit aute sunt. Sint non sit officia minim ad quis consequat magna ipsum esse in fugiat id.",
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
