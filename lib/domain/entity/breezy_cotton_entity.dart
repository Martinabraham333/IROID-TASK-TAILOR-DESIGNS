class BreezyCottonEntity {
  final String sectionTitle;
  final BreezyCottonBannerEntity banner;

  const BreezyCottonEntity({
    required this.sectionTitle,
    required this.banner,
  });
}

class BreezyCottonBannerEntity {
  final int id;
  final String brand;
  final String title;
  final String image;

  const BreezyCottonBannerEntity({
    required this.id,
    required this.brand,
    required this.title,
    required this.image,
  });
}
