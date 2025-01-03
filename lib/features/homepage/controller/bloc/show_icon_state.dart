part of 'show_icon_bloc.dart';

sealed class ShowIconState extends Equatable {
  final IconData icon;
  
  const ShowIconState(this.icon);
  
  @override
  List<Object> get props => [icon];
}

final class ShowIconInitial extends ShowIconState {
  const ShowIconInitial(super.icon);
}

final class ShowIconChanged extends ShowIconState {
  const ShowIconChanged(super.icon);
}