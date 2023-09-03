import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/custom_icons.dart';
import 'package:foundationapp/widget/donate_simple_widget.dart';
import 'package:foundationapp/widget/donate_widget.dart';
import 'package:foundationapp/widget/home_box2.dart';
import 'package:foundationapp/widget/intro_part.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "About", backButtomExist: false),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              IntroPage(
                  image: AssetImage("assets/images/begthree.jpg"),
                  text: "About Us",
                  text1: "Lets know about us Panchakanya Foundation"),
              SizedBox(height: Dimensions.height10),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.height20, right: Dimensions.height20),
                    child: Text(
                      "Welcome to Panchakanya Foundation",
                      style: TextStyle(
                          fontSize: Dimensions.font26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height10),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.height20, right: Dimensions.height20),
                child: BigText(
                  text: "This Foundation is established in 2021 and and "
                      "working very hard to serve "
                      "people's which need our helpSo donate ZAKAT / "
                      "Foundation as much as you can because As one of the "
                      "pillars of Islam, Zakat is a form of obligatory "
                      "Foundation that has the potential to ease the "
                      "suffering of millions and"
                      " “Whoever pays the zakat on his wealth will have "
                      "its evil removed from him” (Ibn Khuzaimah and "
                      "at-Tabaraani)",
                  color: Colors.grey,
                  size: Dimensions.font20 + 2,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.height20, right: Dimensions.height20),
                    child: Text(
                      "All Members in Foundation.",
                      style: TextStyle(
                          fontSize: Dimensions.font26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height10),
              Container(
                height: Dimensions.pageView,
                width: Dimensions.screenWidth,
                margin: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.height10,
                    right: Dimensions.height10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.lime,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/pfm.jpg"),
                    )),
              ),
              SizedBox(height: Dimensions.height20),
              HomeBox2(
                servText1: "Serverd Over",
                servText2: "1,832,805",
                servText3: "People in Bangladesh",
                donText1: "Donate Zakat",
                donText2:
                    "Zakat is a religious obligation for all Muslims who meet the necessary criteria to donate a certain portion of their wealth each year to charitable causes",
                donText3: "Donate Now",
                becText1: "Become a Part",
                becText2:
                    "Become a Part of our Foundation and Help to Serve Others.",
                becText3: "Part Of Foundation",
              ),
              SizedBox(height: Dimensions.height10),
              DonateSimpleWidget(
                fstBoxText1: "Mission",
                fstBoxText2:
                    "Our mission is to provide education, nourishment, mental and physical support to the distressed and to make people self sufficient by permanently rehabilitating them.",
                donateWidget1: DonateWidget(
                  image: AssetImage("assets/images/founder.jpg"),
                  name: "Nusrat Jahan Nodi",
                  donateTime: "Founder of Panchakanya Fundation",
                  richText1: "Building",
                  donateMoney: " Lead  ",
                  richText2: "Teams",
                  cause: "Build and Lead the Team",
                  colors: Colors.blueGrey,
                ),
                donateWidget2: DonateWidget(
                  image: AssetImage("assets/images/imageten.jpg"),
                  icon: CustomIcons.heart_2,
                  name: "Zarin Rosni",
                  donateTime: "Treasurer of Panchakanya Fundation",
                  richText1: "Controls",
                  donateMoney: " Fundation ",
                  richText2: "Mony",
                  cause: "Manages the finances of the Foundation",
                  colors: Colors.tealAccent,
                ),
                donateWidget3: DonateWidget(
                  image: AssetImage("assets/images/pashikiqbal.jpg"),
                  name: "Ashik Iqbal",
                  donateTime: "Secretary of Panchakanya Fundation",
                  richText1: "Thats",
                  donateMoney: " Qualities ",
                  richText2: "Make",
                  cause: "Is a strong networker",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
