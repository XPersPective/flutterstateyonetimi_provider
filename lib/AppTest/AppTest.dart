typedef CountElement = int Function();

class AppTest {
  const AppTest();

 
    static int _widgetA = 0;
    static int _widgetB = 0;
    static int _widgetC = 0;
    static int _widgetD = 0;
    static int _widgetE = 0;
    static int _widgetF = 0;
    static int _widgetG = 0;
    static int _widgetH = 0;
    static int _widgetK = 0;
 
        static setwidgetA()=> _widgetA++;
        static setwidgetB()=> _widgetB++;
        static setwidgetC()=> _widgetC++;
        static setwidgetD()=> _widgetD++;
        static setwidgetE()=> _widgetE++;
        static setwidgetF()=> _widgetF++;
        static setwidgetG()=> _widgetG++;
        static setwidgetH()=> _widgetH++;
        static setwidgetK()=> _widgetK++;
 
 
        static String get widgetA=> _widgetA.toString();
        static String get widgetB=> _widgetB.toString();
        static String get widgetC=> _widgetC.toString();
        static String get widgetD=> _widgetD.toString();
        static String get widgetE=> _widgetE.toString();
        static String get widgetF=> _widgetF.toString();
        static String get widgetG=> _widgetG.toString();
        static String get widgetH=> _widgetH.toString();
        static String get widgetK=> _widgetK.toString();
} 



 /* 
import 'package:eyebluefilter/Ac/AcNames.dart';
import 'package:flutter/material.dart';

typedef CountElement = int Function();

class TestAppStatics {
  const TestAppStatics();
  // VALUES
  //data value
  static String _veri;
  static String _durum;
  //bounding value
  static int _countBoundingRunApp = 0;
  static int _countBoundingWpSplashScreen = 0;
  static int _countBoundingWpHome = 0;
  static int _countBoundingWpSayfa1 = 0;
  static int _countBoundingWpSayfa2 = 0;
  static int _countBoundingWpSayfa3 = 0;
  static int _countBoundingWsWidget1 = 0;
  static int _countBoundingWsWidget2 = 0;
  static int _countBoundingWsWidget3 = 0;

  //count sayfa value
  static int _countRunApp = 0;
  static int _countWpSplashScreen = 0;
  static int _countWpHome = 0;
  static int _countWpSayfa1 = 0;
  static int _countWpSayfa2 = 0;
  static int _countWpSayfa3 = 0;
  //count widget value
  static int _counWsWidget1 = 0;
  static int _counWsWidget2 = 0;
  static int _counWsWidget3 = 0;

  //DATA
  //get veri durum
  static String get veri => _veri;
  static String get durum => _durum;
  //set veridata
  static set veri(veri) => _veri = veri;
  static set durum(durum) => _durum = durum;

  //BOUNDİNG
  //get countBounding
  static int getCountBoundingRunApp() => _countBoundingRunApp;
  static int getsetCountBoundingWpSplashScreen() =>
      _countBoundingWpSplashScreen;
  static int getCountBoundingWpHome() => _countBoundingWpHome;
  static int getCountBoundingWpSayfa1() => _countBoundingWpSayfa1;
  static int getCountBoundingWpSayfa2() => _countBoundingWpSayfa2;
  static int getCountBoundingWpSayfa3() => _countBoundingWpSayfa3;
  static int getCountBoundingWsWidget1() => _countBoundingWsWidget1;
  static int getCountBoundingWsWidget2() => _countBoundingWsWidget2;
  static int getCountBoundingWsWidget3() => _countBoundingWsWidget3;
  //set countBoinding
  static setCountBoundingRunApp() => _countBoundingRunApp++;
  static setCountBoundingWpSplashScreen() => _countBoundingWpSplashScreen++;
  static setCountBoundingWpHome() => _countBoundingWpHome++;
  static setCountBoundingWpSayfa1() => _countBoundingWpSayfa1++;
  static setCountBoundingWpSayfa2() => _countBoundingWpSayfa2++;
  static setCountBoundingWpSayfa3() => _countBoundingWpSayfa3++;
  static setCountBoundingWsWidget1() => _countBoundingWsWidget1++;
  static setCountBoundingWsWidget2() => _countBoundingWsWidget2++;
  static setCountBoundingWsWidget3() => _countBoundingWsWidget3++;

  //ROUTES
  static String routeWpSplashScreen = AcNames.routeNameWpSplashScreen;
  static String routeWpHome = AcNames.routeNameWpHome;
  static String routeWpSayfa1 = AcNames.routeNameWpSayfa1;
/*   static String routeWpSayfa2 = AcNames.routeNameWpSayfa2;
  static String routeWpSayfa3 = AcNames.routeNameWpSayfa3; */

  //NAME
  static String nameRunApp = 'RunApp';
  //name Sayfa
  static String nameWpSplashScreen = AcNames.widgetUniqueNameWpSplashScreen;
  static String nameWpHome = AcNames.widgetUniqueNameWpHome;
  static String nameWpSayfa1 = AcNames.widgetUniqueNameWpSayfa1;
  // static String nameWpSayfa2 = AcNames.widgetUniqueNameWpSayfa2;
  // static String nameWpSayfa3 = AcNames.widgetUniqueNameWpSayfa3;
  //name Widgets
  static String nameWsWidget1 = AcNames.widgetUniqueNameWsWidget1;
  static String nameWsWidget2 = AcNames.widgetUniqueNameWsWidget2;
  // static String nameWsWidget3 = AcNames.widgetUniqueNameWsWidget3;
  //Page Bounding
  static const String nameBoundingRunApp = 'BoundingRunApp';
  static String nameBoundingWpSplashScreen = 'Bounding$nameWpSplashScreen';
  static String nameBoundingWpHome = 'Bounding$nameWpHome';
  static String nameBoundingWpSayfa1 = 'Bounding$nameWpSayfa1';
  // static String nameBoundingWpSayfa2 = 'Bounding$nameWpSayfa2';
  // static String nameBoundingWpSayfa3 = 'Bounding$nameWpSayfa3';
  //widget Bounding
  static String nameBoundingWsWidget1 = 'Bounding$nameWsWidget1';
  static String nameBoundingWsWidget2 = 'Bounding$nameWsWidget2';
  // static String nameBoundingWsWidget3 = 'Bounding$nameWsWidget3';
  //PAGES
  static int getCountRunApp() => _countRunApp;
  static setCountRunApp() => _countRunApp++;
  //get countSayfa
  static int getCountWpSplashScreen() => _countWpSplashScreen;
  static int getCountWpHome() => _countWpHome;
  static int getCountWpSayfa1() => _countWpSayfa1;
  static int getCountWpSayfa2() => _countWpSayfa2;
  static int getCountWpSayfa3() => _countWpSayfa3;

  // set countSayfa
  static setCountWpSplashScreen() => _countWpSplashScreen++;
  static setCountWpHome() => _countWpHome++;
  static setCountWpSayfa1() => _countWpSayfa1++;
  static setCountWpSayfa2() => _countWpSayfa2++;
  static setCountWpSayfa3() => _countWpSayfa3++;

  //WIDGET
  //get Widgetcount
  static int getCountWsWidget1() => _counWsWidget1;
  static int getCountWsWidget2() => _counWsWidget2;
  static int getCountWsWidget3() => _counWsWidget3;
  //set countWidget
  static setCountWsWidget1() => _counWsWidget1++;
  static setCountWsWidget2() => _counWsWidget2++;
  static setCountWsWidget3() => _counWsWidget3++;

