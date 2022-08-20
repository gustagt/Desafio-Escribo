import 'package:bonfire/bonfire.dart';
import 'package:desafio2/packMan.dart';
import 'package:desafio2/pontos_sprite_sheet.dart';

class Pontos extends SimpleEnemy with ObjectCollision {
  bool _isPlayerClose = false;

  Pontos(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
              idleRight: PontosSpriteSheet.pontosIdleRight,
              runRight: PontosSpriteSheet.pontosRunRight,
            ),
            size: Vector2(16, 16)) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 1,align:Vector2(6,6)
      )
    ]));
  }

  @override
  void update(double dt) {
    seeComponentType<PackMan>(
        observed: (player) {
          if (!_isPlayerClose) {
            _isPlayerClose = true;
            removeFromParent();
            PackMan.pontos += 5;
          }
        },
        notObserved: () {
          _isPlayerClose = false;
        },
        radiusVision: 12);
    super.update(dt);
  }
}
