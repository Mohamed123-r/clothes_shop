import 'package:bloc/bloc.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.authRepo}) : super(SignUpInitial());

  final AuthRepo authRepo;

  Future<void> signUp({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phone,
    required String location,
    required int gender,
  }) async {
    final result = await authRepo.registerWithEmail(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      name: name,
      phone: phone,
      location: location,
      gender: gender,
    );

    result.fold(
      (l) => emit(
        SignUpFailure(l.message),
      ),
      (r) => emit(
        SignUpSuccess(),
      ),
    );
  }
}
