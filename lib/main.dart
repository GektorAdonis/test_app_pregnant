import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_pregnant/bloc/choose_cubit.dart';
import 'package:test_app_pregnant/screens/date_picker_screen.dart';
import 'package:test_app_pregnant/screens/home_screen.dart';
import 'package:test_app_pregnant/screens/choose_screen.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  final ChooseCubit _chooseCubit = ChooseCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => BlocProvider.value(
              value: _chooseCubit,
              child: HomeScreen(),
            ),
        '/date': (context) => BlocProvider.value(
              value: _chooseCubit,
              child: DatePickerScreen(),
            ),
        '/choose': (context) => BlocProvider.value(
              value: _chooseCubit,
              child: ChooseScreen(),
            ),
      },
    );
  }

  @override
  void dispose() {
    _chooseCubit.close();
    super.dispose();
  }
}
