import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "4.8",
          style: StylesApp.textStyle14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            "(2325)",
            style: StylesApp.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
