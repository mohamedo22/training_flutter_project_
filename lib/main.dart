import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter_project/providers/productsProvider.dart';
import 'package:training_flutter_project/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Productsprovider(), child: Homepage());
  }
}
