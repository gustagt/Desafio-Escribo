import 'package:bonfire/bonfire.dart';
import 'package:desafio2/packman_sprite_sheet.dart';
import 'package:desafio2/packMan.dart';
import 'package:desafio2/poder.dart';
import 'package:desafio2/pontos.dart';
import 'package:flutter/material.dart';

import 'fantasma.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BonfireTiledWidget(
        joystick: Joystick(
          keyboardConfig: KeyboardConfig(),
          directional: JoystickDirectional(),
        ),
        map: TiledWorldMap('mapa1.tmj', objectsBuilder: {
          'fantasma': (properties) => Fantasma(properties.position),
          'pontos': (properties) => Pontos(properties.position),
          'poder': (properties) => Poder(properties.position),
        }),
        player: PackMan(Vector2(16 + 16, 23 * 16)),
        showCollisionArea: false,
        cameraConfig: CameraConfig(
          moveOnlyMapArea: true,
        ),
      ),
    );
  }
}
