import 'package:flutter/material.dart';
import 'package:loom_and_harvest/models/Product.dart';
import 'package:loom_and_harvest/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'product_detail_page.dart'; // Import the detail page

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Future<List<Product>> fetchProducts(CookieRequest request) async {
    // Ensure the URL has a trailing slash (/) to avoid server issues
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Decode the response into JSON
    var data = response;

    // Convert JSON data to a list of Product objects
    List<Product> productList = [];
    for (var d in data) {
      if (d != null) {
        productList.add(Product.fromJson(d));
      }
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(fontSize: 16, color: theme.colorScheme.error),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return Center(
              child: Text(
                'No products available.',
                style: TextStyle(fontSize: 20, color: theme.textTheme.bodyLarge?.color),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  // Navigate to the ProductDetailPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        product: snapshot.data[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: theme.cardColor, // Use theme's card color
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: theme.shadowColor.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${snapshot.data[index].fields.name}",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: theme.textTheme.titleLarge?.color, // Use theme's text color
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Price: \$${snapshot.data[index].fields.price}",
                        style: TextStyle(color: theme.textTheme.bodyLarge?.color),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Description: ${snapshot.data[index].fields.description}",
                        style: TextStyle(color: theme.textTheme.bodyLarge?.color),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Stock: ${snapshot.data[index].fields.stock}",
                        style: TextStyle(color: theme.textTheme.bodyLarge?.color),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Category: ${snapshot.data[index].fields.category}",
                        style: TextStyle(color: theme.textTheme.bodyLarge?.color),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
