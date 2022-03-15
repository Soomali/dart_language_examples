//sınıf tanımı bu şekildedir:
class Sinif {}

//sınıf özellikleri bu şekilde verilebilir:
class Insan {
  String isim;
  //final olarak tanımlanan özellikler constructorlarda verilmek zorundadır.
  final String soyIsim;

  //Bu yapi pythondaki
  //def __init__(self,isim,soyIsım):
  //  self.isim = isim
  //  self.soyIsım = soyIsım
  //yapısı ile ve javadaki
  //
  //public Insan(String isim,String soyIsım){
  //  this.isim = isim;
  //  this.soyIsım = soyIsım;
  //}
  //yapısına denk gelmektedir.
  Insan(this.isim, this.soyIsim);

  //ayrıca isimlendirilmiş yapıcılarda farklı amaçlar için kullanılabilir
  Insan.ikiIsimli(this.isim, String ikinciIsim, this.soyIsim) {
    //this kullanılmasına gerek yok.
    //aksini belirtmediğimiz sürece sınıfın içerisinde kullanacağımız isim adlı değişkenler
    //sınıfın isim adlı özelliğini belirtir.
    isim += ikinciIsim;
  }
  //duruma bağlı parametreler sınıflara  ve fonksiyonlara verilebilir. bunlara named parameters (isimli parametreler) denir
  Insan.namedParameter(this.isim, this.soyIsim, {String ikinciIsim = ''}) {
    isim += ikinciIsim;
  }
  //bu fonksiyon tüm sınıflarda vardır ve print(sınıf) denildiği zaman veya
  //string bir değeri  'sınıfımız:$sınıf' belirtirken çağrılır.
  @override
  String toString() {
    return '$isim $soyIsim';
  }
}

void main() {
  Insan vecdiHoca = Insan('Vecdi', 'Aytaç');
  Insan emineHoca = Insan.ikiIsimli('Emine', ' Mine', 'Sezer');
  Insan muratHoca =
      Insan.namedParameter('Murat', 'Ünalır', ikinciIsim: ' Osman');

  //print('$vecdiHoca') veya print(vecdiHoca) ile aynı
  print(vecdiHoca.toString());
  print(emineHoca);
  print('$muratHoca');
}
