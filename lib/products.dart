import 'package:flutter/material.dart';


class Products extends StatelessWidget {
  final List<String>products;
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
                  children: products
                      .map(
                        (element) => Card(
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/food.jpg'),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(element),
                                  )
                                ],
                              ),
                            ),
                      )
                      .toList()),
    );
  }
}