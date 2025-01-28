import 'package:dio/dio.dart';
import 'package:task_holistic1/Models/category_model.dart';
import 'package:task_holistic1/Models/product_model.dart';

class ProductService{
  static Dio dio = Dio();

  static Future<ProductModel> home() async {
    String url = "https://student.valuxapps.com/api/home";
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      return ProductModel.fromjson(response.data);
    }
    else {
      throw Exception("Try Again");
    }
  }

static Future<CategoryModel>categories()async{
    String url ="https://student.valuxapps.com/api/categories";
    var response = await dio.get(url);
    if(response.statusCode == 200){
      print(response.data);
      return CategoryModel.fromCategory(response.data);
    }else{
      throw Exception("Failed to load task details");

    }
}
}