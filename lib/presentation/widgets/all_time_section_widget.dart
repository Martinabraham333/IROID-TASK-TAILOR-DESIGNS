import 'package:flutter/material.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';
import 'package:tailor_design_app/domain/entity/all_time_fav_entity.dart';
import 'package:tailor_design_app/domain/entity/designs_by_arya_entity.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';

class AllTimeSectionWidget extends StatelessWidget {
   final HomeEntity homeData;
  const AllTimeSectionWidget({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
    
     child:Padding(
       padding: const EdgeInsets.only(left: 20),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          CustomText(text: homeData.allTimeFav.sectionTitle,fontSize: 20,fontWeight: FontWeight.bold,),
         SizedBox(height: 20,),
           Expanded(
             child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeData.allTimeFav.banners.length,
                      itemBuilder: (context,index){
                          List<BannerEntity> banners= homeData.allTimeFav.banners;
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: ClipRRect(
                               borderRadius: BorderRadius.circular(20),
                                child: Image.network(banners[index].image,width: 250,height: 250,fit: BoxFit.cover,),
                              ),
                          );
                      }),
           ),
         ],
       ),
     ),
    );
  }
}