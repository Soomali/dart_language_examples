//programı çalıştırdığımızda main fonksiyonunun içi çalışır.
void main() {
  int s1 = 1;
  final s2 = 2; //tipi int olarak belirlenmiştir. int yazmaya gerek yok.
  s1 = 5;
  //hata verir çünkü final (son halinde) bir değişken
  // s2 = 5;

  //lambda fonksiyonlar
  var isimsiz = () {
    print('isimsiz fonksiyon içi');
  };
  isimsiz();
  //fonksiyonlar parametre olarak başka fonksiyonlara verilebilirler.(lambda fonksiyonlar dahil)
  sonucYazdir((p0, p1) {
    return p0 * p1;
  }, 3, 5);

  sonucYazdir((p0, p1) {
    return p0 + p1;
  }, 3, 5);
}

/*

Dart dilinde fonksiyon tanımı:
[geri dönüş tipi] [fonksiyon ismi]([parametreler]) {}
int çarp(int s1,int s2) {
  return s1 * s2;
}

!!önemli!!
fonksiyonlar ve sınıflar fonksiyonları parametre olarak alabilirler.
örnek:
*/

void sonucYazdir(int Function(int, int) islem, int s1, int s2) {
  //verilen fonksiyonu çalıştırır ve sonucunu sayi değişkenine atar.
  final sayi = islem(s1, s2);
  //sayi değişkenini yazdırır.
  print('işlem sonucu: $sayi');
}
