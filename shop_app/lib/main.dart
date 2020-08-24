import 'package:flutter/material.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import 'providers/products_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => ProductsProvider()),
        ChangeNotifierProvider(create: (BuildContext context) => CartProvider()),
        ChangeNotifierProvider.value(value: OrdersProvider())
      ],
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange
        ),
        routes: {
          ProductDetailScreen.routeName: (BuildContext context) => ProductDetailScreen(),
          CartScreen.routeName: (BuildContext context) => CartScreen(),
        },
        home: ProductsOverviewScreen(),
      ),
    );
  }
}
