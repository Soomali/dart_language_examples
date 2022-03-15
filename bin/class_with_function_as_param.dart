class Ogretmen {
  //sınıflar fonksiyonları parametre olarak alabilir.
  //bunun flutterdaki en benzer örneği onTap gibi widgetlara verdiğimiz parametrelerdir.
  //onTap parametresi aslen void Function() onTap; şeklinde tanımlanmış bir sınıf özelliğidir.
  final int Function() puanla;

  Ogretmen(this.puanla);
  void dersVer() {
    print('öğretmen ders veriyor');
    int puan = puanla();
    print('öğretmen $puan puan verdi');
    print('öğretmen derse devam ediyor');
  }
}

void main() {
  // () => şeklindeki lambda fonksiyonlar direk işaret ettiği değeri döndürür.
  // bu örnekte () => 0 ifadesinin anlamı bu fonksyion çağrıldığı zaman 0 değerinin döndürüleceğidir.
  final vecdiHoca = Ogretmen(() => 0);
  vecdiHoca.dersVer();
}
