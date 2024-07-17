
import 'package:e_commerce_animation/modal/Image_list.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(child: Text('Cart_Page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
      ),
      body: Column(
        children: [
          ListView.builder(shrinkWrap: true,itemCount: Cartlist.length,itemBuilder: (context, index) =>
              Container(margin: EdgeInsets.all(5),height: 150, width: 380, child: Row(
              children: [
                Container(height: 100,width:100,child: Image.asset(Cartlist[index]["Images"])),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Cartlist[index]["Name"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(right: 125),
                      child: Text(Cartlist[index]["price"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        InkWell(onTap: () {
                          setState(() {
                            num++;
                          });
                        },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xff3a3e46), Color(0xff25282d)],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('1',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(width: 10),
                        InkWell(onTap: () {
                          setState(() {
                            num--;
                          });
                        },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [Color(0xff3a3e46), Color(0xff25282d)],
                              ),
                            ),
                          ),
                        ),SizedBox(width: 50),
                        InkWell(onTap: () {
                          setState(() {
                           Cartlist.removeAt(index);
                          });
                        },child: Icon(Icons.delete,size: 25,color: Colors.white,))
                      ],
                    )
                  ],
                )
              ],
                          ),
                          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [Color(0xff3a3e46), Color(0xff25282d)],
              ),
                          ),
                        ),
           ),
          Spacer(),
          // Container(height: 100,width: 380,
          //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text('Total Quantity',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(height: 15),
          //       Text('Total Amount',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          //     ],
          //   ),
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(
          //     colors: [Color(0xff3a3e46), Color(0xff25282d)],
          //   ),
          //   ),
          // )
       ]
      ),
    );
  }
}
int num =1;


