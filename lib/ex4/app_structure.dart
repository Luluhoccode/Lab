import 'package:flutter/material.dart';

class AppStructureDemo extends StatefulWidget {
  const AppStructureDemo({super.key});

  @override
  State<AppStructureDemo> createState() =>
      _AppStructureDemoState();
}

class _AppStructureDemoState
    extends State<AppStructureDemo> {

  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),

      darkTheme: ThemeData.dark(),

      themeMode:
      isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Exercise 4 - App Structure",
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("FAB Clicked"),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [

                  const Text(
                    "Dark Mode",
                    style: TextStyle(fontSize: 18),
                  ),

                  Switch(
                    value: isDarkMode,
                    onChanged: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const Center(
                child: Text(
                  "This is a simple screen with theme toggle.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}