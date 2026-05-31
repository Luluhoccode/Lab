import 'package:flutter/material.dart';

class CommonUiErrorsDemo extends StatefulWidget {
  const CommonUiErrorsDemo({super.key});

  @override
  State<CommonUiErrorsDemo> createState() =>
      _CommonUiErrorsDemoState();
}

class _CommonUiErrorsDemoState
    extends State<CommonUiErrorsDemo> {

  final List<String> movies = [
    "Movie A",
    "Movie B",
    "Movie C",
    "Movie D",
  ];

  int counter = 0;

  Future<void> openDatePicker() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Exercise 5 - Common UI Errors",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            const Text(
              "Correct ListView inside Column using Expanded",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.movie),
                    title: Text(movies[index]),
                  );
                },
              ),
            ),

            Text(
              "Counter: $counter",
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text("Increase"),
            ),

            ElevatedButton(
              onPressed: openDatePicker,
              child: const Text(
                "Open DatePicker",
              ),
            ),
          ],
        ),
      ),
    );
  }
}