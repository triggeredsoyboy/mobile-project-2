import 'package:alghadim/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/bed_room.svg", "text": "Kamar Tidur"},
      {"icon": "assets/icons/family_room.svg", "text": "Ruang Keluarga"},
      {"icon": "assets/icons/work_space.svg", "text": "Ruang Kerja"},
      {"icon": "assets/icons/kitchen.svg", "text": "Dapur"},
      {"icon": "assets/icons/kitchen.svg", "text": "Kamar Mandi"},
    ];

    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.press, this.icon, this.text})
      : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getPropScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getPropScreenWidth(15)),
              height: getPropScreenWidth(55),
              width: getPropScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
