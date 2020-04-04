 //MxWsList.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin MxWsList {
  ListView mxWsListeGetir(BuildContext context, List<int> ciftSayilar) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8.0),
        itemCount: ciftSayilar.length,
        itemBuilder: (BuildContext context, sira) {
          return Text(ciftSayilar[sira].toString());
        });
  }
}
