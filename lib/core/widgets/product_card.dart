import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.fun,
  });

  final String image;
  final String title;
  final String price;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Card(
        shadowColor: Colors.white,
        color: customColor['grey'],
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                child: Image.asset(image, width: 525, height: 396),
              ),

              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '$price جنيه',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: customColor['orange'],
                          ),
                        ),
                        TextSpan(
                          text: '/ كيلو',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange[200],
                          ),
                        ),
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: customColor['darkGreen'],
                      ),
                      child: Text(
                        '+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 27,
                          color: customColor['white'],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
