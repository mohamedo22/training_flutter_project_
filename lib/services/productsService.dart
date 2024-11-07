import 'package:dio/dio.dart';
import 'package:training_flutter_project/models/productsModel.dart';

class Productsservice {
  Dio dio = Dio();
  Future<ProductModel> fetchApi() async {
    try{
      var response = await dio.get("https://fakestoreapi.com/products");
      if(response.statusCode == 200){
        return ProductModel.getObject(response.data);
      }
      else{
        throw Exception("error status code is ${response.statusCode}");
      }
    }
    catch(e){
      throw Exception("error fetching api $e");
    }
  }
}