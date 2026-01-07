import 'package:flutter/material.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';
import 'package:tailor_design_app/domain/entity/designs_by_arya_entity.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';
import 'package:tailor_design_app/domain/entity/most_popular_entity.dart';
import 'package:tailor_design_app/domain/entity/top_saled_2_entity.dart';

class TopSailed2SectionWidget extends StatelessWidget {
  final HomeEntity homeData;
  const TopSailed2SectionWidget({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 420,
      
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomText(
                text: homeData.topSaled2.sectionTitle,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeData.topSaled2.products.length,
                  itemBuilder: (context, index) {
                    List<TopSaled2ProductEntity> products = homeData.topSaled2.products;
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                products[index].image,
                                width: 170,
                                height: 170,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    for (var i = 0; i < products[index].rating; i++)
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: 15,
                                      ),
                                  ],
                                ),
                        
                                SizedBox(width: 10),
                                CustomText(text: products[index].rating.toString()),
                                SizedBox(width: 10),
                                CustomText(
                                  text: "(${products[index].reviewsCount})",
                                ),
                              
                              ],
                            ),
                        
                               SizedBox(height: 10),
                        
                                 CustomText(
                                  text: "${products[index].name}",fontSize: 20,
                                ),
                                 SizedBox(height: 10),
                        
                                 Expanded(
                                   child: CustomText(
                                    text: "${products[index].description}",
                                                                 ),
                                 ),
                                 SizedBox(height: 10),
                        
                                 CustomText(
                                  text: "${products[index].currency} ${products[index].price}",
                                  fontSize: 20,fontWeight: FontWeight.bold,
                                ),
                        
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
