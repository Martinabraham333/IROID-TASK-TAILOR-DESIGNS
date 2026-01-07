
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';

class TopProfileSectionWidget extends StatelessWidget {
  final HomeEntity homeData;
  const TopProfileSectionWidget({super.key, required this.homeData});

  @override
  Widget build(BuildContext context) {
    return       Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,

                        colors: [Color.fromARGB(255, 85, 16, 94), Colors.black],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  homeData.tailorNearYou.profile.image ,
                                ),
                              ),
                              SizedBox(width: 20),
                             followButton(),
                              SizedBox(width: 20),
                             likeButton(),
                              SizedBox(width: 20),
                             shareButton(),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: homeData
                                        .tailorNearYou
                                        .profile
                                        .name, color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,
                                  ),
                                  CustomText(
                                    text: homeData
                                        .tailorNearYou
                                        .profile
                                        .designation, color: Colors.white,
                                  ),
                                ],
                              ),
                              CustomText(text: 'View More',color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
               
  }

  
 Widget followButton(){
  return Container(
    width: 130,
    height:  40,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Center(child: CustomText(text: 'Follow',)),
  );
  }
 Widget likeButton(){
  return CircleAvatar(
   radius: 20,
   backgroundColor: Colors.white,
    child: Center(child:Icon(Icons.favorite_border) ),
  );
  }
 Widget shareButton(){
  return CircleAvatar(
   radius: 20,
   backgroundColor: Colors.white,
    child: Center(child:Icon(Icons.share_outlined) ),
  );
  }
}