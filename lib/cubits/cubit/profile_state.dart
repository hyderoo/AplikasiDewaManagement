part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;

  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.success({
    required String message,
    UserModel? user,
  }) = ProfileSuccess;

  const factory ProfileState.error({
    required String message,
  }) = ProfileError;

  const factory ProfileState.passwordChangeLoading() = PasswordChangeLoading;
  const factory ProfileState.passwordChangeSuccess({required String message}) =
      PasswordChangeSuccess;
  const factory ProfileState.passwordChangeError({required String message}) =
      PasswordChangeError;

  const factory ProfileState.deleteAccountLoading() = DeleteAccountLoading;
  const factory ProfileState.deleteAccountSuccess({required String message}) =
      DeleteAccountSuccess;
  const factory ProfileState.deleteAccountError({required String message}) =
      DeleteAccountError;
}
