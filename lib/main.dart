import 'package:flutter/material.dart';

import 'package:ecodeasapp/routes/Routes.dart';
import 'package:ecodeasapp/utils/Provider.dart';
import 'package:ecodeasapp/utils/CustomTheme.dart';

void main() => runApp(EcodeasApp());

class EcodeasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecodeas',
        theme: getThemeApp(),
        routes: getApplicationRoutes(),
        initialRoute: '/home',
      ),
    );
  }
}
