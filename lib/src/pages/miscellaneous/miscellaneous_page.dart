import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/models/menu_item.dart';
import 'package:flutter_ui_practice/src/models/sub_menu_item.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';
import 'package:flutter_ui_practice/src/pages/widgets/scaffold_menu_widget.dart';
import 'package:get/get.dart';

class MiscellaneousPage extends StatefulWidget {
  MiscellaneousPage({Key? key}) : super(key: key);

  @override
  _MiscellaneousPageState createState() => _MiscellaneousPageState();
}

class _MiscellaneousPageState extends State<MiscellaneousPage> {
  final name = Get.arguments[0];
  MenuItem _menuItem = Get.arguments[1];

  @override
  Widget build(BuildContext context) {
    List<SubMenuItem> subMenus =
        fakeSubMenus.where((item) => _menuItem.id == item.menuItemId).toList();
    return
    ScaffoldMenuWidget(name: name, subMenus: subMenus);
  }
}
