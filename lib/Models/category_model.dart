class CategoryModel{
  List<dynamic> data;
  CategoryModel({required this.data});
  factory CategoryModel.fromCategory(Map<String , dynamic>json){
    return CategoryModel(data: json['data']['data']);
  }

}