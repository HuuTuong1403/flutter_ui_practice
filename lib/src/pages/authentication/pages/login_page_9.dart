import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

class LoginPage9 extends StatefulWidget {
  LoginPage9({Key? key}) : super(key: key);

  @override
  _LoginPage9State createState() => _LoginPage9State();
}

class _LoginPage9State extends State<LoginPage9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent-hkt1-2.xx.fbcdn.net/v/t1.6435-9/175689476_2889619664628672_2963190665462621846_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=XwvXNgDClgoAX_pMX_7&tn=NdjE9EWKwDe0js9F&_nc_ht=scontent-hkt1-2.xx&oh=b0178f92b8b27925979548fd4429013b&oe=60DDE764'),
                        fit: BoxFit.cover),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
                  Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight),
                    child: Text("Beautiful App",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center),
                  ),
                Animator<double>(
                  duration: Duration(milliseconds: 800),
                  triggerOnInit: true,
                  curve: Curves.easeIn,
                  tween: Tween<double>(begin: -1, end: 0),
                  builder: (context, state, child) {
                    return FractionalTranslation(
                        translation: Offset(state.value, 0), child: child);
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListView(
                      physics:
                          MediaQuery.of(context).viewInsets == EdgeInsets.zero
                              ? NeverScrollableScrollPhysics()
                              : null,
                      padding: const EdgeInsets.all(32),
                      shrinkWrap: true,
                      children: <Widget>[
                        const SizedBox(height: kToolbarHeight),
                        Text("Namaste!",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 10),
                        Text(
                          "Welcome to this awesome ap. We are so happy that you are using out app.",
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueGrey),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 32),
                            suffixIcon:
                                Icon(Icons.person, color: Colors.blueGrey),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueGrey),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          cursorColor: Colors.red,
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 32),
                            suffixIcon:
                                Icon(Icons.lock, color: Colors.blueGrey),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueGrey),
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Create new account",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.deepOrange,
                    padding: const EdgeInsets.all(32)),
                child: Text(
                  "Continue".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ))
        ],
      ),
    );
  }
}
