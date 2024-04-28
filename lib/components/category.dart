import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
   Category({super.key,  this.color,  this.title, this.onTap});
  final Color? color;
  final String? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 9.0,
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
