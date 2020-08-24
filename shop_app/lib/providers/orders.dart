import 'package:flutter/foundation.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/widgets/cart_item.dart';

class OrderItem {
  final String id;
  final double ammount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    this.id,
    this.ammount,
    this.products,
    this.dateTime
  });

}

class OrdersProvider with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [...orders];
  }

  void addOrder(List<CartItem> products, double total) {
    _orders.insert(0, OrderItem(
      id: DateTime.now().toString(),
      ammount: total,
      dateTime: DateTime.now(),
      products: products
    ));
    notifyListeners();
  }
}