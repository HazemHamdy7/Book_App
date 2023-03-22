import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CusttomBottom extends StatelessWidget {
  const CusttomBottom(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      this.borderRadius,
      this.fontSize});

  final Color backgroundColor;
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),
          child: Text(
            text,
            style: StylesApp.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          )),
    );
  }
}
