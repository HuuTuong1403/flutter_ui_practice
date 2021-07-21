import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage1 extends StatefulWidget {
  AuthPage1({Key? key}) : super(key: key);

  @override
  _AuthPage1State createState() => _AuthPage1State();
}

class _AuthPage1State extends State<AuthPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
                        fit: BoxFit.cover),
                  ),
                  foregroundDecoration:
                      BoxDecoration(color: Colors.pink.withAlpha(100)),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Spacer(flex: 2),
                      Text(
                        "existing members",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              onPrimary: Colors.grey,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.all(16)),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.pink,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                Spacer(),
                Text("or if you are new here"),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child:
                        Text("Sign up", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 20),
                Text("or continue with"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2))),
                      onPressed: () {},
                      icon: Icon(FontAwesomeIcons.google, color: Colors.white),
                      label:
                          Text("Google", style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2))),
                      onPressed: () {},
                      icon:
                          Icon(FontAwesomeIcons.facebook, color: Colors.white),
                      label: Text("Facebook",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                Spacer(flex: 2)
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
