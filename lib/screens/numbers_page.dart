import 'package:flutter/material.dart';
import 'package:guru/Models/item_model.dart';
import 'package:guru/components/item.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        enname: 'one',
        grname: 'eins',
        sound: 'sounds/numbers/01.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        enname: 'two',
        grname: 'zwei',
        sound: 'sounds/numbers/02.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        enname: 'three',
        grname: 'drei',
        sound: 'sounds/numbers/03.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        enname: 'four',
        grname: 'vier',
        sound: 'sounds/numbers/04.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        enname: 'five',
        grname: 'fünf',
        sound: 'sounds/numbers/05.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        enname: 'six',
        grname: 'sechs',
        sound: 'sounds/numbers/06.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        enname: 'seven',
        grname: 'sieben',
        sound: 'sounds/numbers/07.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        enname: 'eight',
        grname: 'acht',
        sound: 'sounds/numbers/08.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        enname: 'nine',
        grname: 'neun',
        sound: 'sounds/numbers/09.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        enname: 'ten',
        grname: 'zehn',
        sound: 'sounds/numbers/10.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB67352),
        title: const Text(
          'Numbers',
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
      body: ListView(
        children: [
          Item(
            item: numbersList[0],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[1],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[2],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[3],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[4],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[5],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[6],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[7],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[8],
            itemcolor: const Color(0xff153448),
          ),
          Item(
            item: numbersList[9],
            itemcolor: const Color(0xff153448),
          ),
        ],
      ),
    );
  }
}
