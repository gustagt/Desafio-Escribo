import 'package:bonfire/bonfire.dart';
import 'package:desafio2/fantasma_morrivel_sprite_sheet.dart';
import 'package:desafio2/packMan.dart';
import 'package:desafio2/poder_sprite_sheet.dart';
import 'package:desafio2/pontos_sprite_sheet.dart';
import 'dart:async';


class Poder extends SimpleEnemy with ObjectCollision {



  Poder(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
              idleRight: PoderSpriteSheet.poderIdleRight,
              runRight:PoderSpriteSheet.poderRunRight,),
            size: Vector2(16, 16)) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 2,
      )
    ]));
  }

  @override
  bool onCollision(GameComponent component, bool active){

    if(component is Player){
       removeFromParent();
      PackMan.pontos += 10;
      PackMan.poder = 1;
     //timer
    }

    return super.onCollision(component, active);
  }

}
