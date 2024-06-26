import 'package:flutter/material.dart';
import 'package:plant_app_ui/theme.dart';

class SpecialCarousel extends StatelessWidget {
  const SpecialCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List specials = ["special-1.jpeg", "special-2.jpeg", "special-3.jpeg"];
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: size.width,
      height: size.height*.22,
      child: ListView.builder(
        itemCount: specials.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, i){
          return Container(
            width: size.width*.78,
            height: size.height*.22,
            margin: const EdgeInsets.only(right: 15),
            child: Stack(
              children: [

                SizedBox(
                  width: size.width*.78,
                  height: size.height*.22,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child:Image(
                        fit: BoxFit.cover,
                      image: AssetImage("assets/Specials/${specials[i]}")))
                ),

                Positioned(
                    top: 0,
                    child: Opacity(
                        opacity: .3,
                        child:Container(
                        width: size.width*.78,
                        height: size.height*.22,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                        )))),

                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),  
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: const Text("Limited Time!", style:  TextStyle(fontSize: 10,
                        color: Colors.black
                        ),
                      )
                  ),
                ),

                Positioned(
                    bottom: 20,
                    left: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        const  Text("All indoor plants Available | T&C Applied",
                          style: TextStyle(color: Colors.white, fontSize: 10),),

                        const SizedBox(width: 60,),

                        Container(
                            decoration: BoxDecoration(
                                color: yellow,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                            child: const Text("Claim", style:  TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),)
                        )

                      ],
                    )
                )

              ],
            ),

          );
        },
      ),
    );
  }
}
