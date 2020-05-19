import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecodeasapp/pages/LoginPage.dart';
import 'package:ecodeasapp/pages/RecoveryPage.dart';
import 'package:ecodeasapp/pages/RegisterPage.dart';
import 'package:ecodeasapp/utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.height * 1,
                          child: Image.asset(
                            'assets/images/ecodeasLogo-Cuadrado.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: <Widget>[
                                AutoSizeText(
                                  'Únete a la comunidad',
                                  style: TextStyle(
                                      fontFamily: 'Boonbaan',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  'Crea tu cuenta en Ecodeas y accede a funcionalidades como las siguientes:',
                                  style: TextStyle(
                                    fontFamily: 'Boonbaan',
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 4,
                                )
                              ],
                            )),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.check,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            'Seguir a otros usuarios de la comunidad.',
                                            style: TextStyle(
                                              fontFamily: 'Boonbaan',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 8,
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.check,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            'Añadir nuevas ecodeas para reciclar.',
                                            style: TextStyle(
                                              fontFamily: 'Boonbaan',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 8,
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.check,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            'Publicar donaciones en el mercado.',
                                            style: TextStyle(
                                              fontFamily: 'Boonbaan',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 8,
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.check,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            'Suma puntos solidarios por tu actividad.',
                                            style: TextStyle(
                                              fontFamily: 'Boonbaan',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 8,
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.check,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            'Añadir valoraciones y comentarios.',
                                            style: TextStyle(
                                              fontFamily: 'Boonbaan',
                                            ),
                                            textAlign: TextAlign.start,
                                            maxLines: 8,
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: RaisedButton(
                                      shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide:
                                              BorderSide(color: PrimaryColor)),
                                      color: PrimaryColor,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            OMIcons.personAdd,
                                            color: Colors.white,
                                          ),
                                          AutoSizeText(
                                            ' Crear una cuenta ',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterPage()));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: RaisedButton(
                                      shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide(
                                              color: PrimaryColor, width: 2.0)),
                                      color: Colors.white,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            OMIcons.personOutline,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            ' Iniciar sesión ',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                                color: PrimaryColor),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(bottom: 5),
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    child: RaisedButton(
                                      shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          borderSide: BorderSide(
                                              color: PrimaryColor, width: 2.0)),
                                      color: Colors.white,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            OMIcons.lock,
                                            color: PrimaryColor,
                                          ),
                                          AutoSizeText(
                                            ' Recuperar cuenta ',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                                color: PrimaryColor),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RecoveryPage()));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
