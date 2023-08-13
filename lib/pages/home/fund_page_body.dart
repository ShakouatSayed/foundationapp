import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:foundationapp/routes/app_route_helper.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/app_text_field.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/home_box2.dart';
import 'package:foundationapp/widget/intro_part.dart';
import 'package:foundationapp/widget/page_intro.dart';
import 'package:foundationapp/widget/small_text.dart';
import 'package:get/get.dart';

class FundPageBody extends StatefulWidget {
  const FundPageBody({Key? key}) : super(key: key);

  @override
  State<FundPageBody> createState() => _FundPageBodyState();
}

class _FundPageBodyState extends State<FundPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageView;
  @override
  void initState() {
    super.initState();
    setState(() {
      pageController.addListener(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var nameController = TextEditingController();
    // var emailController = TextEditingController();
    // var messageController = TextEditingController();
    //
    // // validation
    // void _registrastion() {
    //   String name = nameController.text.trim();
    //   String email = emailController.text.trim();
    //   String message = messageController.text.trim();
    //   if (name.isEmpty) {
    //     showCustomSanckBar("Type in Your Name", title: "Name");
    //   } else if (GetUtils.isEmail(email)) {
    //     showCustomSanckBar("Type in your email address", title: "Email");
    //   } else if (message.isEmpty) {
    //     showCustomSanckBar("Type in Your Message.", title: "Message");
    //   }
    // }

    return Column(
      children: [
        //Home box 1
        Stack(
          children: [
            IntroPage(
              image: AssetImage("assets/images/beg2.jpg"),
              text: "Donate For Foundation-Flood Relief/Water "
                  "Crisis/Dengue Infection-And Many Others.",
              text1: "Created By: Shakouat Hossen Sayed.",
            ),
          ],
        ),
        SizedBox(height: Dimensions.height20),

        //Home box2
        HomeBox2(
          servText1: "Serverd Over",
          servText2: "1,832,805",
          servText3: "People in Bangladesh",
          donText1: "Donate Zakat",
          donText2:
              "Zakat is a religious obligation for all Muslims who meet the necessary criteria to donate a certain portion of their wealth each year to charitable causes",
          donText3: "Donate Now",
          becText1: "Become a Part",
          becText2: "Become a Part of our Foundation and Help to Serve Others.",
          becText3: "Part Of Foundation",
        ),
        PageIntro(
            text: "RECENT FROM BLOG",
            text1: "Our Foundation Recent and P"
                "ast Work's that make people Cheer and Happy"),
        //Home blog box 3
        Container(
          height: Dimensions.height350 * 1.3,
          //margin: EdgeInsets.only(left: 10),
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          position: _currentPageValue,
          // position: _currentPageValue,
          dotsCount: 5,
          decorator: DotsDecorator(
            activeColor: Colors.greenAccent,
            size: Size.square(9.0),
            activeSize: Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(height: Dimensions.height30),

        //Home box 4
        Stack(children: [
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(
                left: Dimensions.height10, right: Dimensions.height10),
            height: Dimensions.height350 * 2.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: Colors.lime,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/P_F_M.jpeg"),
                  opacity: 1.4),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.height10,
                      left: Dimensions.height10,
                      right: Dimensions.height10),
                  height: Dimensions.pageView * 1.01,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                      color: Colors.lime,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/event-2.jpg"),
                      )),
                ),
                SizedBox(height: Dimensions.height10 / 2),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.height10, right: Dimensions.height10),
                    child: Column(
                      children: [
                        BigText(
                          text: "BE A VOLUNTEER",
                          color: Colors.black87,
                          size: Dimensions.font26 * 1.1,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: Dimensions.height10),
                        AppTextField(
                            //textController: nameController,
                            hintText: "Name",
                            icon: Icons.person),
                        SizedBox(height: Dimensions.height10),
                        AppTextField(
                            //textController: emailController,
                            hintText: "Email",
                            icon: Icons.email),
                        SizedBox(height: Dimensions.height10),
                        AppTextField(
                            //textController: messageController,
                            hintText: "Message",
                            icon: Icons.message),
                        SizedBox(height: Dimensions.height20 * 2),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: Dimensions.screenWidth / 2,
                            height: Dimensions.screenHeight / 16,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius30),
                              color: Colors.greenAccent,
                            ),
                            child: Center(
                              child: BigText(
                                text: "Send Message",
                                size: Dimensions.font26,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(1, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.getBlogDetailPage());
        },
        child: Stack(children: [
          Container(
            height: Dimensions.pageView,
            margin: EdgeInsets.only(
                left: Dimensions.height10 / 2, right: Dimensions.height10 / 2),
            //padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? Colors.lime : Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/beg5.jpg"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.height350 / 2,
              margin: EdgeInsets.only(
                  left: Dimensions.height30,
                  right: Dimensions.height30,
                  bottom: Dimensions.height10),
              //padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: Colors.lime,
              ),
              child: Stack(
                //alignment: Alignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 35, right: 35),
                      //margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: "Date: 26 July 2022",
                            textAlign: TextAlign.start,
                            size: Dimensions.font26,
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          SmallText(
                            text: "Blog Tital: Flood In Bangladesh",
                            size: Dimensions.font20,
                            color: Colors.black87,
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
