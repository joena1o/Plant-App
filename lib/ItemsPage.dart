import 'package:flutter/material.dart';
import 'package:plant_app_ui/fontsStyle.dart';
import 'package:plant_app_ui/theme.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key, required this.image, required this.name}) : super(key: key);

  final AssetImage image;
  final String name;

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          leadingWidth: 60,
          leading: Padding(
              padding: const  EdgeInsets.only(left: 20),
              child:CircleAvatar(
          backgroundColor: Colors.white,
          child:IconButton(onPressed: (){
              Navigator.pop(context);
          }, icon:  const Icon(Icons.arrow_back_rounded, size: 25,)
          ))),
          expandedHeight: size.height*.5,
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.grey,
          floating: true,
          pinned: true,
          actions: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child:IconButton(onPressed: (){

                }, icon:  const Icon(Icons.favorite_outline, size: 25,)
                )),

            Container(width: 10,),

            CircleAvatar(
                backgroundColor: Colors.white,
                child:IconButton(onPressed: (){

                }, icon:  const Icon(Icons.share, size: 25,)
                )),

            Container(width: 20,)
          ],
          flexibleSpace:  FlexibleSpaceBar(
            centerTitle: true,
            background:  Image(
              fit: BoxFit.cover,
              image: widget.image
              )
          ),
        )];
      },
        body: Column(
          children: [


            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const SizedBox(height: 30,),

                      Row(
                        children: const [
                          Expanded(child:Text("Indoor Plant", overflow: TextOverflow.ellipsis, style: regularGrey,)),
                           Icon(Icons.star, size: 18, color: Colors.orange,),
                           SizedBox(width: 5,),
                           Text("4.9")
                        ],
                      ),

                      const SizedBox(height: 30,),

                      Text(widget.name, style: headingBold,),

                      const SizedBox(height: 25,),

                      const Text("Seller", style: smallBlack,),

                      const SizedBox(height: 10,),

                      Row(
                        children: [

                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                  width: 60,
                                  height: 60,
                                  image: AssetImage("assets/ivy.jpeg"),
                            )),

                          const SizedBox(width: 10,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hyefur Jonathan", style: smallBlack,),
                              SizedBox(height: 5,),
                              Text("Botanist")
                            ],
                          ),

                          const Spacer(),

                          const CircleAvatar(
                            backgroundColor: Color(0xfff7f6f6),
                            child: Icon(Icons.chat),
                          ),

                          const SizedBox(width: 10,),

                          const CircleAvatar(
                            backgroundColor: Color(0xfff7f6f6),
                            child: Icon(Icons.call),
                          )

                        ],
                      ),

                      const SizedBox(height: 25,),

                      const Text("Plant Details", style: headingBold,),

                      const SizedBox(height: 15,),

                      const Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt",
                      style: smallGrey,)


                    ],
                  ),
                ),
              ),
            ),


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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Total Price", style: regularGrey,),
                      SizedBox(height: 3,),
                      Text("\$25.00", style: headingBold,)
                    ],
                  ),

                  const SizedBox(width: 60,),

                  Expanded(child:ActionChip(
                    onPressed: (){

                    },
                    shadowColor: Colors.lightGreen,
                    disabledColor: Colors.white,
                    backgroundColor: primary,
                    surfaceTintColor: Colors.lightGreen,
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.shopping_cart_checkout_sharp, color: Colors.white,),
                          Text("Add to cart", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ))



                ],
              ),
            ),

          ],

         )
    ));
  }
}
