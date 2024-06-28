part of 'selectedsong_bloc.dart';

@immutable
sealed class SelectedsongState {}

final class SelectedsongInitial extends SelectedsongState {}

final class SelectedState extends SelectedsongState {
  final Song song;

  SelectedState({required this.song});
}
