import 'package:flutter/material.dart';
import 'package:weighttask/app_colors.dart';

class GenderWidget extends StatelessWidget {
  final IconData icon;
  final String gender;
  final bool isSelected;
  final Function() onTap;

  const GenderWidget({
    super.key,
    required this.icon,
    required this.onTap,
    required this.gender,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected?AppColors.purpleColor:AppColors.darkBlue,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,size: 70,color: AppColors.whiteColor,),
                SizedBox(height: 12),
                Text(
                  gender,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
