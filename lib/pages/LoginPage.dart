import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecodeasapp/utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Iniciar sesión'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  child: Card(
                    elevation: 4.0,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.height * 1,
                            child: Image.asset(
                              'assets/images/ecodeas-globo.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: AutoSizeText(
                              'Iniciar sesión',
                              style: TextStyle(
                                  fontFamily: 'Boonbaan',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: AutoSizeText(
                              'Accede a tu cuenta en Ecodeas',
                              style: TextStyle(
                                fontFamily: 'Boonbaan',
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                          LoginForm()
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: RaisedButton(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xff3b5998))),
                    color: Color(0xff3b5998),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                        AutoSizeText(
                          ' Iniciar sesión con Facebook ',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(OMIcons.email),
                hintText: 'Introduce tu email...',
                labelText: 'Email *',
              ),
              onSaved: (String value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String value) {
                return value.contains('@') ? 'No ha utilizado el @' : null;
              },
            )),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            padding: EdgeInsets.only(top: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(OMIcons.lock),
                hintText: 'Introduce tu contraseña...',
                labelText: 'Contraseña *',
              ),
              onSaved: (String value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String value) {
                return value.contains('@') ? 'No ha utilizado el @' : null;
              },
            )),
        Container(
          padding: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width * 0.8,
          child: RaisedButton(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: PrimaryColor)),
            color: PrimaryColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  OMIcons.person,
                  color: Colors.white,
                ),
                AutoSizeText(
                  ' Iniciar sesión ',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  maxLines: 1,
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
