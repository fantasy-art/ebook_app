import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.bgColor,
      required this.border,
      required this.text,
      required this.textColor});
  final String text;
  final Color bgColor;
  final Color textColor;
  final BorderRadius border;

  @override
  Widget build(BuildContext context) {
    //border = const BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16));

    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(borderRadius: border)),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(color: textColor),
        ),
      ),
    );
  }
}
