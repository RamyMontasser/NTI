import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/build_products.dart';
import 'package:flutter_application_1/core/widgets/build_search_bar.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';
import 'package:flutter_application_1/core/widgets/home_appbar.dart';
import 'package:flutter_application_1/core/widgets/product_card.dart';
import 'package:flutter_application_1/features/Home/View/details.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<Map> ourProducts = [
    {'image': 'assets/images/watermellon.png', 'title': "بطيخ", "price": '20'},
    {'image': 'assets/images/pineapple.png', 'title': "اناناس", "price": '60'},
    {'image': 'assets/images/strawberry.png', 'title': "فراولة", "price": '30'},
    {'image': 'assets/images/avocado.png', 'title': "افوكادو", "price": '80'},
    {'image': 'assets/images/panana.png', 'title': "موز", "price": '40'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(title: 'المنتجات',haveIcon: true),

      resizeToAvoidBottomInset: true,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: customColor['darkGreen'],
        unselectedItemColor: customColor['darkgrey'],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {},
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            BuildSearchBar(),

            SizedBox(height: 10),

            ListTile(
              title: Text(
                'منتجاتنا',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.menu_open),
            ),

            SizedBox(height: 10),

            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ourProducts.length,
                itemBuilder: (context, index) {
                  return BuildProducts(
                    img: ourProducts[index]['image'],
                    title: ourProducts[index]['title'],
                  );
                },
              ),
            ),

            SizedBox(height: 10),

            SizedBox(
              height: 50,
              child: ListTile(
                title: Text(
                  'الأكثر مبيعاً',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Text('المزيد', style: TextStyle(fontSize: 15)),
                ),
              ),
            ),

            SizedBox(height: 10),

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.68,
                crossAxisSpacing: 9,
              ),
              itemCount: ourProducts.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  image: ourProducts[index]['image'],
                  title: ourProducts[index]['title'],
                  price: ourProducts[index]['price'],
                  fun: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          image: ourProducts[index]['image'],
                          title: ourProducts[index]['title'],
                          price: ourProducts[index]['price'],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
