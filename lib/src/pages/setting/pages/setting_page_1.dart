import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage1 extends StatefulWidget {
  @override
  _SettingPage1State createState() => _SettingPage1State();
}

class _SettingPage1State extends State<SettingPage1> {
  late bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0.0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            'Setting 1',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.moon),
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
            ),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.purple,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1598970434795-0c54fe7c0648?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                      title: Text(
                        'Hữu Tường',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading:
                              Icon(Icons.lock_outline, color: Colors.purple),
                          title: Text('Change Password'),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        _buildDiveder(),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.language,
                            color: Colors.purple,
                          ),
                          title: Text('Change Language'),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        _buildDiveder(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.purple,
                          ),
                          title: Text('Change Location'),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Notification Settings',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SwitchListTile(
                      activeColor: Colors.purple,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Received notification'),
                      value: true,
                      onChanged: (val) {}),
                  SwitchListTile(
                      activeColor: Colors.purple,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Received newsletter'),
                      value: false,
                      onChanged: null),
                  SwitchListTile(
                      activeColor: Colors.purple,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Received Offer Notification'),
                      value: true,
                      onChanged: (val) {}),
                  SwitchListTile(
                      activeColor: Colors.purple,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text('Received App Updates'),
                      value: false,
                      onChanged: null),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.powerOff,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            )
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
        color: Colors.grey.shade400);
  }
}
