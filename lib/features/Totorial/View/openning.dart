import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/button.dart';
import 'package:flutter_application_1/core/widgets/colors.dart';
import 'package:flutter_application_1/core/widgets/sliding_points.dart';

class Openning extends StatefulWidget {
  const Openning({super.key});

  @override
  State<Openning> createState() => _OpenningState();
}

class _OpenningState extends State<Openning> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (val) {
          setState(() {
            debugPrintSynchronously('$val');
            pageNum = val;
          });
        },
        children: [
          SizedBox(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                    children: [
                        Image.asset('assets/images/back_graund.png',
                        color: const Color.fromARGB(255, 255, 237, 237),
                        fit: BoxFit.fitWidth,
                        ),
                      Image.asset('assets/images/page1.png', width: 250, height: 270),
                    ],
                ),
            
                SizedBox(height: 20),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 0,
                  children: [
                    Text(
                      'مرحبًا بك في',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'HUB',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: customColor['orange'],
                      ),
                    ),
                    Text(
                      'Fruit',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: customColor['darkGreen'],
                      ),
                    ),
                  ],
                ),
            
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
            
                SizedBox(height: 40),
            
                Slidingpoints(pagenum: pageNum),
              ],
            ),
          ),

          Column(
            children: [
              Stack(
                  alignment: Alignment.bottomCenter,
                    children: [
                        Image.asset('assets/images/back_graund.png',
                        color: const Color.fromARGB(255, 193, 246, 237),
                        ),
                      Image.asset('assets/images/page2.png', width: 250, height: 270),
                    ],
                ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 0,
                children: [
                  Text(
                    'ابحث وتسوق',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              SizedBox(height: 40),

              Slidingpoints(pagenum: pageNum),

              SizedBox(height: 20),

              BuildButton(
                title: 'ابدأ الان',
                fun: () {
                  Navigator.of(context).pushNamed('login');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
