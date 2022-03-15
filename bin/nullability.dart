class NullableOzellikliSinif {
  String isim;
  String? ikinciIsim;
  final String soyIsim;
  // this.ikinciIsim = null ile this.ikinciIsim aynı ifadedir.
  NullableOzellikliSinif(this.isim, this.soyIsim, {this.ikinciIsim});

  @override
  String toString() {
    //Özgür null Gümüş yazımını engellemek için.
    if (ikinciIsim == null) {
      return '$isim $soyIsim';
    }
    return '$isim $ikinciIsim $soyIsim';
  }
}

void main() {
  int? sayi;
  print('sayi değişkeni: $sayi');
  sayi = 5;
  print('sayi değişkeni: $sayi');
  NullableOzellikliSinif ozgurHoca = NullableOzellikliSinif('Özgür', 'Gümüş');
  print(ozgurHoca);
}
