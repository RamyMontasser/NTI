import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/build_search_bar.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';
import 'package:flutter_application_1/core/widgets/product_card.dart';
import 'package:flutter_application_1/features/Home/View/details.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController search = TextEditingController();

  List<Map> bestSelling = [
    {'image': 'assets/images/watermellon.png', 'title': "بطيخ", "price": '20'},
    {'image': 'assets/images/pineapple.png', 'title': "اناناس", "price": '60'},
    {'image': 'assets/images/strawberry.png', 'title': "فراولة", "price": '30'},
    {'image': 'assets/images/avocado.png', 'title': "افوكادو", "price": '80'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(items: [SalomonBottomBarItem(icon: Icon(Icons.abc),title: Text('data'))]),
      // bottomNavigationBar: BottomNavigationBar(
      //   items:[
      //     BottomNavigationBarItem(icon: Image.asset('assets/icons/home.png'))
      //   ]
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: ListTile(
                leading: Image.asset(
                  'assets/images/profile.png',
                  width: 44,
                  height: 44,
                ),
                title: Text('صباح الخير!..'),
                titleTextStyle: TextStyle(
                  fontSize: 17,
                  color: customColor['darkgrey'],
                ),
                subtitle: Text('رامي منتصر'),
                subtitleTextStyle: TextStyle(
                  fontSize: 20,
                  color: customColor['black'],
                  fontWeight: FontWeight.bold,
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 35,
                    height: 35,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 200, 233, 214),
                    ),
                    child: Image.asset(
                      'assets/images/notification.png',
                      width: 5,
                      height: 5,
                    ),
                  ),
                ),
              ),
            ),

            BuildSearchBar(),

            SizedBox(height: 10),

            SizedBox(
              height: 150,
              child: PageView(
                children: [
                  Image.asset('assets/images/sales_1.png'),
                  Image.asset('assets/images/page1.png'),
                ],
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
              itemCount: bestSelling.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  image: bestSelling[index]['image']!,
                  title: bestSelling[index]['title']!,
                  price: bestSelling[index]['price']!,
                  fun: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(
                          image: bestSelling[index]['image'],
                          title: bestSelling[index]['title'],
                          price: bestSelling[index]['price'],
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
