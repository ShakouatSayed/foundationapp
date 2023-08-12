import 'package:flutter/material.dart';
import 'package:foundationapp/utils/colors.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/icon_and_text_widget.dart';
import 'package:foundationapp/widget/small_text.dart';
class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        //comment section
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(Icons.star,
                    color: AppColors.mainColor, size: 15);
              }),
            ),
            SizedBox(width: 10),
            SmallText(text: "4.5",color: Colors.teal,),
            SizedBox(width: 10),
            SmallText(text: "1287",color: Colors.teal,),
            SizedBox(width: 10),
            SmallText(text: "Comments",color: Colors.teal,),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        //time and distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.date_range_sharp,
                text: "22-8-2023",color: Colors.teal,
                iconColor: Colors.tealAccent),

            IconAndTextWidget(
                icon: Icons.timeline,
                text: "10:00AM-05:00PM ",color: Colors.teal,
                iconColor: Colors.teal),

            IconAndTextWidget(
                icon: Icons.place,
                text: "Dhanbari",color: Colors.teal,
                iconColor: Colors.teal),
          ],
        )
      ],
    );
  }
}

