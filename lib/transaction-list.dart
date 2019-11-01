import 'package:first_app/model/transaction.dart';
import 'package:first_app/transaction-detail.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: _transactions.map((tx) => TransactionDetail(tx)).toList()
      ),
    );
  }
}
