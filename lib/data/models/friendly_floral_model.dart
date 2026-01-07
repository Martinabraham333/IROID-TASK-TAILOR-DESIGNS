

import 'package:tailor_design_app/domain/entity/friendly_floral_entity.dart';

class FriendlyFloralModel extends FriendlyFloralEntity {
  const FriendlyFloralModel({
    required super.sectionTitle,
    required super.banner,
  });

  factory FriendlyFloralModel.fromJson(Map<String, dynamic> json) {
    return FriendlyFloralModel(
      sectionTitle: json['section_title'] ?? '',
      banner: FriendlyFloralBannerModel.fromJson(json['banner'] ?? {}),
    );
  }
}

class FriendlyFloralBannerModel extends FriendlyFloralBannerEntity {
  const FriendlyFloralBannerModel({
    required super.id,
    required super.brand,
    required super.title,
    required super.image,
  });

  factory FriendlyFloralBannerModel.fromJson(Map<String, dynamic> json) {
    return FriendlyFloralBannerModel(
      id: json['id'] ?? 0,
      brand: json['brand'] ?? '',
      title: json['title'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
