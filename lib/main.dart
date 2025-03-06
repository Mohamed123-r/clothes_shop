import 'package:clothes_shop_app/core/api/api_keys.dart';
import 'package:clothes_shop_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants.dart';
import 'core/database/cache/cache_helper.dart';
import 'core/function_help/get_it.dart';
import 'core/services/bloc_opesever.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent,
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();

  Bloc.observer = CustomBlocObserver();
  setupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // CacheHelper().saveData(
    //   key: ApiKeys.token,
    //   value:
    //       'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6ImEzMzUzZjk4LTdiNWEtNGIzYi05ZmMxLTc1YjViODVkOWM0MiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2dpdmVubmFtZSI6Ik1haG1vdWQgTWFnZHkiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9lbWFpbGFkZHJlc3MiOiJNYWhtb3VkTWFnZHkxNzYyMDNAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVXNlciIsImV4cCI6MTc0MTMzNjU0MywiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NzEwOCIsImF1ZCI6IlNlY3J1cmUifQ.rClBP2E1GqWxnFKNnujTonQEEloOX6FdEmTkmNghl1s',
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kVeryLightGreyColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: kVeryLightGreyColor,
            surfaceTintColor: kGreyColor,
          )),
      home: const SplashView(),
    );
  }
}
