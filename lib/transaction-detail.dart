import 'package:first_app/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  final Transaction _transaction;

  TransactionDetail(this._transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: int.parse(_transaction.id) % 2 == 0
          ? Colors.lightBlue
          : Colors.lightBlueAccent,
      child: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                )),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _transaction.description,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _transaction.txDate.toIso8601String(),
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Text("\$ ${_transaction.amount.toString()}"),
            ),
          ],
        ),
      ),
    );
  }
}
