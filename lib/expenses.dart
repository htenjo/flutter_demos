import 'package:first_app/chart.dart';
import 'package:first_app/menu-bottom.dart';
import 'package:first_app/model/transaction.dart';
import 'package:first_app/transaction-list.dart';
import 'package:flutter/material.dart';

class ExpensesApp extends StatefulWidget {
  @override
  _ExpensesAppState createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  List<Transaction> _transactions = [
    Transaction(
        id: '1', description: "Comida", txDate: DateTime.now(), amount: 10.0),
    Transaction(
        id: '2', description: "Taxi", txDate: DateTime.now(), amount: 10.0),
    Transaction(
        id: '3', description: "Cine", txDate: DateTime.now(), amount: 10.0),
    Transaction(
        id: '4', description: "Mercado", txDate: DateTime.now(), amount: 10.0),
    Transaction(
        id: '5', description: "Comida", txDate: DateTime.now(), amount: 10.0),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expenses App2"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Chart(), TransactionList(_transactions), MenuBottom()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Transaction',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
