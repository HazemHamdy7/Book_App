import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'Features/Spilash/presention/views/spilash_screen.dart';
import 'core/utils/color.dart';

class hhhh extends StatefulWidget {
  const hhhh({super.key});

  @override
  State<hhhh> createState() => _hhhhState();
}

class _hhhhState extends State<hhhh> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    // final Colors  color =shadowColor5;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        for (double i = 1; i < 6; i++)
          BoxShadow(
            // offset: Offset.fromDirection(50.5),
            color: Colors.white,
            blurRadius: (isPressed ? 5 : 3) * i,
            blurStyle: BlurStyle.outer,
          ),
      ]),
      child: TextButton(
        onHover: (hovered) => setState(() {
          isPressed = hovered;
        }),
        style: TextButton.styleFrom(
            side: const BorderSide(
              color: Colors.white,
              width: 4,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          // Get.to(() => const SpilashScereen(),
          //     transition: Transition.fade, duration: kTranstionDuration);
        },
        child: Text(
          'Hello Hazem',
          style: TextStyle(fontSize: 28, color: Colors.white, shadows: [
            for (double i = 1; i < (isPressed ? 8 : 4); i++)
              Shadow(
                color: Colors.white,
                blurRadius: 3 * i,
              ),
            const Shadow(
              color: Colors.white,
              blurRadius: 6,
            ),
            const Shadow(
              color: Colors.white,
              blurRadius: 9,
            ),
          ]),
        ),
      ),
    );
  }
}
