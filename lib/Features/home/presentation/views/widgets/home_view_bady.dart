import 'package:book_app/Features/home/presentation/views/widgets/best_saler.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featuredBook_list_view.dart';

class HomeViewBady extends StatelessWidget {
  const HomeViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: StylesApp.titleMedium,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // to responsive image widget
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetsData.test2,
                      ),
                    )),
              ),
            ),
            // Column(
            //   children: [
            //     Text(
            //       "Best Seller",
            //       style: StylesApp.titleMedium,
            //     ),
            //     SizedBox(
            //       height: 30,
            //     ),
            //     Row(
            //       children: [
            //         Text(
            //           "19.19\$",
            //           style: StylesApp.titleMedium,
            //         ),
            //       ],
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
