import 'package:flutter/material.dart';

import '../../../../../../core/utils/color.dart';
import '../../../../../../core/utils/styles.dart';
import 'best_saller_list_view.dart';
import 'custom_app_bar.dart';
import 'featuredBook_list_view.dart';

class HomeViewBady extends StatelessWidget {
  const HomeViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(),
            ),
            const FeaturedBookListView(),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Best Seller",
                style: StylesApp.textStyle18.copyWith(
                  fontFamily: kGtSectraFine,
                ),
              ),
            ),
          ],
        ),
      ),
      const SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
