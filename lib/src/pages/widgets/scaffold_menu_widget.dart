import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/models/sub_menu_item.dart';
import 'package:get/get.dart';

class ScaffoldMenuWidget extends StatefulWidget {
  final String name;
  final List<SubMenuItem> subMenus;

  ScaffoldMenuWidget({required this.name, required this.subMenus});

  @override
  _ScaffoldMenuWidgetState createState() => _ScaffoldMenuWidgetState();
}

class _ScaffoldMenuWidgetState extends State<ScaffoldMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        title: Text(
          '${widget.name}'.trArgs(),
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 5, right: 5),
            itemCount: widget.subMenus.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(widget.subMenus[index].route);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    elevation: 1.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: ListTile(
                        title: Text(
                          '${widget.subMenus[index].title}'.trArgs(),
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
