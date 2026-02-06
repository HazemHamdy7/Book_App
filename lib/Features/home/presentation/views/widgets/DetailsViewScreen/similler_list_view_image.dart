import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widget/costom_error_widget.dart';
import '../../../../../../core/widget/custom_loading_indicator.dart';
import '../../../manger/similar_books_cubit/similar_books_cubit.dart';
import '../HomeViewScreen/custom_book_image.dart';

class SimillerListViewItem extends StatelessWidget {
  const SimillerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Expanded(flex: 50,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: ListView.builder(
                itemCount:state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomBookImage(
                          imageUrl:
                              state.books[index].volumeInfo.imageLinks?.thumbnail??''),
                    );
                  }),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMesage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
