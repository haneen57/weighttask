import 'package:flutter/material.dart';
import 'package:weighttask/app_colors.dart';
import 'package:weighttask/detailsscreen.dart';
import 'package:weighttask/genderwidget.dart';
import 'package:weighttask/info.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  bool isMale = true;
  int height = 90;
  int age = 24;
  int weight=50;
  double res=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
        title: Text("bmiindex", style: TextStyle(color: AppColors.whiteColor)),
      ),
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 16,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GenderWidget(
                      icon: Icons.male_outlined,
                      gender: "Male",
                      isSelected: isMale,
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GenderWidget(
                      icon: Icons.female_outlined,
                      gender: "Female",
                      isSelected: !isMale,
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.darkBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: AppColors.purpleColor,
                        inactiveColor: AppColors.greyColor,
                        min: 20,
                        max: 180,
                        value: height.toDouble(),
                        onChanged: (heigh) {
                          setState(() {
                            height = heigh.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Info(
                      onTap2: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onTap1: () {
                        if (weight > 0) {
                          setState(() {
                            weight--;
                          });
                        }
                      },
                      icon1: Icons.remove,
                      icon2: Icons.add,
                      text: "weight",
                      value: weight.toString(),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Info(
                      onTap2: () {
                        setState(() {
                          age++;
                        });
                      },
                      onTap1: () {
                        if (age > 0) {
                          setState(() {
                            age--;
                          });
                        }
                      },
                      icon1: Icons.remove,
                      icon2: Icons.add,
                      text: "age",
                      value: age.toString(),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
                backgroundColor: AppColors.purpleColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(28)),
                ),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(res: weight/(height*height/10000),),
                ));
              },
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
