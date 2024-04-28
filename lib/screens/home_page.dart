import 'package:flutter/material.dart';
import 'package:guru/components/category.dart';
import 'package:guru/screens/colors_page.dart';
import 'package:guru/screens/family_members_page.dart';
import 'package:guru/screens/numbers_page.dart';
import 'package:guru/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E1DA),
      appBar: AppBar(
        backgroundColor: const Color(0xffB67352),
        title: const Text(
          'Guru',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
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
      body: Column(
        children: [
          Category(
            title: 'Numbers',
            color: const Color(0xff153448),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Numberspage();
              }));
            },
          ),
          Category(
            title: 'Family Members',
            color: const Color(0xff3C5B6F),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MembersPage();
                  },
                ),
              );
            },
          ),
          Category(
            title: 'Colors',
            color: const Color(0xff948979),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            title: 'Phrases',
            color: const Color(0xffDFD0B8),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
          )
        ],
      ),
    );
  }
}
