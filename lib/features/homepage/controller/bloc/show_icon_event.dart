part of 'show_icon_bloc.dart';

sealed class ShowIconEvent extends Equatable {
  final IconData icon;

  const ShowIconEvent(this.icon);

  @override
  List<Object> get props => [icon];
}

class ShowIconPressed extends ShowIconEvent{
  const ShowIconPressed(super.icon);
  
}
