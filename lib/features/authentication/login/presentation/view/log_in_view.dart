import 'package:clothes_shop_app/features/authentication/login/presentation/manage/cubits/login_cubit.dart';
import 'package:clothes_shop_app/features/authentication/login/presentation/view/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/function_help/get_it.dart';
import '../../../domain/repos/auth_repo.dart';
import 'widgets/log_in_view_body_bloc_builder.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginCubit(
            authRepo: getIt.get<AuthRepo>(),
          ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: const LogInViewBodyBlocBuilder(),
      ),
    );
  }
}

