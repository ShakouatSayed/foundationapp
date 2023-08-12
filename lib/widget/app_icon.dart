// import 'package:flutter/material.dart';
// import 'package:foodapp/utils/dimensions.dart';

// class AppIcon extends StatelessWidget {
//   final IconData icon;
//   final Color backgroundColor;
//   final Color iconColor;
//   final double size;
//   final double iconSize;
//   AppIcon({Key? key,
//   required this.icon,
//     this.backgroundColor = const Color(0xFFfcf4e4),
//     this.iconColor = const Color(0xFF756d54),
//     this.size = 40,
//     this.iconSize = 16,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size,
//       height: size,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(size/2),
//         color: backgroundColor,
//       ),
//       child: Icon(
//         icon,
//         color: iconColor,
//         size: iconSize,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgraoundColour;
  final Color iconColour;
  final double size;
  final double iconSize;
  const AppIcon({Key? key,
    required this.icon,
    this.backgraoundColour = Colors.grey,
    this.iconColour = Colors.white,
    this.size = 30,
    this.iconSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgraoundColour,
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconColour,
          size: Dimensions.iconSize24,
        ),
      ),
    );
  }
}

