import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_holistic1/Providers/product_provider.dart';
import 'package:task_holistic1/Widgets/product_widget.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<ProductProvider>(builder: (context, provider, child) {
          var catProvider =  provider.categoryModel?.data;
          if(catProvider == null){
            provider.categpries();
            return Center(child: CircularProgressIndicator(),);
          }
          else{
            return SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: catProvider.length,
                  itemBuilder: (context, index) {
                   var category = catProvider[index];
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Chip(
                       shadowColor: Colors.green,
                         elevation: 4,
                         label: Text(category["name"]),
                       labelStyle: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold ) ,
                       onDeleted: () {

                       },
                     ),
                   );
                  },
              ),
            );
          }
        },),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child){
          final newProvider = provider.productModel?.data;
          if(newProvider == null){
            provider.home();
            return Center(child: CircularProgressIndicator(),);
          }else{
            return GridView.builder(
              itemCount: newProvider.length,
              itemBuilder:(context, index) {
                return ProductWidget(
                  img: provider.productModel?.data[index]["image"],
                  price: provider.productModel?.data[index]["price"],
                  name:provider.productModel?.data[index]["name"],
                );
              } ,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2 ,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),

            );
          }
        },
      ),
    );  }

  }

