import 'package:bonfire/bonfire.dart';
import 'package:flutter/widgets.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);
  final double tileSize = 32;

  @override
  Widget build(BuildContext context) {
    // textDirection:
    // TextDirection.ltr;
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap('map/pacman_map.json',
          forceTileSize: Size(tileSize, tileSize)),
    );
  }
}
