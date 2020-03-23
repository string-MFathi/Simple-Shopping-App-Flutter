import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/FadeAnimation.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0,
        brightness: Brightness.dark,
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.grey[100],),
              onPressed: (){},
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(1, Text('Fashion' , style: TextStyle(fontSize: 30.0, color:Colors.white70 , fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          FadeAnimation(1, makeCategory(isActive: true, title: 'Men'),),
                          FadeAnimation(1.3, makeCategory(isActive: false, title: 'Women'),),
                          FadeAnimation(1.4, makeCategory(isActive: false, title: 'Girls'),),
                          FadeAnimation(1.5, makeCategory(isActive: false, title: 'Boys'),),
                          FadeAnimation(1.6, makeCategory(isActive: false, title: 'HomeWare'),),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0 , bottom: 2.0),
                      child: FadeAnimation(1,
                        Text('offer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.yellow[700],
                          ),
                        )
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              FadeAnimation(1.4, makeItems(images: "images/three.jpg")),
                              FadeAnimation(1.5,makeItems(images: "images/one.jpg")),
                              FadeAnimation(1.6, makeItems(images: "images/two.jpg"),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ],
                ),
              ),
    );
  }
}

Widget makeCategory({isActive , title}){
  return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1.5,
      child: Container(
      margin: EdgeInsets.only(right:10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isActive ? Colors.yellow[700] : Colors.black45,
      ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.black : Colors.grey[500],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
  ),
  );
}

Widget makeItems({images}){
  return AspectRatio(aspectRatio: 1 / 1.5,
   child: GestureDetector(
      child: Container(
      margin: EdgeInsets.only(right: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image:AssetImage(images),
          fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
              stops: [.2,.9],
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.2),
              ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite_border , color: Colors.yellow[700],),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                     '\$ 15.00',
                     style: TextStyle(
                       fontSize: 40,
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                     ),
                    ),

                    Text(
                      'FILA T-Shirt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
  ),
  ),
  );
}