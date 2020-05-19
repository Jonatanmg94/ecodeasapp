import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecodeasapp/utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear cuenta'),
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
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: AutoSizeText(
                              'Formulario de registro',
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
                              'Crea tu cuenta en Ecodeas',
                              style: TextStyle(
                                fontFamily: 'Boonbaan',
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                          RegisterForm()
                        ],
                      ),
                    ),
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

class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  Country _selected;

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
                hintText: 'Introduce tu usuario...',
                labelText: 'Usuario *',
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 5),
            padding: EdgeInsets.only(top: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Introduce tu nombre...',
                labelText: 'Nombre *',
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 5),
            padding: EdgeInsets.only(top: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Introduce tus apellidos...',
                labelText: 'Apellidos *',
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
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(top: 5),
            child: TextFormField(
              decoration: const InputDecoration(
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 5),
            padding: EdgeInsets.only(top: 5),
            child: TextFormField(
              decoration: const InputDecoration(
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 5),
            padding: EdgeInsets.only(top: 5),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Introduce tu contraseña...',
                labelText: 'Repite la Contraseña *',
              ),
              onSaved: (String value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String value) {
                return value.contains('@') ? 'No ha utilizado el @' : null;
              },
            )),
        RadiobuttonGender(),
        Container(
            width: MediaQuery.of(context).size.width,
            // color: Colors.grey[200],
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: AutoSizeText(
                    'País *',
                    style: TextStyle(
                        fontFamily: 'Boonbaan',
                        fontSize: 18,
                        color: Colors.grey[700]),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                  ),
                  subtitle: Container(
                    color: Colors.grey[100],
                    padding: EdgeInsets.all(5),
                    child: CountryPicker(
                      dense: false,
                      showFlag: true,
                      showDialingCode: false,
                      showName: true,
                      showCurrency: false,
                      showCurrencyISO: false,
                      onChanged: (Country country) {
                        setState(() {
                          _selected = country;
                        });
                      },
                      selectedCountry: _selected,
                    ),
                  ),
                )
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: 5),
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
                  OMIcons.personAdd,
                  color: Colors.white,
                ),
                AutoSizeText(
                  ' Registrarte ',
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

class RadiobuttonGender extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}

class RadioButtonWidget extends State {
  String radioItem = '';

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: AutoSizeText(
            'Género *',
            style: TextStyle(
                fontFamily: 'Boonbaan', fontSize: 18, color: Colors.grey[700]),
            textAlign: TextAlign.start,
            maxLines: 2,
          ),
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Hombre'),
          value: 'man',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Mujer'),
          value: 'women',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
      ],
    );
  }
}
