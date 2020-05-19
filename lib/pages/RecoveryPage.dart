import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecodeasapp/utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class RecoveryPage extends StatefulWidget {
  @override
  _RecoveryPageState createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Recuperar cuenta'),
      ),
      body: SingleChildScrollView(
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
                            'assets/images/question.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: AutoSizeText(
                            'Recuperar cuenta',
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
                            '¿No recuerdas tu contraseña?',
                            style: TextStyle(
                              fontFamily: 'Boonbaan',
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                          ),
                        ),
                        Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                return value.contains('@')
                                    ? 'No ha utilizado el @'
                                    : null;
                              },
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 15, bottom: 10),
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
                                  OMIcons.send,
                                  color: Colors.white,
                                ),
                                AutoSizeText(
                                  ' Enviar ',
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
            ],
          ),
        ),
      ),
    );
  }
}
