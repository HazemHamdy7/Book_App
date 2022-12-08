import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSaler extends StatelessWidget {
  const BestSaler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.test,
          height: 150,
          width: 150,
        ),
        Column(
          children: [Text("Harry Potter ")],
        ),
        Row(
          children: [Text("19.99\$")],
        )
      ],
    );
  }
}
