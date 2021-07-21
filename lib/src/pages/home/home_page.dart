import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/lang/translation_service.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _menu = fakeMenus.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        title: Text(
          'uiChanllenges'.trArgs(),
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'changeLanguage'.trArgs(),
                  content: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                onPrimary: Colors.black,
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                            onPressed: () {
                              setState(() {
                                TranslationService.changeLocale('vi');
                              });
                              Get.back();
                            },
                            child: Text(
                              "vietnamese".trArgs(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                onPrimary: Colors.black,
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                            onPressed: () {
                              setState(() {
                                TranslationService.changeLocale('en');
                              });
                              Get.back();
                            },
                            child: Text(
                              "english".trArgs(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                );
              },
              icon: Icon(
                Icons.language,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 5, right: 5),
            itemCount: _menu.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(_menu[index].route,
                        arguments: [_menu[index].title, _menu[index]]);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    elevation: 1.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: ListTile(
                        leading: Icon(
                          _menu[index].icon,
                          color: Colors.black,
                        ),
                        title: Text(
                          '${_menu[index].title.trArgs()}',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
