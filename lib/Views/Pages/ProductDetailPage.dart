import 'package:flutter/material.dart';
import 'package:ex1/Views/Widgets/ButtonBar.dart';
import 'package:ex1/Views/Widgets/Product_Widget.dart';
import 'package:ex1/Views/Widgets/ProductWidget.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Product Detail")),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.home,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Buttonbar(),
      body: ProductWidgetStateFull(),
    );
  }
}