import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_pregnant/bloc/choose_cubit.dart';
import 'package:test_app_pregnant/bloc/choose_state.dart';

class ChooseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ChooseCubit, ChooseState>(
          builder: (context, state) {
            return Text('${state.title} , ${state.year}');
          },
        ),
      ),
    );
  }
}
