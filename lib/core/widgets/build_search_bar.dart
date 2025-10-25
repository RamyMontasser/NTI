import 'package:flutter/material.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ابحث عن...',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/setting_image.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            );
  }
}