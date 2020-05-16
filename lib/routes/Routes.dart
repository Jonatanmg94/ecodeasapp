import 'package:flutter/material.dart';

import 'package:ecodeasapp/pages/HomePage.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/home' : ( BuildContext context ) => HomePage()
  };
}