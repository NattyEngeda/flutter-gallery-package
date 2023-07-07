import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery Image Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Gallery Image Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Tap to show image"),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GalleryImage(
                  numOfShowImages: 6,
                  imageUrls: const [
                    "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                    "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                    "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                    "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                    "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                    "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                    "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                    "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                    "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                    "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                    "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                    "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                    "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                    "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                    "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
