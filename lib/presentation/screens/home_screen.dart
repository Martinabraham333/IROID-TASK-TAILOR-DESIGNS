import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailor_design_app/core/widgets/custom_text.dart';
import 'package:tailor_design_app/presentation/bloc/fashion_bloc.dart';
import 'package:tailor_design_app/presentation/widgets/all_time_section_widget.dart';
import 'package:tailor_design_app/presentation/widgets/category_section_widget.dart';
import 'package:tailor_design_app/presentation/widgets/most_popular_section_widget.dart';
import 'package:tailor_design_app/presentation/widgets/top_profile_section_widget.dart';
import 'package:tailor_design_app/presentation/widgets/top_sailed2_section_widget.dart';
import 'package:tailor_design_app/presentation/widgets/top_saled_section_widget.dart';

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
        return state.isLoading == true
            ? SafeArea(
                child: Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                ),
              )
            : state.homeData == null
            ? SafeArea(
                child: Scaffold(
                  body: Center(child: CustomText(text: 'No data found')),
                ),
              )
            : SafeArea(
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopProfileSectionWidget(homeData: state.homeData!),

                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                            left: 20,
                          ),
                          child: CustomText(
                            text: state.homeData!.designsByArya.sectionTitle,
                            fontSize: 25,
                          ),
                        ),

                        CategorySectionWidget(homeData: state.homeData!),
                        SizedBox(height: 20),
                        MostPopularSectionWidget(homeData: state.homeData!),
                        SizedBox(height: 20),
                        AllTimeSectionWidget(homeData: state.homeData!),
                        SizedBox(height: 20),
                        Image.network(
                          state.homeData!.lehenga.banner.image,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        TopSaledSectionWidget(homeData: state.homeData!),
                        SizedBox(height: 20),
                        Image.network(
                          state.homeData!.breezyCotton.banner.image,
                          fit: BoxFit.cover,
                        ),

                         SizedBox(height: 20),

                         TopSailed2SectionWidget(homeData: state.homeData!),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
