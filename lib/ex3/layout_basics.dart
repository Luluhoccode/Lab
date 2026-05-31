import 'package:flutter/material.dart';

class LayoutBasicsDemo extends StatelessWidget {
  const LayoutBasicsDemo({super.key});

  final List<String> movies = const [
    "Avatar",
    "Inception",
    "Interstellar",
    "Joker",
    "Titanic",
    "Avengers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 3 - Layout Basics"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Now Playing",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          movies[index][0],
                        ),
                      ),
                      title: Text(movies[index]),
                      subtitle: const Text(
                        "Sample description",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}