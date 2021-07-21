import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Plant%20App/models/plant.dart';
import 'package:flutter_ui_practice/src/pages/UI%20Kits/Plant%20App/screens/plant_detail_page.dart';

class IndoorPlantPage extends StatefulWidget {
  IndoorPlantPage({Key? key}) : super(key: key);

  @override
  _IndoorPlantPageState createState() => _IndoorPlantPageState();
}

class _IndoorPlantPageState extends State<IndoorPlantPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.search, size: 30),
                onPressed: () {},
              )
            ],
          ),
          Text('Indoor', style: TextStyle(color: Colors.grey, fontSize: 17)),
          const SizedBox(height: 7),
          Text(
            'Plants',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: indoor.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PlantDetailPage(
                            plant: indoor[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: indoor[index].title!,
                            child: Image.network(indoor[index].image!),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            indoor[index].title!,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            indoor[index].discription!,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                '\$${indoor[index].price!}',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 22),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
