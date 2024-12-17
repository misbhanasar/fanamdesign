import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Container(
            width: 35, // Smaller, size for the menu circle
            height: 35,
            decoration: BoxDecoration(
              color: Color.fromARGB(120, 84, 57, 39), // Brownish color with opacity
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.hardEdge,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => Scaffold()),
                );
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 18, // Smaller icon size
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 201, 196, 196),
              backgroundImage: AssetImage('assets/profile.png'), // Your profile image
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              "Our embroidery app",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Text(
              "CATEGORIES",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryItem(
                      imagePath: 'asset/images/clip1.png', label: 'Hair Clips'),
                  SizedBox(width: 12),
                  CategoryItem(
                      imagePath: 'asset/images/clip1.png', label: 'Shoes'),
                  SizedBox(width: 12),
                  CategoryItem(
                      imagePath: 'asset/images/clip1.png', label: 'Bags'),
                  SizedBox(width: 12),
                  CategoryItem(
                      imagePath: 'asset/images/clip1.png', label: 'Accessories'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 12),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              children: [
                ProductItem(
                  imagePath: 'asset/images/clip1.png',
                  name: 'Heavy 2 clips',
                  price: 50.0,
                ),
                ProductItem(
                  imagePath: 'asset/images/clip1.png',
                  name: 'Blue flower shoe',
                  price: 1000.0,
                ),
                ProductItem(
                  imagePath: 'asset/images/clip1.png',
                  name: 'Pearl Clip',
                  price: 25.0,
                ),
                ProductItem(
                  imagePath: 'asset/images/clip1.png',
                  name: 'Elegant Shoe',
                  price: 1200.0,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Nearby'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;

  CategoryItem({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, width: 80, height: 80),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;

  ProductItem(
      {required this.imagePath, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imagePath,
                  width: double.infinity, height: 120, fit: BoxFit.cover),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Icon(Icons.favorite_border, color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text('Colors available', style: TextStyle(color: Colors.grey)),
        Text('\$$price',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
