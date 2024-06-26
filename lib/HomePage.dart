import 'package:flutter/material.dart';
import 'package:plant_app_ui/Widgets/CategoryCarousel.dart';
import 'package:plant_app_ui/Widgets/ItemGrid.dart';
import 'package:plant_app_ui/Widgets/SpecialCarousel.dart';
import 'package:plant_app_ui/fontsStyle.dart';
import 'package:plant_app_ui/theme.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    Size size  = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [

            Container(
                color: primary,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SafeArea(
                  child: Row(
                  children: [
                    

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      const Text("Location", style: TextStyle(color: Colors.white54),),
                      const SizedBox(height: 7,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.location_on, size: 28, color: yellow,),
                          Text("New York, USA", style: TextStyle(fontSize: 15, color: Colors.white),),
                          Icon(Icons.keyboard_arrow_down_sharp, size: 25, color: yellow,)
                        ],
                      )
                    ],
                  ),

                  const Spacer(),

                  Container(
                    decoration:  BoxDecoration(
                      color: lightGreen,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.card_travel_sharp, color: Colors.white,),
                  ),

                  const SizedBox(width: 10,),

                  Container(
                    decoration:  BoxDecoration(
                        color: lightGreen,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.notifications, color: Colors.white,),
                  )

              ],
            ),
                )),

          Container(
            decoration: const BoxDecoration(
                color: primary,
              borderRadius: BorderRadius.only(bottomRight:  Radius.circular(30),
              bottomLeft:  Radius.circular(30)
              )
            ),

            padding: const EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),

            child: Row(
              children: [

                Expanded(child: Container(
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 10,),
                      Expanded(child: Text("Search", style: regularGrey,)),
                      Icon(Icons.document_scanner_rounded, color: primary)
                    ],
                  ),
                )),

                const SizedBox(width: 10,),

                Container(
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: const Icon(Icons.tune, color: primary,),
                )

              ],
            )),

            const SizedBox(height: 10,),

            Expanded(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("#SpecialForYou", style: headingBold,),
                            Text("See All", style: smallGreen,)
                          ],
                        ),

                        const SpecialCarousel(),

                        const SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Recommended For You", style: headingBold,),
                            Text("See All", style: smallGreen,)
                          ],
                        ),

                        const CategoryCarousel(),
                        const ItemGrid()

                      ],
                    ),
                  ),
              ),
            ),


            //Bottom AppBar
            Container(
              decoration:  BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(40),
                      topLeft:  Radius.circular(40)
                  )
              ),
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: const [
                      Icon(Icons.home, color: lightGreen,),
                      SizedBox(height: 5,),
                      Text("Home", style: TextStyle(color: lightGreen),)
                    ],
                  ),

                  Column(
                    children: const [
                      Icon(Icons.location_on, color: Colors.grey,),
                      SizedBox(height: 5,),
                      Text("Explore", style: TextStyle(color: Colors.grey),)
                    ],
                  ),

                  Column(
                    children: const [
                      Icon(Icons.favorite, color: Colors.grey,),
                      SizedBox(height: 5,),
                      Text("Wishlist", style: TextStyle(color: Colors.grey),)
                    ],
                  ),

                  Column(
                    children: const [
                      Icon(Icons.chat, color: Colors.grey,),
                      SizedBox(height: 5,),
                      Text("Chat", style: TextStyle(color: Colors.grey),)
                    ],
                  ),

                  Column(
                    children: const [
                      Icon(Icons.person, color: Colors.grey,),
                      SizedBox(height: 5,),
                      Text("Profile", style: TextStyle(color: Colors.grey),)
                    ],
                  )

                ],
              ),
            ),

          ],
        )
      ),

    );
  }
}
