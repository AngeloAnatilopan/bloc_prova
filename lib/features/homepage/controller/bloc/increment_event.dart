part of 'increment_bloc.dart';

sealed class IncrementEvent extends Equatable {
  const IncrementEvent();

  @override
  List<Object> get props => [];
}

class IncrementPressed extends IncrementEvent {
  const IncrementPressed();
}

class DecrementPressed extends IncrementEvent {
  const DecrementPressed();
}