import 'package:bonfire/bonfire.dart';
import 'package:pacman/player/player_sprite.dart';
import '../main.dart';
// import '../abilities/slash_ability_sprite.dart';

class PacPlayer extends SimplePlayer with ObjectCollision, JoystickListener {
  PacPlayer()
      : super(
          position: Vector2(
            tileSize * 15,
            tileSize * 30,
          ),
          size: Vector2(
            tileSize,
            tileSize,
          ),
          animation: SimpleDirectionAnimation(
            idleRight: PlayerSprite.idleRight,
            runRight: PlayerSprite.runRight,
            idleLeft: PlayerSprite.idleLeft,
            runLeft: PlayerSprite.runLeft,
            idleUp: PlayerSprite.idleUp,
            idleDown: PlayerSprite.idleDown,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(44, 44),
            align: Vector2(-8, -8),
          ),
        ],
      ),
    );
  }

  // @override
  // void render(Canvas canvas) {
  //   drawDefaultLifeBar(
  //     canvas,
  //     borderWidth: 1,
  //     height: 2,
  //     align: const Offset(0, 0),
  //   );
  //   super.render(canvas);
  // }

  // @override
  // void joystickAction(JoystickActionEvent event) {
  //   if (hasGameRef && !gameRef.camera.isMoving) {
  //     if (event.event == ActionEvent.DOWN && event.id == 1) {
  //       simpleAttackMelee(
  //         damage: 10,
  //         size: Vector2(40, 40),
  //         animationRight: SlashAbilitySprite.right,
  //         animationDown: SlashAbilitySprite.down,
  //         animationLeft: SlashAbilitySprite.left,
  //         animationUp: SlashAbilitySprite.up,
  //         direction: lastDirection,
  //       );
  //     }
  //   }
  // }

  // @override
  // void die() async {
  //   removeFromParent();
  //   final sprite = await KnightSprite.die;
  //   gameRef.add(
  //     GameDecoration.withSprite(
  //       sprite: sprite.getSprite(),
  //       position: Vector2(
  //         position.x,
  //         position.y,
  //       ),
  //       size: Vector2.all(30),
  //     ),
  //   );
  //   super.die();
  // }
}
