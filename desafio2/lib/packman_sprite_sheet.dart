import 'package:bonfire/bonfire.dart';

class PackManSpriteSheet {
  static Future<SpriteAnimation> get packManIdleLeft => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 16),
    ),

  );

  static Future<SpriteAnimation> get packManIdleRight => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 0),
    ),

  );

  static Future<SpriteAnimation> get packManIdleUp => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 32),
    ),

  );

  static Future<SpriteAnimation> get packManIdleDown => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 48),
    ),

  );

  static Future<SpriteAnimation> get packManRunLeft => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 16),
    ),

  );

  static Future<SpriteAnimation> get packManRunRight => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 0),
    ),

  );

  static Future<SpriteAnimation> get packManRunUp => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 32),
    ),

  );

  static Future<SpriteAnimation> get packManRunDown => SpriteAnimation.load(
    'packman1.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.15,
      textureSize: Vector2(16, 16),
      texturePosition: Vector2(0, 48),
    ),

  );
}
