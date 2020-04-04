 //MxWsButton.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternewpatter/Ws/WsCounter/StWsCounter.dart';
import 'package:provider/provider.dart';

mixin MxWsButton {

  Widget mxWsButtonArtir(BuildContext context){
        final state = Provider.of<StWsCounter>(context);
  return RaisedButton(
      child: !state.hasdata ? Text("Pasif") : Icon(Icons.add),
      onPressed: !state.hasdata ? null : () => state.setArtir(),
    );

  }

  Widget mxWsButtonAzalt( BuildContext context){
        final state = Provider.of<StWsCounter>(context);
  return RaisedButton(
      child: !state.hasdata ? Text("Pasif") : Icon(Icons.remove),
      onPressed: !state.hasdata ? null : () => state.setAzalt(),
    );

  }
 
 

}