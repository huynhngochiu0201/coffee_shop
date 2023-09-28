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

  void removeFromCart(Coffe coffe){
    Provider.of<CoffeShop>(context , listen: false).removeItemFromCart(coffe);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(builder: (context, value, child) =>SafeArea(
      child: Column(
        children: [
          Text(  
            'Giỏ Hàng',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
              Coffe eachCoffe = value.userCart[index];

              return CoffeTile(coffe: eachCoffe,
               onPressed: () => removeFromCart(eachCoffe), icon: Icon(Icons.delete));
              },
            ),
          ),
        ],
      ),
    ),);
  }
}
