import 'package:flutter/cupertino.dart';
import 'package:training_flutter_project/models/productsModel.dart';
import 'package:training_flutter_project/services/productsService.dart';

class Productsprovider with ChangeNotifier {
  ProductModel? myModel;
  Future<void>? fetching() async{
    myModel = await Productsservice().fetchApi();
    notifyListeners();
  }
}