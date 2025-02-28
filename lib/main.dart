import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('URL Image Load'),
          backgroundColor: Colors.blue,
          elevation: 10,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://media.istockphoto.com/id/1086610760/photo/mature-man-looking-at-full-moon-in-sky-at-night.jpg?s=612x612&w=0&k=20&c=UTG8mLg6wSAW9WIKChvliM0XwV-yU7s0GBblBHYqkJw=",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Text("Error Loading Image"),
            ),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfrtq8ddSfekNypcgtvBS5r-f3l1rGtfEgzw&s"),
            Image.network(
                "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg"),
          ],
        )),
      ),
    );
  }
}
