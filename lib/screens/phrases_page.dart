import 'package:flutter/material.dart';
import 'package:guru/Models/item_model.dart';
import 'package:guru/components/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrasesList = const [
    ItemModel(
        enname: 'Hello', grname: 'Hallo', sound: 'sounds/phrases/Hallo.mp3'),
    ItemModel(
        enname: 'Guten Morgen',
        grname: 'good morning',
        sound: 'sounds/phrases/good morning.mp3'),
    ItemModel(
        enname: 'Ich liebe Dich',
        grname: 'i love you',
        sound: 'sounds/phrases/i love you.mp3'),
    ItemModel(
        enname: 'Thank you very much',
        grname: 'Vielen Dank',
        sound: 'sounds/phrases/Vielen Dank.mp3'),
    ItemModel(
        enname: 'How are you doing?',
        grname: 'Wie geht es Ihnen?',
        sound: 'sounds/phrases/Wie geht es Ihnen-.mp3'),
    ItemModel(
        enname: 'Where are you from?',
        grname: 'Woher kommen Sie?',
        sound: 'sounds/phrases/Woher kommen Sie-.mp3'),
    ItemModel(
        enname: 'Where is the bathroom?',
        grname: 'Wo ist das Badezimmer?',
        sound: 'sounds/phrases/Wo ist das Badezimmer-.mp3'),
    ItemModel(
        enname: 'Nice to meet you',
        grname: 'Schön, Sie zu treffen',
        sound: 'sounds/phrases/Schön, Sie zu treffen.mp3'),
    ItemModel(
        enname: 'Can I take a photo?',
        grname: 'Kann ich ein Foto machen',
        sound: 'sounds/phrases/Kann ich ein Foto machen-.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB67352),
        title: const Text(
          'Phrases',
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
      body: ListView(children: getlist(phrasesList)),
    );
  }

  List<Item> getlist(List<ItemModel> membersList) {
    List<Item> itemslist = [];
    for (int i = 0; i < membersList.length; i++) {
      itemslist.add(
        Item(
          item: membersList[i],
          itemcolor: const Color(0xffDFD0B8),
        ),
      );
    }
    return itemslist;
  }
}
