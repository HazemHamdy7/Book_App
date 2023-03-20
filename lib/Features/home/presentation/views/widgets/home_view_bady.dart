import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featuredBook_list_view.dart';

class HomeViewBady extends StatelessWidget {
  const HomeViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBookListView(),
          const SizedBox(
            height: 50,
          ),
          Text("Best Seller",
              style: StylesApp.textStyle18.copyWith(fontFamily: kGtSectraFine)),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}
