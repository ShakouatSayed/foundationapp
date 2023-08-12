import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  // final Color color;
  final Color iconColor;
  final Color color;
  const IconAndTextWidget({Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,
          size: Dimensions.iconSize24,),
        SizedBox(width: Dimensions.height10/2),
        SmallText(text: text,
           color: color
        ),
      ],
    );
  }
}
