import 'package:book_app/Features/home/presentation/manger/newset_book_cubit/newset_books_cubit.dart';
import 'package:book_app/core/widget/costom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widget/custom_loading_indicator.dart';
import 'best_seller_list_view_Items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              //shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookListViewItem(
                  bookModel: state.books[index],
                );
              });
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errorMesage: state.errorMessge);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
