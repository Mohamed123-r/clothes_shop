import 'package:clothes_shop_app/core/function_help/get_it.dart';
import 'package:clothes_shop_app/features/authentication/domain/repos/auth_repo.dart';
import 'package:clothes_shop_app/features/authentication/signup/presentation/manage/cubits/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sign_up_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
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
        body: const SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
