import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featuredBook_list_view.dart';

class HomeViewBady extends StatelessWidget {
  const HomeViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        FeaturedBookListView(),
      ],
    );
  }
}

