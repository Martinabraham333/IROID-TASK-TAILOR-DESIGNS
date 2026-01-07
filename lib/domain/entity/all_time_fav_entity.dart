class AllTimeFavEntity {
  final String sectionTitle;
  final List<BannerEntity> banners;

  const AllTimeFavEntity({
    required this.sectionTitle,
    required this.banners,
  });
}

class BannerEntity {
  final int id;
  final String title;
  final String subtitle;
  final String image;

  const BannerEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
  });
}
