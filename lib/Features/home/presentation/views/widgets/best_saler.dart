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
          children: const [Text("Harry Potter ")],
        ),
        Row(
          children: const [Text("19.99\$")],
        )
      ],
    );
  }
}
