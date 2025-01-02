import 'package:clothes_shop_app/core/function_help/custom_error.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/widgets/custom_progress_hud.dart';
import 'package:clothes_shop_app/features/authentication/signup/presentation/view/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manage/cubits/sign_up_cubit.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.push(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kLogInView,
              ),
            ),
          );
          customSuccess(context,
              massage: "Sign up successfully , please log in");
        }
        if (state is SignUpFailure) {
          customError(context, massage: state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is SignUpLoading,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}
