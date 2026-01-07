
import 'package:tailor_design_app/data/models/all_time_fav_model.dart';
import 'package:tailor_design_app/data/models/breezy_cotton_model.dart';
import 'package:tailor_design_app/data/models/designs_by_arya_model.dart';
import 'package:tailor_design_app/data/models/friendly_floral_model.dart';
import 'package:tailor_design_app/data/models/lehenga_model.dart';
import 'package:tailor_design_app/data/models/most_popular_model.dart';
import 'package:tailor_design_app/data/models/tailor_near_you_model.dart';
import 'package:tailor_design_app/data/models/top_saled_2_model.dart';
import 'package:tailor_design_app/data/models/top_saled_model.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';



class HomeModel extends HomeEntity {
  const HomeModel({
    required super.tailorNearYou,
    required super.designsByArya,
    required super.mostPopular,
    required super.allTimeFav,
    required super.lehenga,
    required super.topSaled,
    required super.breezyCotton,
    required super.topSaled2,
    required super.friendlyFloral,
  });

  factory HomeModel.fromJson(Map<String, dynamic> data) { 
    return HomeModel(
      tailorNearYou: TailorNearYouModel.fromJson(data['tailor_near_you']),
      designsByArya: DesignsByAryaModel.fromJson(data['designs_by_arya']),
      mostPopular: MostPopularModel.fromJson(data['most_popular']),
      allTimeFav: AllTimeFavModel.fromJson(data['all_time_fav']),
      lehenga: LehengaModel.fromJson(data['lehenga']),
      topSaled: TopSaledModel.fromJson(data['top_saled']),
      breezyCotton: BreezyCottonModel.fromJson(data['breezy_cotton']),
      topSaled2: TopSaled2Model.fromJson(data['top_saled_2']),
      friendlyFloral: FriendlyFloralModel.fromJson(data['friendly_floral']),
    );
  }
}
