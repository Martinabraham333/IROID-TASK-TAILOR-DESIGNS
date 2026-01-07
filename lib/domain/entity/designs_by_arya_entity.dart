class DesignsByAryaEntity {
  final String sectionTitle;
  final String subtitle;
  final List<CategoryEntity> categories;

  const DesignsByAryaEntity({
    required this.sectionTitle,
    required this.subtitle,
    required this.categories,
  });
}

class CategoryEntity {
  final int id;
  final String name;
  final String image;

  const CategoryEntity({
    required this.id,
    required this.name,
    required this.image,
  });
}
