import 'package:bonfire/bonfire.dart';

class FantasmaMorrivelSpriteSheet {
  static Future<SpriteAnimation> get fantasmaMorrivelIdleLeft => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(0, 22),
        ),
      );

  static Future<SpriteAnimation> get fantasmaMorrivelIdleRight => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(22, 22),
        ),
      );

  static Future<SpriteAnimation> get fantasmaMorrivelIdleDown => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(43, 22),
        ),
      );

  static Future<SpriteAnimation> get fantasmaMorrivelIdleUp => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(64, 22),
        ),
      );
}
