import 'package:tailor_design_app/domain/entity/home_entity.dart';
import 'package:tailor_design_app/domain/repository/fashion_repository.dart';

class FashionUsecase {
  final FashionRepository repositoty;
  FashionUsecase(this.repositoty);

  Future<HomeEntity> call() async {
    final homeData = await repositoty.fetchFashionDetails();
    return homeData;
  }
}
