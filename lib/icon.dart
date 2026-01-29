import 'package:flutter/material.dart';
import 'package:weighttask/app_colors.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  const IconWidget({super.key,required this.icon,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
            onTap: onTap,
            child: Icon(icon,size: 24,color: AppColors.whiteColor,)),
      ),
    );
  }
}
