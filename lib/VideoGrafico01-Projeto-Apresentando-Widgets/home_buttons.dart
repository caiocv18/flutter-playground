import 'package:flutter/material.dart';
import 'package:playground/VideoGrafico01-Projeto-Apresentando-Widgets/pages/category_page.dart';

import 'pages/product_page.dart';

class HomeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegation"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProductPage()));
                  },
                  child: Text("Product")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(),
                        ),
                        (route) => false);
                  },
                  child: Text("Category")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/product");
                  },
                  child: Text("Product 2")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      "/product",
                      (route) => false,
                    );
                  },
                  child: Text("Product 2"))
            ]),
      ),
    );
  }
}
