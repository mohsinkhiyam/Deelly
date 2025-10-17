import 'package:deelly/core/assets/images_assets.dart';
import 'package:deelly/core/colors/app_colors.dart';
import 'package:deelly/core/utils/responsive_config.dart';
import 'package:deelly/views/common/app_text.dart';
import 'package:flutter/material.dart';

class OurPartners extends StatelessWidget {
  const OurPartners({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> partnersImages = [
      ImagesAssets.partner1,
      ImagesAssets.partner2,
      ImagesAssets.partner3,
      ImagesAssets.partner4,
      ImagesAssets.partner5,
      ImagesAssets.partner6,
    ];
    return 
    
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    
     children: [

      AppText(text: "Our Partners", fontSize: 22, ),
      SizedBox(height: 9.h,),
       GridView.builder(
        shrinkWrap: true,
       
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 108/60
          ), 
        itemCount: partnersImages.length,
        itemBuilder: (context, index) {
          return  Container(
          height: 60.h,
          width: 108.w,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.partnerBorder, width: 1, ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset(partnersImages[index]),
        );
        },),
     ],
   );
   
  }
}
