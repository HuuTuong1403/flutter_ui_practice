import 'package:flutter/material.dart';

class SettingPage3 extends StatelessWidget {
  final TextStyle headerStyle = TextStyle(
      color: Colors.grey.shade800, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Setting 3'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Text('ACCOUNT', style: headerStyle),
            Card(
              elevation: 0.5,
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
                    ),
                    title: Text('Nguyễn Hữu Tường'),
                  ),
                  _buildDiveder(),
                  SwitchListTile(
                      title: Text('Private Account'),
                      value: true,
                      onChanged: (val) {})
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('PUSH NOTIFICATIONS', style: headerStyle),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                      title: Text('Received notification'),
                      value: true,
                      onChanged: (val) {}),
                  _buildDiveder(),
                  SwitchListTile(
                      title: Text('Received newsletter'),
                      value: false,
                      onChanged: null),
                  _buildDiveder(),
                  SwitchListTile(
                      title: Text('Received Offer Notification'),
                      value: true,
                      onChanged: (val) {}),
                  _buildDiveder(),
                  SwitchListTile(
                      title: Text('Received App Updates'),
                      value: false,
                      onChanged: null),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDiveder() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        height: 1,
        color: Colors.grey.shade300);
  }
}
