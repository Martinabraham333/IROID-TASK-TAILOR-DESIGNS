import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tailor_design_app/domain/entity/home_entity.dart';
import 'package:tailor_design_app/domain/usecases/fashion_usecase.dart';

part 'fashion_event.dart';
part 'fashion_state.dart';
part 'fashion_bloc.freezed.dart';

class FashionBloc extends Bloc<FashionEvent, FashionState> {
  final FashionUsecase usecase;
 
  FashionBloc(this.usecase) : super(FashionState()){

    on<FetchFashionDeatisl>(_fetchFashionDeatisl);
  }

  _fetchFashionDeatisl(FetchFashionDeatisl event , Emitter<FashionState> emit )async{
    emit(state.copyWith(isLoading: true));
   try {
     final homeData=await usecase.call();
     print(homeData);
       emit(state.copyWith(isLoading: false,homeData: homeData,));
   } catch (e) {
      emit(state.copyWith(isLoading: false,msg: e.toString(),));
   }
  }

}
