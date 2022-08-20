import 'package:bonfire/bonfire.dart';

class FantasmaSpriteSheet {

  static Future<SpriteAnimation> get fantasmaIdleLeft =>  SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(169, 43),
        ),
      );

  static Future<SpriteAnimation> get fantasmaIdleRight => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(190, 43),
        ),
      );

  static Future<SpriteAnimation> get fantasmaIdleDown => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(211, 43),
        ),
      );

  static Future<SpriteAnimation> get fantasmaIdleUp => SpriteAnimation.load(
        'tileset.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 1,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(232, 43),
        ),
      );


}
