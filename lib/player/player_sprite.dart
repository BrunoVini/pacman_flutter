import 'package:bonfire/bonfire.dart';

class PlayerSprite {
  // static Future<SpriteAnimation> _sequenceImage(String filename) {
  //   return SpriteAnimation.load(
  //       'pacman_sprite.png',
  //       SpriteAnimationData.sequenced(
  //         amount: 5,
  //         stepTime: 0.2,
  //         loop: true,
  //         textureSize: Vector2(32, 32),
  //         texturePosition: Vector2(0, 0),
  //       ));
  // }

  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
      'pacman_sprite.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.3,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ));

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
      'pacman_sprite.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.3,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ));

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
      'pacman_sprite_left.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.3,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ));

  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
      'pacman_sprite_left.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.3,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ));

  static Future<SpriteAnimation> get idleUp => SpriteAnimation.load(
      'pacman_sprite_up.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.3,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ));

  static Future<SpriteAnimation> get idleDown => SpriteAnimation.load(
      'pacman_sprite_down.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        stepTime: 0.3,
        textureSize: Vector2(32, 32),
        texturePosition: Vector2(0, 0),
      ));
}
