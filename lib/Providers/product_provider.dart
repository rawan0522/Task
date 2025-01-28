import 'package:flutter/cupertino.dart';
import 'package:task_holistic1/Models/category_model.dart';
import 'package:task_holistic1/Models/product_model.dart';
import 'package:task_holistic1/Services/product_service.dart';
class ProductProvider extends ChangeNotifier{
  ProductModel? productModel;
  CategoryModel? categoryModel;
  Future<void>home()async{
    productModel = await ProductService.home();
    notifyListeners();
  }
Future<void>categpries()async{
    categoryModel = await ProductService.categories();
    notifyListeners();
}
}