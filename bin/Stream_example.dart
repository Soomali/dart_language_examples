import 'dart:async';

List<String> liste = ['a', 'b', 'c', 'd', 'e', 'f'];

//bir stream'e veri eklemek için kullanılan yapı.
final StreamController streamController = StreamController();

void addIntegers() async {
  //2 saniye beklenip stream'e veri eklenir
  for (var i = 0; i < liste.length; i++) {
    //2 saniye bekle(await var)
    await Future.delayed(Duration(seconds: 2));
    streamController.add(liste[i]);
  }
}

void main() {
  addIntegers();
  streamController.stream.listen((event) {
    print('$event kontolcüsü olan stream yapısından geldi');
  });

  //bu şekilde bir stream oluşturulabilir. genel olarak streamler stream controller ile kullanılırlar.
  Stream.fromIterable([0, 1, 2, 3, 4, 5, 6]).listen((event) {
    print('$event kontrolcüsü olmayan stream yapısından geldi.');
  });
}
