import 'package:flutter/material.dart';
import 'package:playground/VideoGrafico01-Projeto-Apresentando-Widgets/pages/category_page.dart';
import 'package:playground/VideoGrafico01-Projeto-Apresentando-Widgets/pages/product_page.dart';

import 'home_buttons.dart';

main() => runApp(MaterialApp(
      home: HomeButtons(),
      routes: {
        "/product": (context) => ProductPage(),
        "/category": (context) => CategoryPage()
      },
    ));
