import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final Color primary = Color(0xffE20056);
  final Color border = Color(0xffE1DDDE);
  final Color bg = Color(0xfffefefe);
  final List<bool> toggleSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 90,
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: ListTile(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Get.back();
              },
            ),
            title: Text("Birthday Party",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  onPrimary: Colors.transparent,
                ),
                onPressed: () {},
                child: Text("Skip", style: TextStyle(color: Colors.white))),
          ),
        ),
        preferredSize: Size.fromHeight(90),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
              ),
              title: Text("Nguyễn Hữu Tường",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold)),
              subtitle: Text(
                "New Delhi",
                style: TextStyle(color: primary, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: border)),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 200,
                        color: primary.withOpacity(0.1),
                        padding: const EdgeInsets.all(16),
                        width: double.infinity,
                        child: Image.network(
                            'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764',
                            fit: BoxFit.contain),
                      ),
                      Positioned(
                        right: 0,
                        top: 60,
                        child: MaterialButton(
                          elevation: 0,
                          textColor: Colors.white,
                          minWidth: 0,
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          child: Icon(Icons.keyboard_arrow_right),
                          color: primary,
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 60,
                        child: MaterialButton(
                          elevation: 0,
                          textColor: Colors.white,
                          minWidth: 0,
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          child: Icon(Icons.keyboard_arrow_left),
                          color: primary,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.solidThumbsUp,
                          color: primary,
                        ),
                        const SizedBox(width: 5),
                        Text("75631"),
                        Spacer(),
                        Container(height: 20, width: 1, color: Colors.grey),
                        Spacer(),
                        Icon(FontAwesomeIcons.comment),
                        const SizedBox(width: 5),
                        Text("213"),
                        Spacer(),
                        Container(height: 20, width: 1, color: Colors.grey),
                        Spacer(),
                        Icon(FontAwesomeIcons.calendarTimes),
                        Spacer(),
                        Container(height: 20, width: 1, color: Colors.grey),
                        Spacer(),
                        Icon(Icons.location_on)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    elevation: 5,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Birthday Party"),
                              Text("Event Name")
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [Text("2019/3/4"), Text("Event Date")],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("New Delhi"), Text("Venue")],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [Text("14:33:00"), Text("Time")],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        child: Row(children: <Widget>[
          const SizedBox(width: 10),
          _buildButton("Accept", true),
          Spacer(),
          _buildButton("Reject", false),
          Spacer(),
          _buildButton("Maybe", false),
          const SizedBox(width: 10)
        ]),
      ),
    );
  }

  Widget _buildButton(String title, bool active) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: active
                ? Border(top: BorderSide(color: primary, width: 2))
                : null),
        child: Text(title,
            style: TextStyle(
                color: active ? primary : Colors.grey.shade600,
                fontSize: 16,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
