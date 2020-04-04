//RunApp.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Wp/WpHome.dart';
import 'Ws/WsCounter/StWsCounter.dart';

class RunApp extends StatelessWidget {
  const RunApp( {Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:    ChangeNotifierProvider (
        create: (_) => StWsCounter()..load(),
        child:WpHome(),
   
      ),
    );
  }
}