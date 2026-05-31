import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() =>
      _InputControlsDemoState();
}

class _InputControlsDemoState
    extends State<InputControlsDemo> {

  double rating = 5;

  bool isActive = false;

  String? genre;

  DateTime? selectedDate;

  Future<void> pickDate() async {

    DateTime? picked =
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Exercise 2 - Input Controls",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            const Text(
              "Rating (Slider)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Slider(
              value: rating,
              min: 0,
              max: 10,

              onChanged: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),

            Text(
              "Current value: ${rating.toStringAsFixed(1)}",
            ),

            const SizedBox(height: 20),

            const Text(
              "Active (Switch)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Switch(
              value: isActive,
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              },
            ),

            Text(
              "Is movie active? $isActive",
            ),

            const SizedBox(height: 20),

            const Text(
              "Genre (RadioListTile)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile(
              title: const Text("Action"),
              value: "Action",
              groupValue: genre,

              onChanged: (value) {
                setState(() {
                  genre = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Comedy"),
              value: "Comedy",
              groupValue: genre,

              onChanged: (value) {
                setState(() {
                  genre = value.toString();
                });
              },
            ),

            Text(
              "Selected genre: ${genre ?? 'None'}",
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickDate,
              child: const Text(
                "Open Date Picker",
              ),
            ),

            if (selectedDate != null)
              Text(
                "Date: "
                    "${selectedDate!.day}/"
                    "${selectedDate!.month}/"
                    "${selectedDate!.year}",
              ),
          ],
        ),
      ),
    );
  }
}