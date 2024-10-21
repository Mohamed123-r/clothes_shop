import 'package:clothes_shop_app/features/authentication/login/presentation/view/widgets/new_password_view_body.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: const NewPasswordViewBody(),
    );
  }
}
