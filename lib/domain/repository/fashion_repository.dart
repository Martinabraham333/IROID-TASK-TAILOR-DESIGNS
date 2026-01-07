import 'package:tailor_design_app/domain/entity/home_entity.dart';

abstract class FashionRepository {
  Future<HomeEntity> fetchFashionDetails();
}