import 'package:flutter/material.dart';
import 'package:guru/Models/item_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.itemcolor});
  final ItemModel item;
  final Color itemcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemcolor,
      height: 100,
      child: Row(
        children: [
          item.image == null
              ? const SizedBox()
              : Container(
                  color: const Color(0xffE5E1DA),
                  child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.enname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  item.grname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                item.playSound();
              },
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
