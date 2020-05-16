
import 'package:ecodeasapp/models/User.dart';
import 'package:flutter/material.dart';


class Provider extends InheritedWidget {
  static Provider _instancia;

  static User user = User(
    name: 'Domingo',
    lastname: 'Montesdeoca',
    email: 'DomingoMG97@yopmail.com'
  );

  // Detectamos si existe una instancia del widget principal
  // Esto nos permite no actualizar el contenido si ya existe.
  factory Provider({ Key key, Widget child }) {
    if( _instancia == null ){
      _instancia = new Provider._internal(key: key, child: child);
    }
    return _instancia;
  }

  Provider._internal({ Key key, Widget child }) : super(key: key, child: child);

  // Al actualizarse debe notificar a sus hijos de los cambios
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}