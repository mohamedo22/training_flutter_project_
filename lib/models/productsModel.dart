class ProductModel{
  List<Map<String,dynamic>> products;
  ProductModel({required this.products});
  factory ProductModel.getObject(List<Map<String,dynamic>> apiData){
    List<Map<String,dynamic>> fullData;
    fullData = apiData.map((el)=>{
      "title":el["title"],
      "price":el["price"],
      "description":el["description"],
      "imgUrl":el["image"]
    }).toList();
    return ProductModel(products: fullData);
  }
}