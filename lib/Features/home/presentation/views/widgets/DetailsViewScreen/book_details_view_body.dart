import 'package:book_app/Features/home/presentation/views/widgets/DetailsViewScreen/similler_list_view_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import '../HomeViewScreen/book_rating.dart';
import '../HomeViewScreen/custom_book_image.dart';
import 'book_action_bottom.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .2, vertical: height * .01),
                child: const CustomBookImage(
                  imageUrl:
                      'https://images.search.yahoo.com/search/images?p=image&fr=mcafee&type=E210US91105G0&imgurl=http%3A%2F%2Fwww.wallpapers13.com%2Fwp-content%2Fuploads%2F2015%2F12%2FNature-Lake-Bled.-Desktop-background-image.jpg#id=0&iurl=http%3A%2F%2Fwww.wallpapers13.com%2Fwp-content%2Fuploads%2F2015%2F12%2FNature-Lake-Bled.-Desktop-background-image.jpg&action=click',
                ),
              ),
              const SizedBox(height: 43),
              const Text("The Jungle book", style: StylesApp.textStyleBold30),
              const SizedBox(height: 6),
              Opacity(
                  opacity: .7,
                  child: Text("Rudyard Kipling",
                      style: StylesApp.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500))),
              const SizedBox(height: 18),
              const BookRating(
                  rating: 5,
                  count: 600,
                  mainAxisAlignment: MainAxisAlignment.center),
              const SizedBox(height: 37),
              const BooksActionBottom(),
              const Expanded(child: SizedBox(height: 40)),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("You can also like",
                          style: StylesApp.textStyle14
                              .copyWith(fontWeight: FontWeight.w600)))),
              const SizedBox(height: 16),
              const SimillerListViewItem(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      )
    ]);
  }
}
