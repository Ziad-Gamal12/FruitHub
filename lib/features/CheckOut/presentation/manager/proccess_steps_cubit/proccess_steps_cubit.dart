import 'package:bloc/bloc.dart';

part 'proccess_steps_state.dart';

class ProccessStepsCubit extends Cubit<ProccessStepsState> {
  ProccessStepsCubit() : super(ProccessStepsInitial());
  int currentStep = 0;

  void changeStep({
    bool? isIcrease,
    int? stepchangenumber,
  }) {
    if (stepchangenumber != null) {
      currentStep = stepchangenumber;
    } else if (isIcrease == null || isIcrease == true) {
      currentStep++;
    } else {
      currentStep--;
    }
    emit(ProccessStepsCompleted());
  }
}
