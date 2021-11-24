import 'dart:math';

class Aiguille {
  var numero = "";
  int position = 0;
  Point arrivee = const Point(0, 0);
  Point fin = const Point(0, 0);

  Aiguille(var n, int p, Point a, Point f) {
    numero = n;
    if (p == 0 || p == 1) {
      position = p;
    }
    arrivee = a;
    fin = f;
  }

  String getNum() {
    return numero;
  }

  int getPos() {
    return position;
  }

  String nomPosition() {
    if (position == 0) {
      return "gauche";
    } else {
      return "droite";
    }
  }
}
