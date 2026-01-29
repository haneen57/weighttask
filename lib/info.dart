import 'package:flutter/material.dart';
import 'package:weighttask/app_colors.dart';
import 'package:weighttask/icon.dart';

class Info extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final String text;
  final String value;
  final Function() onTap1;
  final Function() onTap2;
  const Info({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.text,
    required this.value,
    required this.onTap1,
    required this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.darkBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(text,style: TextStyle(color: AppColors.whiteColor,fontSize: 20,),),
        SizedBox(height: 4,),
          Text(value,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: AppColors.whiteColor),),
          SizedBox(height: 4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconWidget(icon: icon1,onTap:onTap1 ,),
              SizedBox(width: 4,),
              IconWidget(icon: icon2,onTap: onTap2,),
            ],
          )
        ],
      ),
    );
  }
}
