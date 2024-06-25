import 'package:flutter/material.dart';
import 'package:inoova_flutter/animated_container_app.dart';
import 'package:inoova_flutter/floating_action_button.dart';
import 'package:inoova_flutter/grid_view_demo.dart';
import 'package:inoova_flutter/my_home_page.dart';
import 'package:inoova_flutter/opacity_demo.dart';
import 'package:inoova_flutter/shopping_list_item.dart';
import 'package:inoova_flutter/snack_bar_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primaryColor: Colors.blue,
        primaryColorDark: const Color(0xff000000),
        primaryColorLight: const Color(0xffffffff),
        indicatorColor: Colors.deepOrangeAccent,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
      routes: <String, WidgetBuilder> {
        '/myhomepage': (BuildContext context) => const MyHomePage(title: 'Flutter Home Page'),
        '/floating': (BuildContext context) => const FloatingActionButtonExample(title: 'Floating Action Button'),
        '/snackbar': (BuildContext context) => const SnackBarDemo(title: 'SnackBar Demo'),
        '/gridview': (BuildContext context) => const GridViewDemo(title: 'Grid View Demo'),
        '/opacity': (BuildContext context) => const OpacityDemo(title: 'Opacity Demo'),
        '/animated': (BuildContext context) => const AnimatedContainerApp(title: 'AnimatedContainer Demo'),
        '/shopping': (BuildContext context) => const ShoppingList(
          products: [
            Product(name: 'Arroz'),
            Product(name: 'Feijão'),
            Product(name: 'Picanha'),
            Product(name: 'Café'),
            Product(name: 'Açucar'),
          ],
        ),
      },
    );
  }
}