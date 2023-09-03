import 'package:flutter/material.dart';
import 'package:foundationapp/utils/dimensions.dart';

class LastPart extends StatelessWidget {
  const LastPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: Dimensions.height10,
        left: Dimensions.height10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "HAVE A QUESTIONS?",
            style: TextStyle(
              fontSize: Dimensions.font26,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: Dimensions.height20),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              SizedBox(width: Dimensions.height30),
              Expanded(
                child: SizedBox(
                  child: Text(
                    "Somewhere in Tangail, Dhaka, Bangladesh.",
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: Dimensions.height20),
          Row(
            children: [
              Icon(
                Icons.phone,
                color: Colors.green,
              ),
              SizedBox(width: Dimensions.height30),
              Expanded(
                child: SizedBox(
                  child: Text(
                    "+880 1608-694048",
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: Dimensions.height20),
          Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.green,
              ),
              SizedBox(width: Dimensions.height30),
              Expanded(
                child: SizedBox(
                  width: 320,
                  child: Text(
                    "nodi61@gmail.com",
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
