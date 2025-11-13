import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() :super(LoginInitial());
  static LoginCubit get(context)=>BlocProvider.of(context);
  var pass = TextEditingController();
  var username = TextEditingController();
  bool obscure = true;

  void changePassState()
  {
    obscure=!obscure;
    emit(LoginChangePass());
  }

}