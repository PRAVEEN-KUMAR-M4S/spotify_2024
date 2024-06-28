part of 'selectedsong_bloc.dart';

@immutable
sealed class SelectedsongEvent {}

final class OnSelect extends SelectedsongEvent {
  final Song song;

  OnSelect({required this.song});
}
