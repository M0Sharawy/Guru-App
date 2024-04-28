import 'package:flutter/material.dart';
import 'package:guru/Models/item_model.dart';
import 'package:guru/components/item.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});
  final List<ItemModel> membersList = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        enname: 'father',
        grname: 'vater',
        sound: 'sounds/family_members/vater.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        enname: 'mother',
        grname: 'mutter',
        sound: 'sounds/family_members/mutter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        enname: 'daughter',
        grname: 'tochter',
        sound: 'sounds/family_members/tochter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        enname: 'son',
        grname: 'sohn',
        sound: 'sounds/family_members/sohn.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        enname: 'grang father',
        grname: 'Gross vater',
        sound: 'sounds/family_members/grossvater.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        enname: 'grand mother',
        grname: 'Gross mutter',
        sound: 'sounds/family_members/grossmutter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_brother.png',
        enname: 'brother',
        grname: 'bruder',
        sound: 'sounds/family_members/bruder.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_sister.png',
        enname: 'sister',
        grname: 'schwester',
        sound: 'sounds/family_members/schwester.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB67352),
        title: const Text(
          'Family Members',
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
      body: ListView(children: getlist(membersList)),
    );
  }

  List<Item> getlist(List<ItemModel> membersList) {
    List<Item> itemslist = [];
    for (int i = 0; i < membersList.length; i++) {
      itemslist.add(
        Item(
          item: membersList[i],
          itemcolor: const Color(0xff3C5B6F),
        ),
      );
    }
    return itemslist;
  }
}
