import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_holistic1/Providers/product_provider.dart';
import 'package:task_holistic1/Widgets/detail_widget.dart';
class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail", style: TextStyle(fontSize: 20 ),),
        centerTitle: true,
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child){
          final newProvider = provider.productModel?.data;
          if(newProvider == null){
            provider.home();
            return Center(child: CircularProgressIndicator(),);
          }else{
            return ListView.builder(
              itemBuilder:(context, index) {
                return Detailwidget(
                    img: provider.productModel?.data[index]["image"],
                    name: provider.productModel?.data[index]["name"],
                    descrebtion: provider.productModel?.data[index]["description"]
                );
              } ,
              itemCount:newProvider.length ,

            );}
        },
      ),
    );
  }
}
