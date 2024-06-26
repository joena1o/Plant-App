import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_app_ui/ItemsPage.dart';
import 'package:plant_app_ui/fontsStyle.dart';

class ItemGrid extends StatefulWidget {
  const ItemGrid({Key? key}) : super(key: key);

  @override
  State<ItemGrid> createState() => _ItemGridState();
}

class _ItemGridState extends State<ItemGrid> {

  List<String> plants = [
    "Monstera deliciosa", "Aloe Vera", "English Ivy", "Golden Pothos", "Hoya Heart"
  ];
  
  List<AssetImage> plantsImage = [
    const AssetImage("assets/monstera-deliciosa.jpg"),
    const AssetImage("assets/aloe-vera.jpeg"),
    const AssetImage("assets/ivy.jpeg"),
    const AssetImage("assets/pothos.jpeg"),
    const AssetImage("assets/hoya.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        axisDirection: AxisDirection.down,
        crossAxisSpacing: 15,
        children: List.generate(plants.length, (index) {
          return Column(
            children: [

              Container(
                width: size.width * .5,
                height: size.width * .4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [

                    Positioned(child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_)=> ItemsPage(
                                image: plantsImage[index], name: plants[index],
                              ))
                          );
                        },
                        child:Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      width: size.width * .5,
                      height:  size.width * .5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: plantsImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))),

                    Positioned(
                        right: 9,
                        top: 9,
                        child: CircleAvatar(
                            child:IconButton(
                            onPressed: () {},
                            icon:  const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            )))),
                  ],
                ),
              ),

              Container(
                width: size.width * .5,
                padding: const EdgeInsets.only(top: 10, left: 2, right: 2),
                child: Row(
                  children:  [
                    Expanded(child:Text(plants[index], overflow: TextOverflow.ellipsis, style: regularBlack)),
                    const Icon(Icons.star, size: 18, color: Colors.orange,),
                    const SizedBox(width: 5,),
                    const Text("4.9")
                  ],
                ),
              ),

              Container(
                width: size.width * .5,
                padding: const EdgeInsets.only(top: 5, right: 2, left: 2, bottom: 15),
                child: const Text("\$25.00", style: TextStyle(fontSize: 17),)
              )

            ],
          );
    }));
  }
}
