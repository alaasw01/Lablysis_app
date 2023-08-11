// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:iti_final_project/layout/home_layout/cubit/home_layout_cubit.dart';
import 'package:iti_final_project/modules/booking_tests/cubit/book_cubit.dart';
import 'package:iti_final_project/modules/home_screen/home_screen.dart';
import 'package:iti_final_project/layout/home_layout/home_layout.dart';
import 'package:iti_final_project/modules/booking_tests/booking_screen.dart';
import 'package:iti_final_project/modules/booking_tests/Tests_screen.dart';
import 'package:iti_final_project/modules/onboarding/cubit/onboarding_cubit.dart';
import 'package:iti_final_project/modules/splash_screen/splash_screen.dart';

import 'component/constant.dart';
import 'models/book_model.dart';

void main() async {
  // await Hive.initFlutter();
  // await Hive.openBox(kBookNote);
  // Hive.registerAdapter(BookModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookCubit()..createDb(),
        ),
        BlocProvider(
          create: (context) => HomeLayoutCubit(),
        ),
         BlocProvider(
          create: (context) => OnboardingCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: HomeLayout(),
      ),
    );
  }
}
