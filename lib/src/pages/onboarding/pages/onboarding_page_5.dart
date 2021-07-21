import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage5 extends StatefulWidget {
  OnBoardingPage5({Key? key}) : super(key: key);

  @override
  _OnBoardingPage5State createState() => _OnBoardingPage5State();
}

const brightYellow = Color(0xFFFFD300);
const darkYellow = Color(0xFFFFB900);

class _OnBoardingPage5State extends State<OnBoardingPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brightYellow,
      body: Column(
        children: <Widget>[
          Flexible(
              flex: 8,
              child: FlareActor(
                'assets/flare/bus.flr',
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: 'driving',
              )),
          Flexible(
            flex: 2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                primary: darkYellow,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Text(
                "Tap here to proceed",
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Get.back();
              },
            ),
          )
        ],
      ),
    );
  }
}
