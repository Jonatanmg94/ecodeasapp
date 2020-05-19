import 'package:ecodeasapp/utils/CustomTheme.dart';
import 'package:flutter/material.dart';

class EcodeasPage extends StatefulWidget {
  @override
  _EcodeasPageState createState() => _EcodeasPageState();
}

class _EcodeasPageState extends State<EcodeasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton.extended(
      elevation: 4.0,
      backgroundColor: PrimaryColor,
      icon: const Icon(Icons.add),
      label: const Text('Publicar una idea'),
      onPressed: () {},
    ),
    floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Text('Apartado Ecodeas'),
      ),
    );
  }
}