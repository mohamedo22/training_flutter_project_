import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter_project/providers/productsProvider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Productsprovider>(builder: (context, providerObject , child) {
      return Scaffold(
          body: Column(
            children: [
              Expanded(child: ListView.builder(itemBuilder: (context, index) => 
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox( width: 200 , height: 150 , child:Image.network(providerObject.myModel?.products[index]["imgUrl"])),
                    Text(providerObject.myModel?.products[index]["title"]),
                    Text(providerObject.myModel?.products[index]["description"]),
                    Text(providerObject.myModel?.products[index]["price"]),
                  ],
                ),
              ) , 
              itemCount: providerObject.myModel?.products.length ,
              ))
            ],
          ),

      );
    }
    );
  }
}