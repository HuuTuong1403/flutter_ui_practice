import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_item_daily.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Grocery%20UI%20Kit/widgets/grocery_textstyle.dart';
import 'package:flutter_ui_practice/src/pages/fake_data.dart';

class GroceryItemDetailPage extends StatefulWidget {
  const GroceryItemDetailPage({Key? key}) : super(key: key);

  @override
  _GroceryItemDetailPageState createState() => _GroceryItemDetailPageState();
}

class _GroceryItemDetailPageState extends State<GroceryItemDetailPage> {
  List<Map<String, String>> _listItemRelate = [];
  @override
  void initState() {
    super.initState();
    _listItemRelate = [
      {"title": "Broccoli", 'image': brocoli, 'subtitle': "1 kg"},
      {'title': "Cabbage", 'image': cabbage, 'subtitle': "1 kg"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: _buildBodyPageDetail(context),
    );
  }

  Widget _buildBodyPageDetail(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              _buildItemCard(context),
              Container(
                padding: const EdgeInsets.all(30),
                child: GrocerySubtitle(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras scelerisque nibh ut eros suscipit, vel cursus dolor imperdiet. Proin volutpat ligula eget purus maximus tristique. Pellentesque ullamcorper libero vitae metus feugiat fringilla. Ut luctus neque sed tortor placerat, faucibus mollis risus ullamcorper. Cras at nunc et odio ultrices tempor et."),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: GroceryTitle(text: 'Related Items'),
              ),
              ..._buildItemRelated(),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _buildItemRelated() {
    return List.generate(
        _listItemRelate.length,
        (index) => GroceryItemDaily(
            title: _listItemRelate[index]['title'] ?? '',
            subTitle: _listItemRelate[index]['subTitle'] ?? '',
            image: _listItemRelate[index]['image'] ?? ''));
  }

  Widget _buildItemCard(BuildContext context) {
    return Stack(
      children: [
        Card(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(cabbage, height: 200),
                ),
                const SizedBox(height: 10),
                GroceryTitle(text: 'Local Cabbage'),
                const SizedBox(height: 5),
                GrocerySubtitle(text: '1 kg')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
