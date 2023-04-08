import 'package:flutter/material.dart';

void customSnakBar(context, String url) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Can`t launch $url'),
    ),
  );
}
