import 'package:flutter/material.dart';
import 'package:weighttask/app_colors.dart';

class DetailsScreen extends StatelessWidget {
  final double res;
  const DetailsScreen({super.key,required this.res});
 Widget getClassification(){
   if(res<20){
     return Text("Underweight",style: TextStyle(color: Colors.red,fontSize: 24),);
   }
   else if(res>20&&res<30) {
     return Text(
       "Healthy weight", style: TextStyle(color: Colors.green, fontSize: 24),);
   }
   return Text("Obese",style: TextStyle(color: Colors.redAccent,fontSize: 24),);

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Text(
                "your result",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.darkBlue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getClassification(),
                    SizedBox(height: 40,),
                    Text(res.toStringAsFixed(2),style: TextStyle(color: AppColors.whiteColor,fontSize: 24),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 100),
                backgroundColor: AppColors.purpleColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(28)),
                ),
              ),

              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "ReCalculate",
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
