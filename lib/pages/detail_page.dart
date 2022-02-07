import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_flutter_app/misc/colors.dart';
import 'package:tenth_flutter_app/widgets/app_buttons.dart';
import 'package:tenth_flutter_app/widgets/app_large_text.dart';
import 'package:tenth_flutter_app/widgets/app_text.dart';
import 'package:tenth_flutter_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/mountain.jpeg"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                top: 50,
                left: 20,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 300,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: "\$ 250",
                            color: AppColors.mainColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          AppText(
                              text: "USA, California",
                              color: AppColors.textColor1)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: index < gottenStars
                                          ? AppColors.starColor
                                          : AppColors.textColor2,
                                    )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0)",
                            color: AppColors.textColor2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Number of people in your group",
                        color: AppColors.mainTextColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: AppButton(
                                        size: 60,
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        backgroundColor: selectedIndex == index
                                            ? Colors.black
                                            : AppColors.buttonBackground,
                                        text: (index + 1).toString(),
                                        borderColor: selectedIndex == index
                                            ? Colors.black
                                            : AppColors.buttonBackground),
                                  ),
                                )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text:
                            "Live as if you were to die tomorrow. Learn as if you were to live forever. Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind.",
                        color: AppColors.mainTextColor,
                      )
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      size: 60,
                      color: AppColors.textColor1,
                      backgroundColor: Colors.white,
                      borderColor: AppColors.textColor1,
                      isIcon: true,
                    ),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,

                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
