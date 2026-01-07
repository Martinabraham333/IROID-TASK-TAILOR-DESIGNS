part of 'fashion_bloc.dart';

@freezed
sealed class FashionState with _$FashionState {
  const factory FashionState({
 @Default(null) HomeEntity? homeData,
 @Default(false) bool isLoading,
 @Default('') String msg,
  }) = _FashionState;
}
