 //MxOpSayiIslemleri.dart

mixin MxOpSayiIslemleri {
  List<int> mxOpCiftSayilariGetir(int sayi) {
    var ciftSayilar = <int>[];

    for (int i=0; i<=sayi; i++) if (i % 2 == 0) ciftSayilar.add(i);
    return ciftSayilar;
  }

}
