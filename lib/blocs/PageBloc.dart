

import 'package:rxdart/rxdart.dart';

class PageBloc {
  final _pageStream = BehaviorSubject<int>();
  Stream<int> get getPageStream => _pageStream.stream;

  void dispose(){
    if( !_pageStream.isClosed ){
      _pageStream.close();
    }
  }

  void setPageIndex(int index) {
    _pageStream.sink.add( index );
  }
}