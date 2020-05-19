import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecodeasapp/blocs/PageBloc.dart';
import 'package:ecodeasapp/pages/AccountPage.dart';
import 'package:ecodeasapp/pages/EcodeasPage.dart';
import 'package:ecodeasapp/pages/NewsPage.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import 'MarketPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex;
  PageBloc _currentPageBloc;

  @override
  void initState() {
    _currentPageBloc = PageBloc();
    super.initState();
  }

  @override
  void dispose() {
    _currentPageBloc.dispose();
    super.dispose();
  }
  
  void _onChangedTap( int index ) => _currentPageBloc.setPageIndex(index);

  Widget getDynamicAppBar(){
    return StreamBuilder(
      initialData: 0,
      stream: _currentPageBloc.getPageStream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {        
        switch( snapshot.data ){
          case 0:
          return _customAppBar(title: 'Ecodeas');
          break;
          case 1:
          return _customAppBar(title: 'Mercado');
          break;
          case 2:
          return _customAppBar(title: 'Noticias');
          break;
          case 3:
          return _customAppBar(title: 'Mi cuenta');
          break;
          default:
          return Container();
        }
      },
    );
  }
  AppBar _customAppBar({ @required String title }){
    return AppBar(
      title: StreamBuilder(
        initialData: 0,
        stream: _currentPageBloc.getPageStream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {   
          switch( snapshot.data ){
            case 0:
            return Text('Ecodeas');
            break;
            case 1:
            return Text('Mercado');
            break;
            case 2:
            return Text('Noticias');
            break;
            case 3:
            return Text('Mi cuenta');
            break;
            default:
            return Container();
          }
        }
      ),
    );
  }
  
  Widget getDynamicContent(){
    return StreamBuilder(
      initialData: 0,
      stream: _currentPageBloc.getPageStream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {      
        switch( snapshot.data ){
          case 0:
          return EcodeasPage();
          break;
          case 1:
          return MarketPage();
          break;
          case 2:
          return NewsPage();
          break;
          case 3:
          return AccountPage();
          break;
          default:
          return Container();
        }
      },
    );
  }
  Widget _customBottomNavigator(){
   return StreamBuilder(
      initialData: 0,
      stream: _currentPageBloc.getPageStream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {        
        return BottomNavigationBar(
          currentIndex: snapshot.data,
          selectedItemColor: Colors.white,
          onTap: _onChangedTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              title: AutoSizeText(
                'Ecodeas',
                style: TextStyle(fontFamily: 'Boonbaan', fontSize: 12, fontWeight: FontWeight.bold),
                maxLines: 1,
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(OMIcons.localMall),
              title: AutoSizeText(
                'Mercado',
                style: TextStyle(fontFamily: 'Boonbaan', fontSize: 12, fontWeight: FontWeight.bold),
                maxLines: 1,
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(OMIcons.libraryBooks),
              title: AutoSizeText(
                'Noticias',
                style: TextStyle(fontFamily: 'Boonbaan', fontSize: 12, fontWeight: FontWeight.bold),
                maxLines: 1,
              )
            ),
            BottomNavigationBarItem(
              icon: Icon(OMIcons.accountCircle),
              title: AutoSizeText(
                'Mi cuenta',
                style: TextStyle(fontFamily: 'Boonbaan', fontSize: 12, fontWeight: FontWeight.bold),
                maxLines: 1,
              )
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(title: 'Ecodeas'), 
      body: getDynamicContent(),
      bottomNavigationBar: _customBottomNavigator(), 
    );
  }
}