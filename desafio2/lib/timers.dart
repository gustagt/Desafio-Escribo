import 'dart:async';

import 'package:desafio2/packMan.dart';

class Timers {
  static void time() {
    Timer(const Duration(seconds: 5), () {
      PackMan.poder = 0;
    });
  }
}
