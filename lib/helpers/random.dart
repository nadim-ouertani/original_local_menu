import "dart:math";

String randomThings() {
  var list = [
    'Yummy!',
    'Buy it!',
    'Get it now!',
    'Wow!',
    'Love it!',
    'What do you think?',
    'Ummm',
    'Tasty'
  ];
  return getRandomElement(list);
}

T getRandomElement<T>(List<T> list) {
  final random = new Random();
  var i = random.nextInt(list.length);
  return list[i];
}
