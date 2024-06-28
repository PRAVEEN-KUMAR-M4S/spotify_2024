import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'selectedsong_event.dart';
part 'selectedsong_state.dart';

class SelectedsongBloc extends Bloc<SelectedsongEvent, SelectedsongState> {
  SelectedsongBloc() : super(SelectedsongInitial()) {
    on<OnSelect>((event, emit) async {
      emit(SelectedState(song: event.song));
    });
  }
}
