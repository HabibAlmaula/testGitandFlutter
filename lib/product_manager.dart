import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _product = ["Food Tester"];
  @override
  Widget build(BuildContext context) {
    return Container(
       child:  Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _product.add("Produk ke dua");
                    });
                  },
                  child: Text('Tambah Produk'),
                ),
              ),
              Products(_product)
              
            ],
          )
    );
  }
}