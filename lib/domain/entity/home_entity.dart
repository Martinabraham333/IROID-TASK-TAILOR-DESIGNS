import 'package:tailor_design_app/domain/entity/all_time_fav_entity.dart';
import 'package:tailor_design_app/domain/entity/breezy_cotton_entity.dart';
import 'package:tailor_design_app/domain/entity/designs_by_arya_entity.dart';
import 'package:tailor_design_app/domain/entity/friendly_floral_entity.dart';
import 'package:tailor_design_app/domain/entity/lehenga_entity.dart';
import 'package:tailor_design_app/domain/entity/most_popular_entity.dart';
import 'package:tailor_design_app/domain/entity/tailor_near_you_entity.dart.dart';
import 'package:tailor_design_app/domain/entity/top_saled_2_entity.dart';
import 'package:tailor_design_app/domain/entity/top_saled_entity.dart';




class HomeEntity {
  final TailorNearYouEntity tailorNearYou;
  final DesignsByAryaEntity designsByArya;
  final MostPopularEntity mostPopular;
  final AllTimeFavEntity allTimeFav;
  final LehengaEntity lehenga;
  final TopSaledEntity topSaled;
  final BreezyCottonEntity breezyCotton;
  final TopSaled2Entity topSaled2;
  final FriendlyFloralEntity friendlyFloral;

  const HomeEntity({
    required this.tailorNearYou,
    required this.designsByArya,
    required this.mostPopular,
    required this.allTimeFav,
    required this.lehenga,
    required this.topSaled,
    required this.breezyCotton,
    required this.topSaled2,
    required this.friendlyFloral,
  });
}
