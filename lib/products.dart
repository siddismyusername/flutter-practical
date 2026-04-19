import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<Map<String, dynamic>> products = [
    {'name': 'Product 1', 'price': '\$19.99', 'icon': Icons.smartphone},
    {'name': 'Product 2', 'price': '\$29.99', 'icon': Icons.laptop},
    {'name': 'Product 3', 'price': '\$39.99', 'icon': Icons.watch},
    {'name': 'Product 4', 'price': '\$49.99', 'icon': Icons.headphones},
    {'name': 'Product 5', 'price': '\$59.99', 'icon': Icons.camera_alt},
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: colorScheme.primary,
                child: Icon(product['icon'], color: Colors.white),
              ),
              title: Text(
                product['name'],
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                product['price'],
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart, color: colorScheme.primary),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${product['name']} added to cart'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
