import 'package:basketball_counter_app/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());
  int teamA = 0;
  int teamB = 0;

  void resultIncreament({required String team, required int increament}) {
    if (team == 'A') {
      teamA += increament;
      emit(CounterAIncrementState());
    } else {
      teamB += increament;
      emit(CounterBIncrementState());
    }
  }
}
