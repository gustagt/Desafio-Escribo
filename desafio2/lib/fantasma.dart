import 'package:bonfire/bonfire.dart';
import 'package:desafio2/fantasma_sprite_sheet.dart';


class Fantasma extends SimpleEnemy
    with ObjectCollision, AutomaticRandomMovement{
  SimpleDirectionAnimation? fantasmaMorrivel, fantasma;
  Sprite? teste;

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
        runUp: FantasmaSpriteSheet.fantasmaIdleUp,
      ),
      size: Vector2(16, 16),
      speed: 40) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.circle(
          radius: 6,
        ),
      ]),
    );
  }



  @override
  void update(double dt) {
    seePlayer(observed: (player) {
      seeAndMoveToPlayer(
        closePlayer: (packMan) {}, radiusVision: 16 * 5, margin: 0, );
    }, notObserved: (){
      runRandomMovement(dt, maxDistance: 5000, minDistance: 0,timeKeepStopped: 0 );
    },radiusVision: 16*5);
    super.update(dt);
  }
}
