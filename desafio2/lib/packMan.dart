import 'package:bonfire/bonfire.dart';
import 'package:desafio2/fantasma.dart';
import 'package:desafio2/packman_sprite_sheet.dart';
import 'package:flutter/material.dart';

class PackMan extends SimplePlayer with ObjectCollision {

  static int pontos = 0;
  static int poder = 0;
  int vida = 3;
  final bool _isPlayerClose = false;

  PackMan(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
                idleRight: PackManSpriteSheet.packManIdleRight,
                idleDown: PackManSpriteSheet.packManIdleDown,
                idleUp: PackManSpriteSheet.packManIdleUp,
                idleLeft: PackManSpriteSheet.packManIdleLeft,
                runRight: PackManSpriteSheet.packManRunRight,
                runLeft: PackManSpriteSheet.packManRunLeft,
                runDown: PackManSpriteSheet.packManRunDown,
                runUp: PackManSpriteSheet.packManRunUp),
            speed: 60,
            size: Vector2(12, 12)) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 6,
      )
    ]));
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is Fantasma) {
       if(poder==1) {
         component.position = Vector2(13 * 16, 24 * 16);
       }
    }

    return super.onCollision(component, active);
  }//consertar o dialog


  void _showDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text('Fim de jogo você fez $pontos pontos'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    pontos = 0;
                  },
                  child: const Text('ok'))
            ],
          );
        });
  }


  @override
  void update(double dt) {
    seeComponentType<Fantasma>(observed: (enemy){
      if (!_isPlayerClose){
        if (poder == 0) {
          vida--;
          position = Vector2(32, 23 * 16);
        }
        if (vida <= 0) {
          removeFromParent();
          _showDialog();
        }
      }
    },radiusVision: 8);
    super.update(dt);
  }

}
