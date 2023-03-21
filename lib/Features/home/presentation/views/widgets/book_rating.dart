import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "4.8",
          style: StylesApp.textStyle14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "(235)",
          style: StylesApp.textStyle16.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
