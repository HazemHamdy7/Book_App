import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMesage});
  final String errorMesage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMesage, 
      style: StylesApp.textStyle18,),
    );
  }
}
