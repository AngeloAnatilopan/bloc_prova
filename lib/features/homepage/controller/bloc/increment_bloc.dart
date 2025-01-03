import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'increment_event.dart';
part 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  IncrementBloc() : super(const IncrementInitial(value: 0)) {
    on<IncrementPressed>((event, emit) {
      emit(Incremented(value: state.value + 1));
    });
    on<DecrementPressed>((event, emit) {
      emit(Decremented(value: state.value - 1));
    });
  }
}
