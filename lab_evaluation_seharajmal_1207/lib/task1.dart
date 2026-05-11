import 'package:flutter/material.dart';

void main() {
  runApp(const WalMartApp());
}

class WalMartApp extends StatefulWidget {
  const WalMartApp({super.key});

  @override
  State<WalMartApp> createState() => _WalMartAppState();
}

class _WalMartAppState extends State<WalMartApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WalMart Dashboard',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: DashboardScreen(
        isDarkMode: _isDarkMode,
        onThemeChanged: (value) {
          setState(() {
            _isDarkMode = value;
          });
        },
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const DashboardScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = List.generate(
      8,
      (index) => {
        'name': 'Product ${index + 1}',
        'price': '\$${(index + 1) * 25}',
        'image': 'https://picsum.photos/id/${index + 10}/200/200',
      },
    );

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu), // Action icon on the left
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
        centerTitle: true,
        title: Text(
          "WalMart",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('h6.jpg'),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    "Sehar Ajmal",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "sehar.developer@example.com",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const Divider(height: 40),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product List",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Placeholder Image
                        Expanded(
                          child: Image.network(
                            products[index]['image']!,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Name and Price in a Row
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    products[index]['name']!,
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(products[index]['price']!),
                                ],
                              ),
                              const SizedBox(height: 8),
                              // Button prints name to console
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(double.infinity, 30),
                                ),
                                onPressed: () {
                                  print("Added to Wishlist: ${products[index]['name']}");
                                },
                                child: const Text("Add to Wishlist", style: TextStyle(fontSize: 12)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dark Mode"),
            Switch(
              value: isDarkMode,
              onChanged: onThemeChanged,
            ),
          ],
        ),
      ),
    );
  }
}