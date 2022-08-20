import 'package:bonfire/bonfire.dart';
import 'package:desafio2/packMan.dart';
import 'package:desafio2/pontos_sprite_sheet.dart';

class Pontos extends SimpleEnemy with ObjectCollision {

  Pontos(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
              idleRight: PontosSpriteSheet.pontosIdleRight,
              runRight:PontosSpriteSheet.pontosRunRight,),
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
      PackMan.pontos += 5;
    }

    return super.onCollision(component, active);
  }
}
