
import 'package:e_commerce_animation/modal/Image_list.dart';
import 'package:e_commerce_animation/view/screen/Cart_page.dart';
import 'package:e_commerce_animation/view/screen/Home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(tag: 'hero',
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color(0xff3a3e46), Color(0xff25282d)],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Container(
                  height: 300,
                  width: 350,
                  child: Image.asset(
                    animation[liveIndex]['Images'],
                    fit: BoxFit.cover,
                  ),
                )),
            Column(
              children: [
                Container(
                  height: 449,
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text(animation[liveIndex]['Name'],style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                        ),SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(animation[liveIndex]['price'],style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            ),Spacer(),
                            CupertinoButton(padding: EdgeInsets.zero,
                              onPressed: () {
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
                            ),SizedBox(width: 10),
                            Text(num.toString(),style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),SizedBox(width: 10),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,size: 25,),SizedBox(width: 10),
                            Text('4.5',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(width: 10),
                            Text('1600 reviews',style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),SizedBox(height: 15),
                        Text('This simply refers to the camera’s sensor size. Sensor size determines image quality more than any other feature of the camera, especially something trivial like the number of megapixels. It’s why every current DSLR on the market will crush a smartphone in image quality.',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: 70,
                              child: Center(
                                child: Icon(
                                  Icons.message,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [Color(0xff3a3e46), Color(0xff25282d)],
                                ),
                              ),
                            ),
                            SizedBox(width: 80),
                            InkWell(onTap: () {
                              setState(() {
                                Cartlist.add(animation[liveIndex]);
                              });
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage(),));
                            },
                              child: Container(
                                height: 60,
                                width: 200,
                                child: Center(
                                  child: Text('Add to bag',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [Color(0xff3a3e46), Colors.black],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      gradient: LinearGradient(colors: [Color(0xff3a3e46),Color(0xff25282d)])),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
int num =1;