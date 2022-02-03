import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_flutter_app/misc/colors.dart';
import 'package:tenth_flutter_app/widgets/app_large_text.dart';
import 'package:tenth_flutter_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/"+images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top:150,left: 20,right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(size: 30, text: "Mountain"),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                        child:AppText(size: 14, text: "Be who you are and say what you feel, because those who mind don't matter and those who matter don't mind.",
                          color: AppColors.textColor2,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );

      }),
    );
  }
}
