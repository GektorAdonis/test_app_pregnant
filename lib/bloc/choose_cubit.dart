import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_pregnant/bloc/choose_state.dart';

class ChooseCubit extends Cubit<ChooseState> {
  ChooseCubit() : super(ChooseState('', 0));

  void setTitle(String title) => emit(ChooseState(title, state.year));

  void setYear(int year) => emit(ChooseState(state.title, year));
}
