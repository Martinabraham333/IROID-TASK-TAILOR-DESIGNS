

import 'package:tailor_design_app/domain/entity/lehenga_entity.dart';

class LehengaModel extends LehengaEntity {
  const LehengaModel({
    required super.sectionTitle,
    required super.banner,
  });

  factory LehengaModel.fromJson(Map<String, dynamic> json) {
    return LehengaModel(
      sectionTitle: json['section_title'] ?? '',
      banner: LehengaBannerModel.fromJson(json['banner'] ?? {}),
    );
  }
}

class LehengaBannerModel extends LehengaBannerEntity {
  const LehengaBannerModel({
    required super.id,
    required super.title,
    required super.subtitle,
    required super.brand,
    required super.image,
  });

  factory LehengaBannerModel.fromJson(Map<String, dynamic> json) {
    return LehengaBannerModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      brand: json['brand'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
