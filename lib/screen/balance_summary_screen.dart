import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalanceSummaryScreen extends StatelessWidget {
  const BalanceSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mone Veeresh"), // Replace with dynamic name
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "View All",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color.fromARGB(255, 251, 64, 220),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Total Balance",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "\$4800.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Income: \$2500 | Expenses: \$800",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Category Navigation Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _CategoryIcon(icon: CupertinoIcons.shopping_cart, label: "Food"),
              _CategoryIcon(icon: CupertinoIcons.bag, label: "Shopping"),
              _CategoryIcon(
                  icon: CupertinoIcons.music_note, label: "Entertainment"),
              _CategoryIcon(icon: CupertinoIcons.airplane, label: "Travel"),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(CupertinoIcons.add),
      ),
    );
  }
}

class _CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CategoryIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color.fromARGB(255, 44, 176, 39)),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
