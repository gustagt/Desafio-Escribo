import 'package:bonfire/bonfire.dart';
import 'package:desafio2/fantasma_sprite_sheet.dart';

class Fantasma extends SimpleEnemy with ObjectCollision {
  Fantasma(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
                idleRight: FantasmaSpriteSheet.fantasmaIdleRight,
                idleDown: FantasmaSpriteSheet.fantasmaIdleDown,
                idleUp: FantasmaSpriteSheet.fantasmaIdleUp,
                idleLeft: FantasmaSpriteSheet.fantasmaIdleLeft,
                runRight: FantasmaSpriteSheet.fantasmaIdleRight,
                runLeft: FantasmaSpriteSheet.fantasmaIdleLeft,
                runDown: FantasmaSpriteSheet.fantasmaIdleDown,
                runUp: FantasmaSpriteSheet.fantasmaIdleUp),
            size: Vector2(16, 16),
            speed: 40) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 6,
      ),
    ]), );
  }


  @override
  void update(double dt) {
    seeAndMoveToPlayer(
        closePlayer: (packMan) {}, radiusVision: 16 * 3, margin: 0);
    super.update(dt);
  }
}
