import 'package:flutter/material.dart';
import 'screen/balance_summary_screen.dart';
import 'screen/transactions_overview_screen.dart';
import 'screen/add_expense_screen.dart';
import 'thems/app_theme.dart';

void main() {
  runApp(const ExpenseTrackerApp());
}

class ExpenseTrackerApp extends StatelessWidget {
  const ExpenseTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Expense Tracker"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dashboard), text: 'Balance'),
              Tab(icon: Icon(Icons.list), text: 'Transactions'),
              Tab(icon: Icon(Icons.add), text: 'Add Expense'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            BalanceSummaryScreen(),
            TransactionsOverviewScreen(),
            AddExpenseScreen(),
          ],
        ),
      ),
    );
  }
}
