import 'package:bonfire/bonfire.dart';
import 'package:flutter/widgets.dart';
import 'package:pacman/player/pacplayer.dart';

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);
  final double tileSize = 32;

  @override
  Widget build(BuildContext context) {
    // textDirection:
    // TextDirection.ltr;
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
        keyboardConfig: KeyboardConfig(
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
      ),
      map: TiledWorldMap('map/pacman_map.json',
          forceTileSize: Size(tileSize, tileSize)),
      player: PacPlayer(),
      showCollisionArea: false,
    );
  }
}
