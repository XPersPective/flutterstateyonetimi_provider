
//WpHome.dart

import 'package:flutter/material.dart';
import 'package:flutternewpatter/Mx/MxOp/MxOpSayiIslemleri.dart';
import 'package:flutternewpatter/Mx/MxWs/MxWsButton.dart';
import 'package:flutternewpatter/Mx/MxWs/MxWsListe.dart';
import 'package:flutternewpatter/Ws/WsCounter/StWsCounter.dart';
import 'package:flutternewpatter/Ws/WsCounter/WsCounter.dart';
import 'package:flutternewpatter/Ws/WsWidget.dart';
import 'package:provider/provider.dart';
import '../AppTest/AppTest.dart';

class WpHome extends StatelessWidget
    with MxWsButton, MxWsList, MxOpSayiIslemleri {
  WpHome({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    AppTest.setwidgetG();
    return Scaffold(
        appBar: AppBar(
          title: Text("Provider State Yönetimi 1"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
 
                  color: Colors.red.shade100,
                  child: WsWidget(
                    widget: (BuildContext context) {
                      final _state = Provider.of<StWsCounter>(context);
                      return Column(
                        children: <Widget>[
                          Text("Rebuild Değerleri ve state abonelikleri",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                           Text("Home  : " + AppTest.widgetG),
                          Text("WsCount : Provider.of<StWsCounter>(context) " + AppTest.widgetA),
                          Text("ListeWidget : Provider.of<StWsCounter>(context): " + AppTest.widgetB),
                          Text("Buton YuzArtir : Provider.of<StWsCounter>(context,listen:false): " + AppTest.widgetC),
                          Text("Buton Azalt :Provider.of<StWsCounter>(context): " + AppTest.widgetD),
                          Text("Buton Artir  :Provider.of<StWsCounter>(context): " + AppTest.widgetE),
                          Text("Buton Reset  :Provider.of<StWsCounter>(context): " + AppTest.widgetF),
                         
                    
                        ],
                      );
                    },
                  ),
                ),

                WsCounter(),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    color: Colors.green.shade100,
                    child: WsWidget(
                      widget: (BuildContext context) {
                        final _state = Provider.of<StWsCounter>(context);
                        AppTest.setwidgetB();

                        return Column(
                          children: <Widget>[
                            Text("ListeWidget ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: mxWsListeGetir(
                                  context, mxOpCiftSayilariGetir(_state.count)),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

//yada iş yükünü state in op sine aktararak getirebiliriz fakat bu durumda çift sayılar listesini bir "state" olarak saklamamız gerekecektir.
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: WsWidget(
                    widget: (BuildContext context) {
                      AppTest.setwidgetC();
                      final state =
                          Provider.of<StWsCounter>(context, listen: false);
                      return RaisedButton(
                        color: Colors.orange,
                        child: Text("Buton YuzArtir"),
                        onPressed: !state.hasdata
                            ? null
                            : () => state.setSimpleOpYuzArtir(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: WsWidget(
                    widget: (BuildContext context) {
                      AppTest.setwidgetD();
                      final state = Provider.of<StWsCounter>(context);
                      return RaisedButton(
                        color: Colors.green,
                        child:
                            !state.hasdata ? Text("Buton Azalt") : Text("Buton Azalt"),
                        onPressed: !state.hasdata
                            ? null
                            : () => state.setAzalt(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: WsWidget(
                    widget: (BuildContext context) {
                      AppTest.setwidgetE();
                      final state = Provider.of<StWsCounter>(context);
                      return RaisedButton(
                        color: Colors.green,
                        child:
                            !state.hasdata ? Text("Buton Artir") : Text("Buton Artir"),
                        onPressed: !state.hasdata
                            ? null
                            : () => state.setArtir(),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: WsWidget(
                    widget: (BuildContext context) {
                      AppTest.setwidgetF();
                      final state = Provider.of<StWsCounter>(context);
                      return RaisedButton(
                        color: Colors.green,
                        child:
                            !state.hasdata ? Text("Buton Reset") : Text("Buton Reset"),
                        onPressed:
                            !state.hasdata ? null : () => state.setCount(0),
                      );
                    },
                  ),
                ),
  
              ],
            ),
          ],
        ));
  }
}
