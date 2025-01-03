import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'background_color_event.dart';
part 'background_color_state.dart';

class BackgroundColorBloc extends Bloc<BackgroundColorEvent, BackgroundColorState> {
  BackgroundColorBloc() : super(const BackgroundColorInitial(Colors.white)) {
    on<BackgroundColorPressed>((event, emit) {
      emit(BackgroundColorChanged(event.newColor));
    });
  }
}
