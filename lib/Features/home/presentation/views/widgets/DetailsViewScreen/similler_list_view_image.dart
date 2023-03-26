import 'package:flutter/material.dart';

import '../HomeViewScreen/custom_book_image.dart';

class SimillerListViewItem extends StatelessWidget {
  const SimillerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                  imageUrl:
                      'https://images.search.yahoo.com/search/images?p=image&fr=mcafee&type=E210US91105G0&imgurl=http%3A%2F%2Fwww.wallpapers13.com%2Fwp-content%2Fuploads%2F2015%2F12%2FNature-Lake-Bled.-Desktop-background-image.jpg#id=0&iurl=http%3A%2F%2Fwww.wallpapers13.com%2Fwp-content%2Fuploads%2F2015%2F12%2FNature-Lake-Bled.-Desktop-background-image.jpg&action=click'),
            );
          }),
    );
  }
}
