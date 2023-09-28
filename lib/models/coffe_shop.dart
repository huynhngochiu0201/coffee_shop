import 'package:coffee_shop_futter/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeShop extends ChangeNotifier{
  final List<Coffe> _shop = [
    Coffe(
      name: "PHINDI HẠT DẺ CƯỜI",
      price: "5.0",
      image: "assets/images/img1.png",
    ),

    Coffe(
      name: 'CAPPUCCINO',
      price: "5.0",
      image: "assets/images/img2.png",
    ),

    Coffe(
      name: 'CARAMEL MACCHIATO',
      price: "5.0",
      image: "assets/images/img3.png",
    ),

    Coffe(
      name: 'LATTE',
      price: "5.0",
      image: "assets/images/img4.png",
    ),

    Coffe(
      name: 'TRÀ SEN VÀNG (CỦ NĂNG)',
      price: "5.0",
      image: "assets/images/img5.png",
    ),

    Coffe(
      name: 'TRÀ THANH ĐÀO',
      price: "5.0",
      image: "assets/images/img6.png",
    ),

    Coffe(
      name: 'TRÀ XANH ĐẬU ĐỎ',
      price: "5.0",
      image: "assets/images/img7.png",
    ),

    Coffe(
      name: 'TRÀ SEN VÀNG (SEN)',
      price: "5.0",
      image: "assets/images/img8.png",
    ),

    Coffe(
      name: 'PHIN SỮA ĐÁ',
      price: "5.0",
      image: "assets/images/img9.png",
    ),
  ];
  // User cart
  List<Coffe> _userCart = [];

  // danh sach cf
  List<Coffe> get coffeShop => _shop;

  // ấy giỏ hàng của người dùng
  List<Coffe> get userCart => _userCart;

  // thêm mặt hàng vào giỏ hàng
  void addItemToCart(Coffe coffe){
    _userCart.add(coffe);
    notifyListeners();
  }

  // xóa mặt hàng khỏi giỏ hàng
  void removeItemFromCart(Coffe coffe){
    _userCart.remove(coffe);
    notifyListeners();

  }
}



