import 'package:flutter/material.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Expenses"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 39, 174, 176), Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(labelText: "Amount"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(labelText: "Category"),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(labelText: "Note"),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(labelText: "Date"),
              ),
              const Spacer(),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 80),
                      backgroundColor: const Color.fromARGB(
                          0, 190, 184, 184), // Set button color to transparent
                      shadowColor: Colors
                          .transparent, // Remove any shadow color if necessary
                    ),
                    child: const Text("Save"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
