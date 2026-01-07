

import 'package:tailor_design_app/domain/entity/designs_by_arya_entity.dart';

class DesignsByAryaModel extends DesignsByAryaEntity {
  const DesignsByAryaModel({
    required super.sectionTitle,
    required super.subtitle,
    required super.categories,
  });

  factory DesignsByAryaModel.fromJson(Map<String, dynamic> json) {
    return DesignsByAryaModel(
      sectionTitle: json['section_title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e))
          .toList(),

          
    );
  }
}

class CategoryModel extends CategoryEntity {
  const CategoryModel({
    required super.id,
    required super.name,
    required super.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
