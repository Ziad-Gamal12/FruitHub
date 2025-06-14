part of 'proccess_steps_cubit.dart';

sealed class ProccessStepsState {}

final class ProccessStepsInitial extends ProccessStepsState {}

final class ProccessStepsCompleted extends ProccessStepsState {}

final class AppliedSavedAddress extends ProccessStepsState {
  final bool savedAddress = true;
}
