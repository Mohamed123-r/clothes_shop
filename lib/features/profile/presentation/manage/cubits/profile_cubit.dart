import 'package:clothes_shop_app/features/profile/domain/entities/profile_entity.dart';
import 'package:clothes_shop_app/features/profile/domain/repos/profile_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.profileRepo}) : super(ProfileInitial());
  final ProfileRepo profileRepo;

  Future<void> getProfileDataDetails() async {
    emit(ProfileLoading());
    final result = await profileRepo.getProfileDataDetails();
    result.fold(
      (l) => emit(
        ProfileFailure(
          l.message,
        ),
      ),
      (r) => emit(
        ProfileSuccess(r),
      ),
    );
  }
}
