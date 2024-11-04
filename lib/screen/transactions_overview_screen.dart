import 'package:flutter/material.dart';
import '../widgets/transaction_item.dart';

class TransactionsOverviewScreen extends StatelessWidget {
  const TransactionsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transactions"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _GradientButton(label: "Income"),
              _GradientButton(label: "Expenses"),
            ],
          ),
          const SizedBox(height: 20),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\$3500.00",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("01 Jan 2021 - 01 Apr 2021"),
                  // Insert your chart widget here.
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View All"),
                  ),
                  _TransactionList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GradientButton extends StatelessWidget {
  final String label;

  const _GradientButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class _TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TransactionItem(title: "Home Rent", amount: "-\$350.00"),
        _TransactionItem(title: "Pet Groom", amount: "-\$50.00"),
        _TransactionItem(title: "Recharge", amount: "-\$100.00"),
      ],
    );
  }
}

class _TransactionItem extends StatelessWidget {
  final String title;
  final String amount;

  const _TransactionItem({required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(title[0]),
      ),
      title: Text(title),
      trailing: Text(amount),
    );
  }
}
