import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        title: Text("Cars",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications_none,color: Colors.red,)),
          IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart,color: Colors.red,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                    singleTab(false, "Black"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),


            ],
          ),
        ),
      ),

    );
  }


  Widget singleTab(bool type,String text){
    return AspectRatio(
        aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: type ? Colors.red : Colors.white,
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 18: 16),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        ),
          boxShadow: [
           BoxShadow(
            color: Colors.grey.shade400,
           blurRadius: 10,
           offset: Offset(0,10),
          ),
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                 Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("PDP Car",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 10,),
                Text("Electric",style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),)
              ],
            ),
            Text("100\$",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 115,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
