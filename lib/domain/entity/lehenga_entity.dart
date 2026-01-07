class LehengaEntity {
  final String sectionTitle;
  final LehengaBannerEntity banner;

  const LehengaEntity({
    required this.sectionTitle,
    required this.banner,
  });
}

class LehengaBannerEntity {
  final int id;
  final String title;
  final String subtitle;
  final String brand;
  final String image;

  const LehengaBannerEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.brand,
    required this.image,
  });
}
