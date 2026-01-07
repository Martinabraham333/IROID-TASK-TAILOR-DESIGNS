
import 'package:get_it/get_it.dart';
import 'package:tailor_design_app/core/api_client.dart';
import 'package:tailor_design_app/data/datasource/fashion_remote_datesource.dart';
import 'package:tailor_design_app/data/repository_impl/fashion_repository_impl.dart';
import 'package:tailor_design_app/domain/repository/fashion_repository.dart';
import 'package:tailor_design_app/domain/usecases/fashion_usecase.dart';
import 'package:tailor_design_app/presentation/bloc/fashion_bloc.dart';

final sl=GetIt.instance;

Future<void>init()async{
sl.registerFactory(()=>FashionBloc(sl()));
sl.registerLazySingleton(()=>FashionUsecase(sl()));
sl.registerLazySingleton<FashionRepository>(()=> FashionRepositoryImpl(sl()));
sl.registerLazySingleton(()=>FashionRemoteDatesource(sl()));
sl.registerLazySingleton(() => ApiClient());
}