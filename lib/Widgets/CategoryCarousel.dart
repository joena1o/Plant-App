import 'package:flutter/material.dart';
import 'package:plant_app_ui/theme.dart';

class CategoryCarousel extends StatelessWidget {
  const CategoryCarousel({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    int active = 0;

    final items = [
      "All", "Indoor", "Outdoor", "Garden", "Yard"
    ];

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width,
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext ctx, i){
          return  Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ActionChip(
              onPressed: active == i ? (){

              }: null,
              shadowColor: Colors.lightGreen,
              disabledColor: Colors.white,
              backgroundColor: primary,
              surfaceTintColor: Colors.lightGreen,
              label: Text(items[i], style:  TextStyle(fontSize: 16,
                  color: active == i ? Colors.white : Colors.black87
              ),)));
      }),
    );
  }
}
