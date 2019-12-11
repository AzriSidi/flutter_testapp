import 'package:flutter/material.dart';
import 'Product.dart';
import 'ProductPage.dart';

class ProductList extends StatelessWidget { 
   ProductList({Key key, this.title}) : super(key: key);
   final String title; 
   final items = Product.getProducts(); 
   
   @override 
   Widget build(BuildContext context) { 
      return Scaffold( appBar: AppBar(title: Text("Product Listing")), 
      body: ListView.builder( 
         itemCount: items.length, 
         itemBuilder: (context, index) {
            return GestureDetector( 
               child: ProductBox(item: items[index]), 
               onTap: () { 
                  Navigator.push( 
                     context, MaterialPageRoute( 
                        builder: (context) => ProductPage(item: items[index]), 
                     ), 
                  ); 
               }, 
            ); 
          }, 
      )
    ); 
  } 
}

class ProductBox extends StatelessWidget {
   ProductBox({Key key, this.item}) : super(key: key); 
   final Product item;
   
   Widget build(BuildContext context) {
      return Container(
         padding: EdgeInsets.all(2), 
         height: 140, 
         child: Card(
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children: <Widget>[ 
                  Image.asset("assets/img/" + this.item.image), 
                  Expanded( 
                     child: Container( 
                        padding: EdgeInsets.all(5), 
                        child: Column( 
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                           children: <Widget>[ 
                              Text(this.item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Touch for detail"),
                           ], 
                        )
                     )
                  ) 
               ]
            ), 
         )
      ); 
   } 
}