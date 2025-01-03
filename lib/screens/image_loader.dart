import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageLoader extends StatelessWidget {
  const ImageLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: orientation == Orientation.portrait
                ? Image.asset('assets/local_image.jpg') // Gambar lokal
                : CachedNetworkImage(
                    imageUrl: 'https://tse2.mm.bing.net/th?id=OIP.auGTYISRabSFk6scquup4AHaIh&pid=Api&P=0&h=180',
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
          );
        },
      ),
    );
  }
}