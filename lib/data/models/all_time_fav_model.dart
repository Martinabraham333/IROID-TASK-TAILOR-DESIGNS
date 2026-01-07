

import 'package:tailor_design_app/domain/entity/all_time_fav_entity.dart';

class AllTimeFavModel extends AllTimeFavEntity {
  const AllTimeFavModel({
    required super.sectionTitle,
    required super.banners,
  });

  factory AllTimeFavModel.fromJson(Map<String, dynamic> json) {
    return AllTimeFavModel(
      sectionTitle: json['section_title'] ?? '',
      banners: (json['banners'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e))
          .toList(),
    );
  }
}

class BannerModel extends BannerEntity {
  const BannerModel({
    required super.id,
    required super.title,
    required super.subtitle,
    required super.image,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
