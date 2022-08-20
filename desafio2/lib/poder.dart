import 'package:bonfire/bonfire.dart';
import 'package:desafio2/packMan.dart';
import 'package:desafio2/poder_sprite_sheet.dart';

import 'timers.dart';

class Poder extends SimpleEnemy with ObjectCollision {
  bool _isPlayerClose = false;
  Poder(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
              idleRight: PoderSpriteSheet.poderIdleRight,
              runRight: PoderSpriteSheet.poderRunRight,
            ),
            size: Vector2(16, 16)) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 2,align: Vector2(6,6)
      )
    ]));
  }

  @override
  void update(double dt) {
    seeComponentType<PackMan>(
        observed: (player) {
          if (!_isPlayerClose) {
            removeFromParent();
            PackMan.pontos += 10;
            PackMan.poder = 1;
            Timers.time();
          }
        },
        notObserved: () {
          _isPlayerClose = false;
        },
        radiusVision: 12);
    super.update(dt);
  }


}
