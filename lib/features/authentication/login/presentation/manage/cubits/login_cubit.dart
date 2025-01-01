import 'package:bloc/bloc.dart';
import 'package:clothes_shop_app/features/authentication/domain/entities/user_entity.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/aoth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    final result =
        await authRepo.loginWithEmail(email: email, password: password);
    result.fold(
      (l) => emit(
        LoginFailure(
         l.message,
        ),
      ),
      (r) => emit(
        LoginSuccess(),
      ),
    );
  }
}
