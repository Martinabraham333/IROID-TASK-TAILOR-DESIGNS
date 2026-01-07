

import 'package:tailor_design_app/domain/entity/breezy_cotton_entity.dart';

class BreezyCottonModel extends BreezyCottonEntity {
  const BreezyCottonModel({
    required super.sectionTitle,
    required super.banner,
  });

  factory BreezyCottonModel.fromJson(Map<String, dynamic> json) {
    return BreezyCottonModel(
      sectionTitle: json['section_title'] ?? '',
      banner: BreezyCottonBannerModel.fromJson(json['banner'] ?? {}),
    );
  }
}

class BreezyCottonBannerModel extends BreezyCottonBannerEntity {
  const BreezyCottonBannerModel({
    required super.id,
    required super.brand,
    required super.title,
    required super.image,
  });

  factory BreezyCottonBannerModel.fromJson(Map<String, dynamic> json) {
    return BreezyCottonBannerModel(
      id: json['id'] ?? 0,
      brand: json['brand'] ?? '',
      title: json['title'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
