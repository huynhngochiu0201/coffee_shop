import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SafeArea(
        child: Column(
          children: [
            Text('Giỏ Hàng',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}