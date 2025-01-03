import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'show_icon_event.dart';
part 'show_icon_state.dart';

class ShowIconBloc extends Bloc<ShowIconEvent, ShowIconState> {
  ShowIconBloc() : super(const ShowIconInitial(Icons.do_disturb)) {
    on<ShowIconPressed>((event, emit) {
      emit(ShowIconChanged(event.icon));
    });
  }
}
