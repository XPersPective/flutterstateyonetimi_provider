//StWsCounter.dart


import '../../Base/StWsBase.dart';
import 'OpStWsCounter.dart';

///isimlendirme kuralları:
///Her sınıf önce kendi ön ekini alır sonra alt sınıfın ön ekini alır ...tekrar tekrar
///Önekler:
///Ws : Widget single : sayfa içinde kullanılan widgetler
///Wp : widget page : sayfa widgetleri
///St :  State : state/durum içeren sınıflar
///Md : Model
///Mx : Mixin
///..Base : .. aite base sınıf
///Ac : App common : ugulamanın ortal statiklerini içeren sınıf
///

///Örnek: WsCounter
///StWsCounter :  WsCounter widgetine ait state sınıfı
///OpStWsCounter :WsCounter widgetine ait StWsCounter sınıfına ait Operasyon sınıfı
///MdStWsCounter : StWsCounter sınıfına ait model sınıfı

///senaryo:
///  state nesnesine bir talep gelir-gelmez hemen state kendisini veri hazır değil konumuna alır. hasdata= false.(burada succes in önemi yoktur)
///  istenen veri state operasyonu(StOp...) tarafından yerine getirilir getirilmez state kendisini hasdata=true veri hazır konumuna alır ve ayrıca
/// başarılı bir şekilde gerçekleşmişse succes=true ya,  başarısız ise succes=false a alır. bu atamalar tek bir setNhasdata (bool hasdata, [succes=ture]) ile yapılır.succesin set metodu yokur.
/// ayrıca succes varsayıılan olarak true dir.
/// (try{ sacces=ture} catch {sacces=false, hasdata=true}
/// kısaca state set eden metod yapımız idealde şöyle olmalı
/// statetimiz
///   int _count;
/// int get count =>_count;
///
/// dynamic _error;
/// dynamic get error => _error;
///
/// setstate metodumuz
/// setState(int value){
///
///    setNhasdata(false);
/// try{
///    _count =value;
/// setNhasdata(true);//saccess varsayılan olarak true dir yazmaya gerek yok
///
/// }catch{
///  _error = "Getirilemedi yada gösterilmek istenen mesaj";
/// setNhasdata(true,false);
/// }
///
/// }
/// setNhasdata: state i kullanan widgetlere statin değiştiğini haber verir bu sayede widgetler kendilerini yeniden oluşurur.
///  setQhasdata ise sessiz bir şekilde state i günceller.söz konusu stati dinleyen widgetlere state deki değişim haber verilmez. widgetler kendilerini yeniden oluşturmaz.

///hasdata: state verisinin hazır olup/var olup olmadığını haber vermerkten sorumlu.
///sacces : istenen verinin düzgün gelip gelmediğinden sorumlu.Talep edilen veri gelmiş (hasdata=true) fakat try catch te hata olmuş olabilir(success=false durumu)

///her state StWsBase den extends almak zorundadir.
/// state deki değişim için gerekli işler statin op si tarafından gerekleştirilir.Basit değişimler hariç state metodaları yalın olmalıdır.
class StWsCounter extends StWsBase {
  final _op = OpStWsCounter();

  int _count;
  int get count => _count;

  ///State ilk oluşturulduğunda yalnızca bir defa çağrılacak olan metod.
  ///state nin ihtiyaç duyduğu ilk değerler load metodu ile genelde sharedpreften, veritabanından yada doğrudan verilerek state e yuklenir.
  void load() {
    setQhasdata(false);
    try {
      _count = 0;
      setQhasdata(true);
    } catch (e) {
      print("Hata: load" + e.toString());
      setQhasdata(true, false);
    }
  }

  void setCount(int value)  {
    setNhasdata(false);
    try {
      _count = value;
      setNhasdata(true);
    } catch (e) {
      print("Hata:" + e.toString());
      setNhasdata(true, false);
    }
  }

  setArtir() {
  //  setNhasdata(false);// yeni state değeri elde etmek bekleyen bir işlemi gerektirmiyor yani Future değil! o yüzden setNhasdata(false); gerekli değil. yazılmaz!

    try {
      _count = _count+1;
      setNhasdata(true);
    } catch (e) {
      print("Hata:" + e.toString());
      setNhasdata(true, false);
    }
  }

  Future<void> setAzalt() async {
 /// yeni state değeri elde etmek bekleyen bir işlemi gerektiriyor yani Future ! o yüzden setNhasdata(false); gerekli olabilir. genel kabulum yazılır!
 setNhasdata(false);
    try {
      await Future.delayed(Duration(seconds: 2));
      _count = _count - 1;
      setNhasdata(true);
    } catch (e) {
      print("Hata:" + e.toString());
      setNhasdata(true, false);
    }
  }

  ///State sınıfı yalın bir arayuze sahip olmalıdır.State in değişimi için gerekli işler genel kural olarak statin kendi
  ///Operasyon sınıfı(bu örnekte StOpWsConter) tarafından gerçekletirilmelidir.
  Future<void> setSimpleOpYuzArtir() async {
    setNhasdata(false);

    try {
      _count = await _op.setSimpleOpYuzArtir(_count);
      setNhasdata(true);
    } catch (e) {
      print("Hata:" + e.toString());
      setNhasdata(true, false);
    }
  }
}
