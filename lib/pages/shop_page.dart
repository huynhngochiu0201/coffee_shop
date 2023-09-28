import 'dart:js_util';

import 'package:coffee_shop_futter/components/coffe_tile.dart';
import 'package:coffee_shop_futter/models/coffe.dart';
import 'package:coffee_shop_futter/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
void addToCart (Coffe coffe){
  Provider.of<CoffeShop>(context,listen: false).addItemToCart(coffe);

}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "Bạn muốn uống Caffee nào ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeShop.length,
                  itemBuilder: (context, index) {
                    Coffe eachCoffe = value.coffeShop[index];

                    return CoffeTile(
                      coffe: eachCoffe,
                      icon:Icon(Icons.add),
                    onPressed:  () => addToCart(eachCoffe));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}