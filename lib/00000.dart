import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: ((context, state) {
      return Column();
    }));
  }
}
