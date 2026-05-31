import 'package:ex1/Views/Widgets/Product_Widget.dart';
import 'package:flutter/material.dart';
import 'package:ex1/Views/Widgets/ProductWidget.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => ProductWidgetStateFull(),
      itemBuilder: (context, index) => ProductWidgetStateFull(),
    );
  }
}