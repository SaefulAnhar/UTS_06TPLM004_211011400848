import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final List<ItemDetail> itemDetails = const [
    ItemDetail(
      title: 'Nike Zoom Blazer Mid Premium',
      subtitle: 'Mens',
      price: '\$795',
      imagePath: 'assets/image/Nike Zoom Blazer Mid Premium.png',
      color: Colors.purpleAccent,
    ),
    ItemDetail(
      title: 'Nike Air Zoom',
      subtitle: 'Mens',
      price: '\$999',
      imagePath: 'assets/image/Nike Air Zoom.png',
      color: Colors.cyanAccent,
    ),
    ItemDetail(
      title: 'Nike ZoomX vaporfly',
      subtitle: 'Mens',
      price: '\$695',
      imagePath: 'assets/image/Nike ZoomX vaporfly.png',
      color: Colors.pinkAccent,
    ),
    ItemDetail(
      title: 'Nike Air Force 1S50',
      subtitle: 'Vintage',
      price: '\$295',
      imagePath: 'assets/image/Nike Air Force 1S50.png',
      color: Colors.grey,
    ),
    ItemDetail(
      title: 'Nike Waffle One',
      subtitle: 'Vintage',
      price: '\$295',
      imagePath: 'assets/image/Nike Waffle One png.png',
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS-Muhamad Saeful Anhar-211011400848',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SepatuinAja',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: itemDetails.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Container(
                width: 400,
                height: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: itemDetails[index].color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            itemDetails[index].title,
                            style: TextStyle(
                              color: Colors.black, // Warna teks diubah menjadi hitam
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            itemDetails[index].subtitle,
                            style: TextStyle(
                              color: Colors.black, // Warna teks diubah menjadi hitam
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 16,
                      child: Text(
                        itemDetails[index].price,
                        style: TextStyle(
                          color: Colors.black, // Warna teks diubah menjadi hitam
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      top: 1,
                      child: Transform.rotate(
                        angle: -0.20, // Sudut rotasi sedikit miring ke kiri
                        child: Image.network(
                          itemDetails[index].imagePath,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
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

class ItemDetail {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
  final Color color;

  const ItemDetail({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    required this.color,
  });
}
