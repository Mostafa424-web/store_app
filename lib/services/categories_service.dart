import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
  List<dynamic> data   =  await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName', token: '');

      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(data[i]),
        );
      }

      return productsList;
   
  }
}
