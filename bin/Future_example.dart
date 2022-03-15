import 'dart:async';

void main() {
  print('ben asenkron değilim');
  sayAsync();
  print('ben 3. print fonksiyonuyum');

  /*çıktı:
  
  ben asenkron değilim
  ben 3. print fonksiyonuyum
  ben asenkronum
  
  
  */
}

Future<void> sayAsync() async {
  //2 saniye bekler (await olduğu için)
  await Future.delayed(Duration(seconds: 2));
  //10 saniye beklemez (await yok)
  Future.delayed(Duration(seconds: 10));
  print('ben asenkronum');
}
