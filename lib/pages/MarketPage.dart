import 'package:ecodeasapp/utils/CustomTheme.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  MarketPage({Key key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton.extended(
      elevation: 4.0,
      backgroundColor: PrimaryColor,
      icon: const Icon(Icons.add),
      label: const Text('Publicar un producto'),
      onPressed: () {},
    ),
    floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Text('Apartado Mercado'),
      ),
    );
  }
}