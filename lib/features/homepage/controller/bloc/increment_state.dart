part of 'increment_bloc.dart';

sealed class IncrementState extends Equatable {
  final int value;
  const IncrementState({required this.value});
  
  @override
  List<Object> get props => [value];
}

final class IncrementInitial extends IncrementState {
  const IncrementInitial({required super.value});
}

class Incremented extends IncrementState {
  const Incremented({required super.value});
}

class Decremented extends IncrementState {
  const Decremented({required super.value});
}