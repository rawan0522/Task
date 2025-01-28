import 'package:flutter/material.dart';
class Detailwidget extends StatelessWidget {
  Detailwidget({super.key , required this.name , required this.img , required this.descrebtion});
  var img;
  String name;
  String descrebtion;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 6,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(img, width: 180, height: 180, fit: BoxFit.cover,),
            ),
            const SizedBox(height: 16),
            Text(name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(descrebtion, style: const TextStyle(fontSize: 17, color: Colors.black, height: 1.5,fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
