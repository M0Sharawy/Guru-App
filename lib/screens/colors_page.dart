import 'package:flutter/material.dart';
import 'package:guru/Models/item_model.dart';
import 'package:guru/components/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colorsList = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        enname: 'Black',
        grname: 'schwarz',
        sound: 'sounds/colors/Schwarz.mp3'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        enname: 'brown',
        grname: 'braun',
        sound: 'sounds/colors/braun.mp3'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        enname: 'green',
        grname: 'grün',
        sound: 'sounds/colors/grün.mp3'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        enname: 'red',
        grname: 'rot',
        sound: 'sounds/colors/Rot.mp3'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        enname: 'white',
        grname: 'wei',
        sound: 'sounds/colors/wei.mp3'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        enname: 'yellow',
        grname: 'gelb',
        sound: 'sounds/colors/gelb.mp3'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        enname: 'dusty yellow',
        grname: 'staubiges Gelb',
        sound: 'sounds/colors/gelb.mp3'),
    ItemModel(
        image: 'assets/images/colors/gray.png',
        enname: 'gray',
        grname: 'grau',
        sound: 'sounds/colors/gelb.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB67352),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 5,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
      // listView works as for loop
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Item(item: colorsList[index], itemcolor: const Color(0xff948979));
        },
      ),
    );
  }
}
