import 'package:flutter/material.dart';

import '../consttants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  const TwoSideRoundedButton({
    Key? key,
    required this.text,
    required this.pass,
    this.bRadious = 29.0,
  }) : super(key: key);
  final String text;
  final VoidCallback pass;
  final double bRadious;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pass,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(bRadious),
            bottomRight: Radius.circular(bRadious),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
