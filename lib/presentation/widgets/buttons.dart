import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';

class Buttons {

static Widget followButton(){
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
static Widget likeButton(){
  return CircleAvatar(
   radius: 20,
   backgroundColor: Colors.white,
    child: Center(child:Icon(Icons.favorite_border) ),
  );
  }
static Widget shareButton(){
  return CircleAvatar(
   radius: 20,
   backgroundColor: Colors.white,
    child: Center(child:Icon(Icons.share_outlined) ),
  );
  }

}