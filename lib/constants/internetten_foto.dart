import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  for (int i = 300; i < 401; i++) {
    if (i > 5) {
      break; //i 5 ten büyük olunca döngüden çık.
    }
    int sayi = i;
  }
}

class Foto_al {
  //var foto_al = Image.network('https://picsum.photos/200');

  var foto_al =
      Image.network(faker.image.image(random: true, keywords: ["product"]),
      loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          );
}
