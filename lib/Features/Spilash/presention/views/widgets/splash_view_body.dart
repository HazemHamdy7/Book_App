import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../home/presentation/views/home_view.dart';
import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimtion();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.loge),
        const SizedBox(height: 10),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimtion() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      // ignore: prefer_const_constructors
      Duration(seconds: 2),
      () {
        //   Get.to(() => const HomeView(),
        //
        //GoR     transition: Transition.fade, duration: kTranstionDuration);
        GoRouter.of(context).push(AppRouter.RouterHomeView);
      },
    );
  }
}
