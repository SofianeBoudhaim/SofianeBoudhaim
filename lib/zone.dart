import 'dart:math';
import 'package:simulator_creator/aiguille.dart';
import 'package:simulator_creator/carre.dart';

class Zone {
  String numero = "";
  Point pDebut = const Point(0, 0);
  Point pFin = const Point(0, 0);
  Zone zoneSuiv;
  Zone zonePrec;
  Aiguille aiguilleZone;
  Carre carreZone;

  Zone(var n, [Point a, Point f]) {
    numero = n;
    pDebut = a;
    pFin = f;
  }

  String getNum() {
    return numero;
  }

  void ajouterZone(Zone z, String s) {
    if (s == "s") {
      zoneSuiv = z;
    } else {
      zonePrec = z;
    }
  }

  void ajouterCarre(Carre ca) {
    carreZone = ca;
  }

  void ajouterAiguille(Aiguille a) {
    aiguilleZone = a;
  }

  bool hasCarre() {
    // bool res = (carreZone != null ? true : false);
    return (carreZone != null);
  }

  bool hasNextZone() {
    // bool res = zoneSuiv != null  true : false;
    return (zoneSuiv != null);
  }

  bool hasPreviousZone() {
    // pense a faire la meme chose que haseCarre ou hesNextZonz
    // bool res;
    // res = (zonePrec != null ? true : false);
    bool res = (zonePrec != null);
    return res;
  }

  bool hasAiguille() {
    // bool res;
    // aiguilleZone != null  res = true : res = false;
    // return res;
    return (aiguilleZone != null);
  }

  Zone getZoneSuiv() {
    return zoneSuiv;
  }

  String afficherZone() {
    String res = "----z$numero---- ";
    return res;
  }

  String afficherZones() {
    String res = "";
    Zone temp = this;
    res = res + temp.afficherZone();
    if (temp.hasCarre()) {
      res = res + temp.carreZone.afficherCarre();
    }

    while (temp.hasNextZone()) {
      temp = temp.getZoneSuiv();
      res = res + temp.afficherZone();
      if (temp.hasCarre()) {
        res = res + temp.carreZone.afficherCarre();
      }
    }
    return res;
  }
}
