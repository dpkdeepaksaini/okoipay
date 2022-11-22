

import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
import 'all_products_list.dart';
class SeeFev extends StatefulWidget {
  const SeeFev({Key? key}) : super(key: key);
  @override
  State<SeeFev> createState() => _SeeFevState();
}

class _SeeFevState extends State<SeeFev> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double sum=0;
    for(int i=0;i<empty.length;i++) {
      sum = sum + (empty[i].price*empty[i].qty);
    }
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('Favorite Products',style: TextStyle(fontSize: 30),),
            Container(
              color: Colors.blue.shade200,
              height: 400,
              width: 300,
              child: ListView.builder(itemCount: empty.length,itemBuilder: (context,int index){
                // var c=(empty[index].price.toInt()*empty[index].qty.toInt());
                //SeeFev.total=SeeFev.total+c;
                // sum = sum+c;
                // print(sum);
                // for(int i=0;i<=empty.length;i++){
                //   sum=sum+(empty[i].price.toInt()*empty[index].qty.toInt());
                // }
               return Card(
                 child: ListTile(
                      title: Text(empty[index].name,),
                      subtitle: Text((empty[index].price.toInt()*empty[index].qty.toInt()).toString()),
                      trailing: Container(
                        height: 40,
                        width: 170,
                        child: Row(
                          children: [
                            Container(
                              height: 40,width: 125,
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    setState(() {
                                      empty[index].qty++;
                                    });
                                  }, icon: Icon(Icons.add,color: Colors.red,)),
                                  Text(empty[index].qty.toString(),style: TextStyle(fontSize: 18),),
                                  IconButton(onPressed: (){
                                    setState(() {
                                      if(empty[index].qty.toInt()>1)
                                      {
                                        empty[index].qty--;

                                      }
                                    });
                                  }, icon: Icon(Icons.remove,color: Colors.red,)),
                                  // Text(qty.toString(),style: TextStyle(fontSize: 25),),
                                ],
                              ),
                            ),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    if(empty.contains(productlist[index].name)){
                                      empty.remove(empty[index]);
                                    }
                                    else{
                                      empty.remove(empty[index]);
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
                                      Icon(Icons.shopping_cart,color:empty.contains(empty[index])? Colors.yellow:Colors.black ),
                                      Text('Remove',style: TextStyle(fontSize: 12),),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )
                  ),
               );
              }),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Chat1Tab1();
              }));
            }, child: Text('Back')),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                height:50, width: 110,
                child: Text(sum.toString()),

                  // Text((empty[i].price.toInt()*empty[i].qty.toInt()).toString())

                // Text((empty[index].price.toInt()*empty[index].qty.toInt()).toString()),

                // Text(qty.toString(),style: TextStyle(fontSize: 25),),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
