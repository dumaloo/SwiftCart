import 'package:swiftcart/models/products.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Products>?> getProducts() async {
    var client = http.Client();

    var uri = Uri.parse('https://fakestoreapi.com/products');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return productsFromJson(json);
    }
    return null;
  }
}
