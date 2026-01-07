import 'package:flutter/material.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';
import 'package:tailor_design_app/domain/entity/designs_by_arya_entity.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';

class CategorySectionWidget extends StatelessWidget {
   final HomeEntity homeData;
  const CategorySectionWidget({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
     color: Color(0xFFE3E3E3),
     child:Padding(
       padding: const EdgeInsets.only(left: 20),
       child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          SizedBox(height: 20,),
           CustomText(text: homeData.designsByArya.subtitle,fontSize: 20,fontWeight: FontWeight.bold,),
         SizedBox(height: 20,),
           Expanded(
             child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeData.designsByArya.categories.length,
              itemBuilder: (context,index){
                List<CategoryEntity> category= homeData.designsByArya.categories;
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                  
                    children: [
                             CircleAvatar(
                              radius: 50,
                               backgroundImage: NetworkImage(category[index].image),
                             ),
                    SizedBox(height: 10,),
                             CustomText(text: category[index].name)
                    ],
                  ),
                );
              }),
           )
         ],
       ),
     ) ,

    );
  }
}