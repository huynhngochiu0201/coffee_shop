import 'package:coffee_shop_futter/components/coffe_tile.dart';
import 'package:coffee_shop_futter/models/coffe.dart';
import 'package:coffee_shop_futter/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffe coffe) {
    Provider.of<CoffeShop>(context, listen: false).removeItemFromCart(coffe);
  }

  void payNow() {}
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Giỏ Hàng',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 12.0,),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffe eachCoffe = value.userCart[index];
      
                    return CoffeTile(
                        coffe: eachCoffe,
                        onPressed: () => removeFromCart(eachCoffe),
                        icon: Icon(Icons.delete));
                  },
                ),
                // pay button_cart
              ),
              GestureDetector(
                onTap:  payNow,
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Pay Now',
                      style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
