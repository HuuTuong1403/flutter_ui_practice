import 'package:flutter/material.dart';

class AnimatedListOne extends StatefulWidget {
  AnimatedListOne({Key? key}) : super(key: key);

  @override
  _AnimatedListOneState createState() => _AnimatedListOneState();
}

List<String> places = [
  "Nuwakot",
  "Dhaulagiri",
  "Rara",
  "Muktinath",
  "Pashupatinath"
];

class _AnimatedListOneState extends State<AnimatedListOne> {
  late List<String> items;
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    items = ["Kathmandu", "Bhaktapur", "Pokhara", "Mount Everest"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Animated List One'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, anim) {
          return SlideTransition(
            position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                .animate(anim),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.25, color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              padding: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _listKey.currentState!.removeItem(
                      index,
                      (context, animation) {
                        String removeItem = items.removeAt(index);
                        return SizeTransition(
                          sizeFactor: animation,
                          axis: Axis.vertical,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 0.25, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            margin: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            padding: const EdgeInsets.all(0),
                            child: ListTile(
                              title: Text(removeItem),
                            ),
                          ),
                        );
                      },
                    );
                    setState(() {});
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          places.shuffle();
          items.insert(items.length, places[0]);
          _listKey.currentState!.insertItem(items.length - 1);
          setState(() {});
        },
      ),
    );
  }
}