//OPERATIONS---------------------------
  //PRINT
  //print Bounding
  static printBoundingRunApp() =>
      _printBoinding(nameBoundingRunApp, getCountBoundingRunApp);
  static printBoundingWpSplashScreen() => _printBoinding(
      nameBoundingWpSplashScreen, getsetCountBoundingWpSplashScreen);
  static printBoundingWpHome() =>
      _printBoinding(nameBoundingWpHome, getCountBoundingWpHome);
  static printBoundingWpSayfa1() =>
      _printBoinding(nameBoundingWpSayfa1, getCountBoundingWpSayfa1);
  // static printBoundingWpSayfa2() =>
      // _printBoinding(nameBoundingWpSayfa2, getCountBoundingWpSayfa2);
  // static printBoundingWpSayfa3() =>
  //     _printBoinding(nameBoundingWpSayfa3, getCountBoundingWpSayfa3);
  static printBoundingWsWidget1() =>
      _printBoinding(nameBoundingWsWidget1, getCountBoundingWsWidget1);
  static printBoundingWsWidget2() =>
      _printBoinding(nameBoundingWsWidget2, getCountBoundingWsWidget2);
  // static printBoundingWsWidget3() =>
  //     _printBoinding(nameBoundingWsWidget3, getCountBoundingWsWidget3);
  //print Sayfa
  static printRunApp() => _printElement(nameRunApp, getCountRunApp);

  static printWpSplashScreen() =>
      _printElement(nameWpSplashScreen, getCountWpSplashScreen);
  static printWpHome() => _printElement(nameWpHome, getCountWpHome);
  static printWpSayfa1() => _printElement(nameWpSayfa1, getCountWpSayfa1);
  // static printWpSayfa2() => _printElement(nameWpSayfa2, getCountWpSayfa2);
  // static printWpSayfa3() => _printElement(nameWpSayfa3, getCountWpSayfa3);

  //print Widget
  static printWsWidget1() => _printElement(nameWsWidget1, getCountWsWidget1);
  static printWsWidget2() => _printElement(nameWsWidget2, getCountWsWidget2);
  // static printWsWidget3() => _printElement(nameWsWidget3, getCountWsWidget3);

  // TEXT
  //Text Sayfa
  static Text textWpSplashScreen() =>
      _textElement(nameWpSplashScreen, getCountWpSplashScreen);
  static Text textWpHome() => _textElement(nameWpHome, getCountWpHome);
  static Text textWpSayfa1() => _textElement(nameWpSayfa1, getCountWpSayfa1);
  // static Text textWpSayfa2() => _textElement(nameWpSayfa2, getCountWpSayfa2);
  // static Text textWpSayfa3() => _textElement(nameWpSayfa3, getCountWpSayfa3);
  //Text Widget
  static Text textWsWidget1() => _textElement(nameWsWidget1, getCountWsWidget1);
  static Text textWsWidget2() => _textElement(nameWsWidget2, getCountWsWidget2);
  // static Text textWsWidget3() => _textElement(nameWsWidget3, getCountWsWidget3);

  //static const values
  static const TextStyle myTextStyle = TextStyle();
  static const TextStyle myTextWidgetStyle =
      TextStyle(color: Colors.black, fontSize: 18);
  static const BoxDecoration mydecorationStyle = BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.all(Radius.circular(10)));
  //iç operasyonlar için yardımcı fonksiyonlar
  static void _printElement(String nameElement, CountElement countElement) =>
      print("$nameElement: R:${countElement()} = $durum  :::V : $veri");
  static Widget _textElement(String nameElement, CountElement countElement) =>
      Text("$nameElement: R:${countElement()}= $durum  :::V : $veri",
          style: myTextWidgetStyle);
  static void _printBoinding(String nameElement, CountElement countElement) =>
      print(
          "-------------------------> $nameElement: R:${countElement()} = $durum  :::V : $veri");

  //Navigator
  static const String navPush = 'navigatorPush';
  static const String navPushNamed = 'navigatorPushNamed';
  static const String navPushReplacement = 'navPushReplacement';
  static const String navPushReplacementNamed = 'navPushReplacementNamed';
  static const String navPop = 'navPop';
}
 */