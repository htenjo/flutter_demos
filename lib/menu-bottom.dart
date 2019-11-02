import 'package:first_app/button-menu-bottom.dart';
import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: new Color.fromARGB(255, 58, 84, 124),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: ButtonMenuBottom(Icons.shopping_cart, 'Mercado', 30),),
          Expanded(child: ButtonMenuBottom(Icons.time_to_leave, 'Transporte', 30),),
          Expanded(child: ButtonMenuBottom(Icons.add_circle_outline, 'Crear Gasto', 50),),
          Expanded(child: ButtonMenuBottom(Icons.movie, 'Entretenimiento', 30),),
          Expanded(child: ButtonMenuBottom(Icons.favorite, '???', 30),),
        ],
      ),
    );
  }
}
