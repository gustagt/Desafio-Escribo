import 'package:bonfire/bonfire.dart';
import 'package:desafio2/fantasma.dart';
import 'package:desafio2/fantasma_morrivel.dart';
import 'package:desafio2/packman_sprite_sheet.dart';
import 'dart:async';
import 'package:desafio2/pontos.dart';

class PackMan extends SimplePlayer with ObjectCollision {
  static int pontos = 0;
  static int poder = 0;
  int vida= 3;
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

    if(component is Fantasma) {
      if(poder == 0) {
        vida--;
        position = Vector2(32, 23 * 16);
      }else{
        //estao travando se matar mais de um
        component.position = Vector2(13*16, 24*16);
      }
    }
    if(vida<=0){
      removeFromParent();
      pontos = 0;
    }
    if(component is FantasmaMorrivel) {
      component.position = absoluteCenter;
    }

    return super.onCollision(component, active);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
