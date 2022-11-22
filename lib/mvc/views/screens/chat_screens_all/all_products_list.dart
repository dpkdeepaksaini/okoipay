import 'package:flutter/material.dart';
import 'package:okoipay/mvc/model/my_listile_models.dart';
import 'package:okoipay/mvc/model/product_model.dart';
import 'package:okoipay/mvc/views/screens/chat_screens_all/chat2_screen.dart';
import 'package:okoipay/mvc/views/screens/chat_screens_all/add_to_cart_products.dart';

import 'faverote-products.dart';

class Chat1Tab1 extends StatefulWidget {
  const Chat1Tab1({Key? key}) : super(key: key);

  @override
  State<Chat1Tab1> createState() => _Chat1Tab1State();
}

class _Chat1Tab1State extends State<Chat1Tab1> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text('All products list',style: TextStyle(fontSize: 30),),
              Container(
                color: Colors.green.shade200,
                height: 500,
                width: 300,
                child: ListView.builder(
                  itemCount: productlist.length,
                    itemBuilder: (context,int index){
                  return ListTile(
                      title: Text(productlist[index].name),
                      subtitle: Text(productlist[index].price.toString()),
                      trailing: InkWell(
                          onTap: (){
                            setState(() {
                              if(empty.contains(productlist[index])){

                                empty.remove(productlist[index]);
                                total.remove(productlist[index].price.toInt());
                             //   total.add(productlist[index].price);


                              }
                              else{
                                empty.add(productlist[index]);
                                total.add(productlist[index].price.toInt());
                              }
                            });
                            print('hii');
                            print(empty.toString());
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Column(
                              children: [
                                Icon(Icons.shopping_cart,color: empty.contains(productlist[index])? Colors.yellow : Colors.black),
                                Text(empty.contains(productlist[index])?'Remove':'Add Cart',style: TextStyle(fontSize: 10),),
                              ],
                            ),
                          ))
                  );
                }),
              ),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SeeFev();
                }));
              }, child: Text('see only feverot')),
              // Container(
              //   height: 200,
              //   width: 300,
              //   child: ListView.builder(
              //       itemCount: fevproduct.length,
              //       itemBuilder: (context,int index){
              //         return ListTile(
              //             title: Text(fevproduct[index].toString()),
              //             trailing: Icon(Icons.star,color:Colors.yellow )
              //         );
              //       }),
              // ),

            ],
          )),
    );
  }
}
