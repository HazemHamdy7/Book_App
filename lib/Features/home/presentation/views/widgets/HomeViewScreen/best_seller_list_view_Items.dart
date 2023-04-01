import 'package:book_app/Features/home/data/models/book_model/book_model.dart';

import '../../../../../../core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color.dart';
import '../../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.routerBookDetailsView);
        },
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              //! to responsive image widget
              // AspectRatio(
              //   aspectRatio: 2.5 / 4,
              //   child: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(8),
              //         color: Colors.red,
              //         image: const DecorationImage(
              //           fit: BoxFit.fill,
              //           image: AssetImage(
              //             AssetsData.test2,
              //           ),
              //         )),
              //   ),
              // ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: StylesApp.textStyle16
                            .copyWith(fontFamily: kGtSectraFine),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0] ,
                      maxLines: 2,
                      style: StylesApp.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        // Text("19.19\$",
                        const Text("Free", style: StylesApp.textStyle1Bold16),
                        const Spacer(),
                        BookRating(
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                          count: bookModel.volumeInfo.ratingsCount ?? 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
