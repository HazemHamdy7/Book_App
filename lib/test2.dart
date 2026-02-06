import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Spilash/presention/views/spilash_screen.dart';
import 'core/utils/color.dart';
//import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class TestTwo extends StatefulWidget {
  const TestTwo({super.key});

  @override
  State<TestTwo> createState() => _TestTwoState();
}

class _TestTwoState extends State<TestTwo> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Colors.red;
    Color shadowColor2 = Colors.blueAccent.shade700;
    Color shadowColor3 = Colors.purpleAccent.shade700;
    Color shadowColor4 = Colors.greenAccent.shade700;

    return Scaffold(
        backgroundColor: const Color(0xFF00000F),
        body: Listener(
          onPointerDown: (event) => setState(() {
            isPressed = true;
          }),
          onPointerUp: (event) => setState(() {
            isPressed = false;
          }),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        for (double i = 1; i < 6; i++)
                          BoxShadow(
                            color: shadowColor,
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
                      Get.to(() => const SpilashScereen(),
                          transition: Transition.fade,
                          duration: kTranstionDuration);
                    },
                    child: Text(
                      'Read The Books Any Time',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          shadows: [
                            for (double i = 1; i < (isPressed ? 8 : 4); i++)
                              Shadow(
                                color: shadowColor,
                                blurRadius: 3 * i,
                              ),
                            Shadow(
                              color: shadowColor,
                              blurRadius: 6,
                            ),
                            Shadow(
                              color: shadowColor,
                              blurRadius: 9,
                            ),
                          ]),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         for (double i = 1; i < 6; i++)
                //           BoxShadow(
                //             // offset: Offset.fromDirection(50.5),
                //             color: shadowColor2,
                //             blurRadius: (isPressed ? 5 : 3) * i,
                //             blurStyle: BlurStyle.outer,
                //           ),
                //       ]),
                //   child: TextButton(
                //     onHover: (hovered) => setState(() {
                //       isPressed = hovered;
                //     }),
                //     style: TextButton.styleFrom(
                //         side: const BorderSide(
                //           color: Colors.white,
                //           width: 4,
                //         ),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10),
                //         )),
                //     onPressed: () {
                //       // Get.to(() => const SpilashScereen(),
                //       //     transition: Transition.fade,
                //       //     duration: kTranstionDuration);
                //     },
                //     child: Text(
                //       'Hello Hazem',
                //       style: TextStyle(
                //           fontSize: 28,
                //           color: Colors.white,
                //           shadows: [
                //             for (double i = 1; i < (isPressed ? 8 : 4); i++)
                //               Shadow(
                //                 color: shadowColor2,
                //                 blurRadius: 3 * i,
                //               ),
                //             Shadow(
                //               color: shadowColor2,
                //               blurRadius: 6,
                //             ),
                //             Shadow(
                //               color: shadowColor2,
                //               blurRadius: 9,
                //             ),
                //           ]),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         for (double i = 1; i < 6; i++)
                //           BoxShadow(
                //             // offset: Offset.fromDirection(50.5),
                //             color: shadowColor4,
                //             blurRadius: (isPressed ? 5 : 3) * i,
                //             blurStyle: BlurStyle.outer,
                //           ),
                //       ]),
                //   child: TextButton(
                //     onHover: (hovered) => setState(() {
                //       isPressed = hovered;
                //     }),
                //     style: TextButton.styleFrom(
                //         side: const BorderSide(
                //           color: Colors.white,
                //           width: 4,
                //         ),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10),
                //         )),
                //     onPressed: () {
                //       // Get.to(() => const SpilashScereen(),
                //       //     transition: Transition.fade,
                //       //     duration: kTranstionDuration);
                //     },
                //     child: Text(
                //       'Hello Hazem',
                //       style: TextStyle(
                //           fontSize: 28,
                //           color: Colors.white,
                //           shadows: [
                //             for (double i = 1; i < (isPressed ? 8 : 4); i++)
                //               Shadow(
                //                 color: shadowColor4,
                //                 blurRadius: 3 * i,
                //               ),
                //             Shadow(
                //               color: shadowColor4,
                //               blurRadius: 6,
                //             ),
                //             Shadow(
                //               color: shadowColor4,
                //               blurRadius: 9,
                //             ),
                //           ]),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         for (double i = 1; i < 6; i++)
                //           BoxShadow(
                //             // offset: Offset.fromDirection(50.5),
                //             color: shadowColor3,
                //             blurRadius: (isPressed ? 5 : 3) * i,
                //             blurStyle: BlurStyle.outer,
                //           ),
                //       ]),
                //   child: TextButton(
                //     onHover: (hovered) => setState(() {
                //       isPressed = hovered;
                //     }),
                //     style: TextButton.styleFrom(
                //         side: const BorderSide(
                //           color: Colors.white,
                //           width: 4,
                //         ),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10),
                //         )),
                //     onPressed: () {
                //       // Get.to(() => const SpilashScereen(),
                //       //     transition: Transition.fade,
                //       //     duration: kTranstionDuration);
                //     },
                //     child: Text(
                //       'Hello Hazem',
                //       style: TextStyle(
                //           fontSize: 28,
                //           color: Colors.white,
                //           shadows: [
                //             for (double i = 1; i < (isPressed ? 8 : 4); i++)
                //               Shadow(
                //                 color: shadowColor3,
                //                 blurRadius: 3 * i,
                //               ),
                //             Shadow(
                //               color: shadowColor3,
                //               blurRadius: 6,
                //             ),
                //             Shadow(
                //               color: shadowColor3,
                //               blurRadius: 9,
                //             ),
                //           ]),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // const hhhh()
              ],
            ),
          ),
        ));
  }
}
