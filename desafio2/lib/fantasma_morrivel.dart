import 'package:bonfire/bonfire.dart';
import 'package:desafio2/fantasma_sprite_sheet.dart';

import 'fantasma_morrivel_sprite_sheet.dart';

class FantasmaMorrivel extends SimpleEnemy with ObjectCollision {
//usar depois que o packman pegar o poder
  FantasmaMorrivel(Vector2 position)
      : super(
      position: position,
      animation: SimpleDirectionAnimation(
          idleRight: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleRight,
          idleDown: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleDown,
          idleUp: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleUp,
          idleLeft: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleLeft,
          runRight: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleRight,
          runLeft: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleLeft,
          runDown: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleDown,
          runUp: FantasmaMorrivelSpriteSheet.fantasmaMorrivelIdleUp),
      size: Vector2(16, 16),
      speed: 40) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(
        radius: 6,
      )
    ]));
  }

  @override
  void update(double dt) {
    //correr do player
    super.update(dt);
  }
}
