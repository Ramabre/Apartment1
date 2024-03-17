
import 'package:flutter/material.dart';
import 'package:drug/profile.dart'; // Assuming these imports are correct
import 'package:drug/realty.dart'; // Assuming these imports are correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    double width= MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore Property",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: li.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile(pro: li[i],)),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset(li[i].img, width: width, height: 100, fit: BoxFit.cover),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 88,
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                           padding: EdgeInsets.only(right: 10,left: 10),
                            width: width,
                            child:Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      li[i].property,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                     "\$"+li[i].price.toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(
                                        li[i].city,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(Icons.electric_meter),
                                      Text(
                                        li[i].area.toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white),
                                      ),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 14,),
                                      Text(
                                        li[i].review.toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )  
                            ]),

                              ],
                            )

                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, i) => Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

