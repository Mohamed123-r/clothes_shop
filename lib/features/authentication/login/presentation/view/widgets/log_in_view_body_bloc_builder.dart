import 'package:clothes_shop_app/core/function_help/custom_error.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/widgets/custom_progress_hud.dart';
import 'package:clothes_shop_app/features/authentication/login/presentation/manage/cubits/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'log_in_view_body.dart';

class LogInViewBodyBlocBuilder extends StatelessWidget {
  const LogInViewBodyBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushAndRemoveUntil(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kBottomNavigationBar,
              ),
            ),
            (route) => false,
          );

        } else if (state is LoginFailure) {
          customError(context, massage: state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is LoginLoading,
          child: const LogInViewBody(),
        );
      },
    );
  }
}
