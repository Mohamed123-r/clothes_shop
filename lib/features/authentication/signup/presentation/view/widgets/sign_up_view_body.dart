import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/function_help/custom_error.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/features/authentication/signup/presentation/manage/cubits/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'call_action_section_sign_up_view.dart';
import 'gender_section_from_sign_up_view.dart';
import 'input_section_from_sign_up_view.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late String email, password, confirmPassword, name, phone, location;

  int gender = 2;

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
                'Sign up',
                style: Styles.heading2Bold,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Create new account',
                style: Styles.heading3Bold.copyWith(
                  color: kDarkGreyColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InputSectionFromSignUpView(
                onSavedToEmail: (value) => email = value!,
                onSavedToPassword: (value) => password = value!,
                onSavedToConfirmPassword: (value) => confirmPassword = value!,
                onSavedToName: (value) => name = value!,
                onSavedToPhoneNumber: (value) => phone = value!,
                onSavedToLocation: (value) => location = value!,
              ),
              const SizedBox(height: 12.0),
              GenderSectionFromSignUpView(
                onSelected: (value) {
                  if (value == 'male') {
                    gender = 0;
                  } else if (value == 'female') {
                    gender = 1;
                  }
                },
              ),
              CallActionSectionSignUpView(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    autovalidateMode = AutovalidateMode.disabled;
                    if (gender == 2) {
                      customError(context, massage: 'Gender is required');
                      return;
                    }
                    context.read<SignUpCubit>().signUp(
                          email: email,
                          password: password,
                          confirmPassword: confirmPassword,
                          name: name,
                          phone: phone,
                          location: location,
                          gender: gender,
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
