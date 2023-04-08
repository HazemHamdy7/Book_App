import 'package:book_app/Features/home/presentation/views/widgets/DetailsViewScreen/similler_list_view_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/models/book_model/book_model.dart';
import '../HomeViewScreen/book_rating.dart';
import '../HomeViewScreen/custom_book_image.dart';
import 'book_action_bottom.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomBookDetailsAppBar(),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * .2, vertical: height * .01),
                  child: CustomBookImage(
                    imageUrl: bookmodel.volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
              ),
              const SizedBox(height: 43),
              Text(
                bookmodel.volumeInfo.title!,
                style: StylesApp.textStyleBold30.copyWith(
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Opacity(
                  opacity: .7,
                  child: Text(bookmodel.volumeInfo.authors?[0] ?? 'not found',
                      style: StylesApp.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500))),
              const SizedBox(height: 18),
              BookRating(
                  rating: bookmodel.volumeInfo.averageRating ?? 2.5,
                  count: bookmodel.volumeInfo.ratingsCount ?? 103,
                  mainAxisAlignment: MainAxisAlignment.center),
              const SizedBox(height: 37),
                BooksActionBottom(bookModel:bookmodel ,),
              const Expanded(child: SizedBox(height: 40)),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8 ,vertical: 8),
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
