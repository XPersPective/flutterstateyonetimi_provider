//WsCounter.dart


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'StWsCounter.dart';
import '../../AppTest/AppTest.dart';
class WsCounter extends StatelessWidget {
    WsCounter({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
     AppTest.setwidgetA();
     
  final state = Provider.of<StWsCounter>(context);

    return Container ( margin: EdgeInsets.all(5),
       padding: EdgeInsets.all(20),color: Colors.red.shade100 ,child:Column(children: <Widget>[
Text("WsCounter", style:TextStyle(fontSize: 18,) ),
 !state.hasdata ? Container(width: 20,height: 20, child: CircularProgressIndicator()):
         !state.success ? Text("Bir hata oluştu"):
              Container(
                child: Text("Güncel Sayi : " + state.count.toString()),
              ),
              ],),);
 
}
}