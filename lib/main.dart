import 'package:flutter/material.dart';

import 'ex1/core_widgets_demo.dart';
import 'ex2/input_widget_demo.dart';
import 'ex3/layout_basics.dart';
import 'ex4/app_structure.dart';
import 'ex5/common_ui_errors_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab 4',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 4 - Flutter UI Fundamentals'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [

          buildItem(
            context,
            "Exercise 1 - Core Widgets Demo",
            const CoreWidgetsDemo(),
          ),

          buildItem(
            context,
            "Exercise 2 - Input Controls Demo",
            const InputControlsDemo(),
          ),

          buildItem(
            context,
            "Exercise 3 - Layout Demo",
            const LayoutBasicsDemo(),
          ),

          buildItem(
            context,
            "Exercise 4 - App Structure & Theme",
            const AppStructureDemo(),
          ),

          buildItem(
            context,
            "Exercise 5 - Common UI Fixes",
            const CommonUiErrorsDemo(),
          ),
        ],
      ),
    );
  }

  Widget buildItem(
      BuildContext context,
      String title,
      Widget screen,
      ) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            ),
          );
        },
      ),
    );
  }
}