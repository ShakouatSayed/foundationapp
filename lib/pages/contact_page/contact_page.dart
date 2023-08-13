import 'package:flutter/material.dart';
import 'package:foundationapp/base/custom_app_bar.dart';
import 'package:foundationapp/utils/dimensions.dart';
import 'package:foundationapp/widget/app_text_field.dart';
import 'package:foundationapp/widget/big_text.dart';
import 'package:foundationapp/widget/last_part.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: "Contact"),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.height20,
                right: Dimensions.height20,
                top: Dimensions.height20,
              ),
              child: Center(
                child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("assets/images/beg6.jpg"),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.black,
                          foregroundImage: AssetImage("assets/images/beg5.jpg"),
                        ),
                        Text("Contact Us",
                            style: TextStyle(
                                fontSize: Dimensions.font26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.height20,
                right: Dimensions.height20,
              ),
              child: Row(
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Information",
                        style: TextStyle(
                            fontSize: Dimensions.font26,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Dimensions.height20),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "Address: ",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.font26),
                        ),
                        TextSpan(
                          text: "Dhanbari, Tangail, Dhaka, Bangladesh",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: Dimensions.font20 + 1),
                        )
                      ])),
                      SizedBox(height: Dimensions.height20),
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Phone: ",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font26),
                            ),
                            TextSpan(
                              text: "+880 1728-782693",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Dimensions.font20 + 1),
                            )
                          ])),
                      SizedBox(height: Dimensions.height20),
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Email: ",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font26),
                            ),
                            TextSpan(
                              text: "nodi61@gmail.com",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Dimensions.font20 + 1),
                            )
                          ])),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Padding(
              padding: EdgeInsets.only(
                left: Dimensions.height20,
                right: Dimensions.height20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Do you have any questions?",
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
                      //textController: emailController,
                      hintText: "Subject",
                      icon: Icons.subject),
                  SizedBox(height: Dimensions.height10),
                  AppTextField(
                      //textController: messageController,
                      hintText: "Message",
                      icon: Icons.message),
                  SizedBox(height: Dimensions.height20),
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
            SizedBox(height: Dimensions.height20),
            LastPart(),
            SizedBox(height: Dimensions.height20),
          ],
        ),
      ),
    );
  }
}
