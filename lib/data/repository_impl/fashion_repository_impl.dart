import 'package:tailor_design_app/data/datasource/fashion_remote_datesource.dart';
import 'package:tailor_design_app/data/models/home_model.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';
import 'package:tailor_design_app/domain/repository/fashion_repository.dart';

class FashionRepositoryImpl implements FashionRepository {
  final FashionRemoteDatesource dataSource;
  FashionRepositoryImpl(this.dataSource);
  @override
  Future<HomeEntity> fetchFashionDetails()async {
   final HomeModel homedata=await dataSource.fetchFashionDetails();
   return homedata;
  }
  
}