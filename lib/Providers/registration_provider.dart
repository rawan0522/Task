import 'package:flutter/cupertino.dart';
import 'package:task_holistic1/Models/Registration_model.dart';
import 'package:task_holistic1/Services/registration_service.dart';

class RegistrationProvider extends ChangeNotifier{
  RegistrationModel? registrationModel;
  Future<void>login({required String email , required String password})async{
    registrationModel = await RegistrationService.login(email: email, password: password);
    notifyListeners();
  }
  Future<void>signup({required String name , required String password , required String email , required String phone})async{
    registrationModel = await RegistrationService.signup(email: email, password: password, name: name, phone: phone);
    notifyListeners();
  }
}