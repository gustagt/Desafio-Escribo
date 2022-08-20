import 'package:bonfire/bonfire.dart';

class PontosSpriteSheet{
  static Future<SpriteAnimation> get pontosIdleRight => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(80, 0),
    ),
  );
  static Future<SpriteAnimation> get pontosRunRight => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(80, 0),
    ),
  );
}