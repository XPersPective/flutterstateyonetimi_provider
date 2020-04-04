//StWsBase.dart

import 'package:flutter/foundation.dart';

class StWsBase with ChangeNotifier {
  bool _hasdata = false;
  bool _success = false;
  bool get hasdata => _hasdata;
  bool get success => _success;


  setNhasdata(bool hasdata, [ bool success=true]){
    _hasdata = hasdata;
    _success = success;
    notifyListeners();
  }

  setQhasdata(bool hasdata, [ bool success=true]){
     _hasdata = hasdata;
     _success = success;
  } 

}