import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manage/cubits/login_cubit.dart';
import 'call_action_section_from_log_in_view.dart';
import 'forgot_section_from_log_in_view.dart';
import 'input_section_from_log_in_view.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  late String email;

  late String password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Login',
                style: Styles.heading2Bold,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Enter your information',
                style: Styles.heading3Bold.copyWith(
                  color: kDarkGreyColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InputSectionFromLogInView(
                onSavedToEmail: (value) {
                  email = value!;
                },
                onSavedToPassword: (value) {
                  password = value!;
                },
              ),
              const ForgotSectionFromLogInView(),
              const SizedBox(
                height: 32,
              ),
              CallActionSectionFromLogInView(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    autovalidateMode = AutovalidateMode.disabled;
                    context.read<LoginCubit>().login(
                          email,
                          password,
                        );
                    setState(() {});
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
