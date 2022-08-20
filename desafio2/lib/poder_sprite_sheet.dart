import 'package:bonfire/bonfire.dart';

class PoderSpriteSheet{
  static Future<SpriteAnimation> get poderIdleRight => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(80, 16),
    ),
  );
  static Future<SpriteAnimation> get poderRunRight => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(80, 16),
    ),
  );
}