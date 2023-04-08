import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/widget/custom_bottom.dart';
import '../../../../data/models/book_model/book_model.dart';

class BooksActionBottom extends StatelessWidget {
  const BooksActionBottom({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CusttomBottom(
              text: ' 19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CusttomBottom(
              fontSize: 16,
              onPressed: () async {
                Uri uri = Uri.parse(
                   // 'https://books.google.com.eg/books?id=--f9vH8XnMsC&dq=programming&hl=ar'
                     bookModel.volumeInfo.previewLink!
                    );
                if (!await launchUrl(uri)) {
                  
                  throw Exception('Could not launch $uri');
                }
              },
              text: ' Free Preview',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
