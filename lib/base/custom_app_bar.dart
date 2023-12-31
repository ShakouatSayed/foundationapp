import 'package:flutter/material.dart';
import 'package:foundationapp/utils/colors.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool backButtomExist;
  final Function? onBackPressed;
  const CustomAppBar({Key? key,
    required this.title,
    this.backButtomExist = true,
    this.onBackPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BigText(text: title,color:Colors.white, size: Dimensions.font26,),
      centerTitle: true,
      backgroundColor: AppColors.mainColor,
      elevation: 0,
      leading: backButtomExist ? IconButton(
          onPressed: ()=> onBackPressed != null ?
          onBackPressed!()
              :Navigator.pushReplacementNamed(context, "/initial"),
          icon: Icon(Icons.arrow_back_ios)) : SizedBox(),
    );
  }
  @override
  Size get preferredSize => Size(
    Dimensions.height10*50, Dimensions.width10*5
  );
}
