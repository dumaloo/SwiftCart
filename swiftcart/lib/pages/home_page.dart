import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swiftcart/models/products.dart';
import 'package:swiftcart/services/remote_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;

  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  //List of products to be displayed
  List<Products>? products;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    //fetch data from the API
    getData();
  }

  getData() async {
    products = await RemoteService().getProducts();
    if (products != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Products'),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: products?.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.grey[300],
              margin: const EdgeInsets.all(26),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products![index].title,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Price: \$${products![index].price.toString()}',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'Category: ${products![index].category.toString().split('.').last}',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(height: 8.0),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 110,
                          width: 110,
                          child: Image.network(products![index].image),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
              // const SizedBox(height: 8.0),
              //           Text(
              //             products![index].description,
              //             maxLines: 1,
              //             style: const TextStyle(fontSize: 16.0),
              //           ),

              