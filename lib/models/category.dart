import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  const Category(
      // Const omdat de data niet veranderd na de build
      {@required this.id,
      @required this.title,
      this.color =
          Colors.orange}); // this.color = Colors.orange Geef default value aan
}
