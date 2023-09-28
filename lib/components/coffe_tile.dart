import 'package:flutter/material.dart';

import '../models/coffe.dart';

class CoffeTile extends StatelessWidget {
  void Function()? onPressed;
  final Coffe coffe;
  CoffeTile({Key? key, required this.coffe, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.image),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
