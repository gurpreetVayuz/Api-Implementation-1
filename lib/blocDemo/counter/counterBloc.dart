import 'package:bloc/bloc.dart';
import 'package:taskday1/blocDemo/counter/counterEvents.dart';
import 'package:taskday1/blocDemo/counter/counterState.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
   String? name;
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }
  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
