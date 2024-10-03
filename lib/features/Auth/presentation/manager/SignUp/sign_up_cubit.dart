import 'package:bloc/bloc.dart';
import 'package:fruits/features/Auth/domain/Entity/UserEntity.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  bool isTermsAccepted = false;

  final AuthRepo authRepo;
  Future<void> signUp(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignUpLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
        email: email, password: password, name: name);
    result.fold((failure) => emit(SignUpFailure(message: failure.message)),
        (userEntity) => emit(SignUpSuccess(userEntity: userEntity)));
  }

  @override
  void onChange(Change<SignUpState> change) {
    print(change);
  }
}
