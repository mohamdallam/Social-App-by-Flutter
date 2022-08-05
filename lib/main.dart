import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/bloc/social/cubit.dart';
import 'package:social_app/network/cachHelper.dart';
import 'package:social_app/screen/login.dart';
import 'package:social_app/screen/register.dart';
import 'package:social_app/screen/social_layout.dart';
import 'package:social_app/shared/theme/theme.dart';

import 'file:///S:/Games/flutter_project/social_app/lib/shared/widget/widget.dart';

import 'bloc/login_bloc/cubit.dart';
import 'bloc/register_bloc/cubit.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CachHelper.init();

  Widget widget;
  uId = CachHelper.getData(key: 'uId');
  if (uId != null) {
    widget = SocialLayout();
  } else {
    widget = LoginScreen();
  }

  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;

  MyApp({this.startWidget});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => SocialLoginCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => SocialRegisterCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => SocialCubit()..getUserData(),
        ),
      ],
      child: MaterialApp(
       theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: SocialLayout(),
      ),
    );
  }
}
