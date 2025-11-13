import 'package:aaa/feature/auth/cubit/register_cubit/register_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(InitialRegisterState());
  static RegisterCubit get (context)=>BlocProvider.of(context);
  bool passObscure = true;
  bool confirmPassObscure = true;

  var pass = TextEditingController();
  var confirmPass = TextEditingController();

  void passRegister(){
    passObscure =! passObscure ;
    emit(RegisterPassState());

  }
  void confirmPassRegister(){
    confirmPassObscure =! confirmPassObscure ;
    emit(RegisterConfirmPassState());

  }
}
