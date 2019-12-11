import 'package:flutter/material.dart';
import 'Product.dart';

class ProductPage extends StatelessWidget { 
   ProductPage({Key key, this.item}) : super(key: key); 
   final Product item; 
   
   @override 
   Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar( 
            title: Text(this.item.name), 
         ), 
         body: Center(
            child: Container(
               padding: EdgeInsets.all(0),
               child: Column(
                  children: <Widget>[
                     SizedBox(height: 20),
                     Image.asset("assets/img/" + this.item.image), 
                     Expanded(                       
                        child: Container(
                           padding: EdgeInsets.all(0), 
                           child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 20),
                                Text(
                                    this.item.name,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                                SizedBox(height: 10), 
                                Text(
                                    this.item.description, style: TextStyle(
                                      fontSize: 15,
                                    )
                                ),
                                SizedBox(height: 10), 
                                Text("Price: " + this.item.price.toString(), style: TextStyle(
                                      fontSize: 15,
                                    )
                                ),
                              ], 
                           )
                        )
                     )
                  ]
               ), 
            ),
         ) 
      ); 
   } 
}