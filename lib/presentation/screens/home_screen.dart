import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';
import 'package:tailor_design_app/presentation/bloc/fashion_bloc.dart';
import 'package:tailor_design_app/presentation/widgets/buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<FashionBloc>().add(FashionEvent.fetchFashionDeatisl());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FashionBloc, FashionState>(
      builder: (context, state) {

        return  state.isLoading==true ? SafeArea(child: Scaffold(body: Center(child: CircularProgressIndicator(),),))
        
       : state.homeData ==null ? SafeArea(child: Scaffold(body: Center(child: CustomText(text: 'No data found'),),))
       
     :    SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
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
                                  state.homeData!.tailorNearYou.profile.image ,
                                ),
                              ),
                              SizedBox(width: 20),
                              Buttons.followButton(),
                              SizedBox(width: 20),
                              Buttons.likeButton(),
                              SizedBox(width: 20),
                              Buttons.shareButton(),
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
                                    text: state
                                        .homeData!
                                        .tailorNearYou
                                        .profile
                                        .name, color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,
                                  ),
                                  CustomText(
                                    text: state
                                        .homeData!
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
