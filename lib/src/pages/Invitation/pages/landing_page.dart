import 'package:flutter/material.dart';

const Color primary = Color(0xffE20056);

const TextStyle whiteBoldText =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

const TextStyle whiteText = TextStyle(color: Colors.white);

const TextStyle primaryText = TextStyle(color: primary);

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: kToolbarHeight),
          Text("Invitations",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold)),
          Text.rich(TextSpan(children: [
            TextSpan(text: "A smarter way to hold "),
            TextSpan(text: "events", style: primaryText)
          ])),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60))),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Finvite.png?alt=media'),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.white,
                      ),
                      child: Text(
                        "Create an Account",
                        style: primaryText,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white),
                      ),
                      child: Text(
                        "Sign in with Google",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Already has account? ", style: whiteText),
                    WidgetSpan(
                        child: GestureDetector(
                      onTap: () {},
                      child: Text("Sign In", style: whiteBoldText),
                    ))
                  ]))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
