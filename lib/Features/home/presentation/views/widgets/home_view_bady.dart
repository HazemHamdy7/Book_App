import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
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
            const SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'Harry potter and the Global of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: StylesApp.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Row(
                //   children: const [
                //     Text(
                //       "19.19\$",
                //       style: StylesApp.textStyle16,
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
