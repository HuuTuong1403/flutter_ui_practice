import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage1 extends StatefulWidget {
  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  @override
  void initState() {
    super.initState();
  }

  final image = [
    'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1543569128-1221ed287623?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598970434795-0c54fe7c0648?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGF2YXRhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: _panelBody(),
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView _panelBody() {
    double hPadding = 40;
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _titleSection(),
                _inforSection(),
                _actionSection(),
              ],
            ),
          ),
          GridView.builder(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 16),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image[index]),
                          fit: BoxFit.cover)),
                );
              })
        ],
      ),
    );
  }

  Row _actionSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.blue,
              onSurface: Colors.grey,
              side: BorderSide(color: Colors.blue, width: 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            onPressed: () {
              print('Tap');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Center(
                child: Text(
                  'VIEW PROFILE',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            )),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          onPressed: () {
            print('Tap');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Text(
                'MESSAGE',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }

  Row _inforSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _inforCell(title: 'Projects', value: '1135'),
        Container(
          width: 1,
          height: 40,
          color: Colors.grey,
        ),
        _inforCell(title: 'Hourly Rate', value: '\$65'),
        Container(
          width: 1,
          height: 40,
          color: Colors.grey,
        ),
        _inforCell(title: 'Location', value: 'Ho Chi Minh'),
      ],
    );
  }

  Column _inforCell({required String title, required String value}) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }

  Column _titleSection() {
    return Column(
      children: <Widget>[
        Text('Nguyễn Hữu Tường',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
        SizedBox(
          height: 8,
        ),
        Text(
          'Senior',
          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        )
      ],
    );
  }
}
