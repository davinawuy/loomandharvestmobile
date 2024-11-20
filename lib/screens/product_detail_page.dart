import 'package:flutter/material.dart';
import 'package:loom_and_harvest/models/Product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${product.fields.name}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: theme.textTheme.titleLarge?.color,
                )),
            const SizedBox(height: 10),
            Text("Price: \$${product.fields.price}",
                style: TextStyle(
                  fontSize: 18,
                  color: theme.textTheme.bodyLarge?.color,
                )),
            const SizedBox(height: 10),
            Text("Description: ${product.fields.description}",
                style: TextStyle(
                  fontSize: 16,
                  color: theme.textTheme.bodyLarge?.color,
                )),
            const SizedBox(height: 10),
            Text("Stock: ${product.fields.stock}",
                style: TextStyle(
                  fontSize: 16,
                  color: theme.textTheme.bodyLarge?.color,
                )),
            const SizedBox(height: 10),
            Text("Category: ${product.fields.category}",
                style: TextStyle(
                  fontSize: 16,
                  color: theme.textTheme.bodyLarge?.color,
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}
