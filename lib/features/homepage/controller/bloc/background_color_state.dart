part of 'background_color_bloc.dart';

sealed class BackgroundColorState extends Equatable {
  final Color color;
  
  const BackgroundColorState(this.color);
  
  @override
  List<Object> get props => [color];
}

final class BackgroundColorInitial extends BackgroundColorState {
  const BackgroundColorInitial(super.color);
}

class BackgroundColorChanged extends BackgroundColorState {
  const BackgroundColorChanged(super.color);
}
