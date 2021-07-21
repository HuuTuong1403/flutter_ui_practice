import 'package:flutter/material.dart';

class SettingPage2 extends StatelessWidget {
  final TextStyle whiteText = TextStyle(color: Colors.white);

  final TextStyle greyText = TextStyle(color: Colors.grey.shade400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Theme(
        data: Theme.of(context)
            .copyWith(brightness: Brightness.dark, primaryColor: Colors.purple),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.white)),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Nguyễn Hữu Tường',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Nepal', style: greyText),
                      ],
                    ))
                  ],
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: Text('Languages', style: whiteText),
                  subtitle: Text(
                    'English US',
                    style: greyText,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey.shade400),
                ),
                ListTile(
                  title: Text('Profile Settings', style: whiteText),
                  subtitle: Text('Jane Doe', style: greyText),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey.shade400),
                ),
                SwitchListTile(
                  activeColor: Colors.indigo,
                  title: Text('Profile Settings', style: whiteText),
                  subtitle: Text('On', style: greyText),
                  value: true,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.indigo,
                  title: Text('Profile Settings', style: whiteText),
                  subtitle: Text('Off', style: greyText),
                  value: false,
                  onChanged: (val) {},
                ),
                ListTile(
                  title: Text('Log out', style: whiteText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
