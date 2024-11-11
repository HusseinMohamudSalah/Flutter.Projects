import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignmant"),
          backgroundColor: Colors.purple,
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomCard(
                color: Colors.purple,
                name: "Hussein Mohamud Salah",
                imageUrl:
                    "https://via.placeholder.com/100", // Replace with actual image URL or asset
              ),
              SizedBox(height: 10),
              CustomCard(
                color: Colors.orange,
                name: "Salmo Mohamed",
                imageUrl:
                    "https://via.placeholder.com/100", // Replace with actual image URL or asset
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color color;
  final String name;
  final String imageUrl;

  const CustomCard({
    Key? key,
    required this.color,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage:
                  NetworkImage(imageUrl), // Use AssetImage for local images
              radius: 30,
            ),
            SizedBox(width: 20),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
