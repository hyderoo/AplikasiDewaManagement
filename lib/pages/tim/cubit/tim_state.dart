part of 'tim_cubit.dart';

@freezed
class TimState with _$TimState {
  const factory TimState.initial() = TimInitial;
  const factory TimState.loading() = TimLoading;
  const factory TimState.success({
    required List<TimModel> tim,
    String? message,
  }) = TimSuccess;
  const factory TimState.error({
    required String message,
  }) = TimError;
}
