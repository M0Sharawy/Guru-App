import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String enname;
  final String grname;
  final String sound;
  const ItemModel({
    this.image,
    required this.enname,
    required this.grname,
    required this.sound,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
