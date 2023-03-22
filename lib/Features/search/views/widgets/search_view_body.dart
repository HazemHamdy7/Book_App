import 'package:flutter/material.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/utils/styles.dart';
import '../../../home/presentation/views/widgets/HomeViewScreen/best_seller_list_view_Items.dart';
import 'custom_search_text_fieled.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextFieled(),
          const SizedBox(height: 20),
          Text(
            "Search Result",
            style: StylesApp.textStyle16.copyWith(
              fontFamily: kGtSectraFine,
            ),
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const BookListViewItem();
        });
  }
}
