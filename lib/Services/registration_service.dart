import 'package:dio/dio.dart';
import 'package:task_holistic1/Models/Registration_model.dart';
class RegistrationService{
  static Dio dio = Dio();
  static Future<RegistrationModel>login({required String email , required String password})async{
    String url ="https://elsewedyteam.runasp.net/api/Login/CheckUser";
    var response = await dio.post(url , data: {
      "email":email,
      "password":password,
    });
    if(response.statusCode == 200){
      return RegistrationModel.fromjson(response.data);
    }else{
      throw Exception("Failed to load task details");

    }
  }

  static Future<RegistrationModel> signup({required String email , required String password , required String name , required String phone}) async{
    String url = "https://elsewedyteam.runasp.net/api/Register/AddUser";
    var response =await dio.post(url , data: {
      "name":name,
      "email":email,
      "password":password,
      "phone":phone,
    });
    if(response.statusCode==200) {
      return RegistrationModel.fromjson(response.data);
    }else{
      throw Exception("Failed to load task details");
    }
  }

}