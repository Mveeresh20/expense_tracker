import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String amount;

  const TransactionItem({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon, color: Colors.white),
        backgroundColor: Colors.orange,
      ),
      title: Text(label),
      trailing: Text(amount, style: const TextStyle(color: Colors.red)),
    );
  }
}
