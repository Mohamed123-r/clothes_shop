import 'package:clothes_shop_app/features/authentication/login/presentation/view/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const LogInViewBody(),
    );
  }
}
