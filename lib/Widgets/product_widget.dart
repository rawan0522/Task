import 'package:flutter/material.dart';
import '../Screens/product_detail.dart';
class ProductWidget extends StatelessWidget {
  ProductWidget({super.key , required this.img ,required this.name ,required this.price});
  String img;
  String name;
  var price;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                child: Image.network(img, width: 150, height: 100, fit: BoxFit.cover,),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()),);
                },
              ),
              const SizedBox(height: 8),
              Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text('\$$price', style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
