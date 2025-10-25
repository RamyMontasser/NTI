import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/dt_backgraund.png',height: 350,fit: BoxFit.fill,)
            ],
          )
        ],
      ),
    );
  }
}
