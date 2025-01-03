part of 'background_color_bloc.dart';

sealed class BackgroundColorEvent extends Equatable {
  const BackgroundColorEvent();

  @override
  List<Object> get props => [];
}

class BackgroundColorPressed extends BackgroundColorEvent{
  final Color newColor;

  const BackgroundColorPressed(this.newColor);

  @override
  List<Object> get props => [newColor]; 
}
