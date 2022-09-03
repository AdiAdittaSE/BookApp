import 'dart:ffi';

import 'package:flutter/material.dart';

import '../consttants.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({Key? key, required this.name, required this.tag, required this.chapterNumber, required this.press}) : super(key: key);
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 33,
              color: kShadowColor,
            )
          ]),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Chapter $chapterNumber : $name\n',
                style: TextStyle(
                  fontSize: 16,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                  text: tag,
                  style: TextStyle(
                    color: kLightBlackColor,
                  ))
            ]),
          ),
          const Spacer(),
          IconButton(
            onPressed: press,
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
