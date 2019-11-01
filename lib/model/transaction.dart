import 'package:flutter/widgets.dart';

class Transaction {
  String id;
  String description;
  DateTime txDate;
  double amount;

  Transaction(
      {@required this.id,
      @required this.amount,
      @required this.description,
      @required this.txDate});
}
