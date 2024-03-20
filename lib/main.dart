
import 'package:drug/Detailes.dart';
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
    double height = MediaQuery.of(context).size.height;
    
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Text(
                "Explore Property",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Det()),
              );
            },
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage("assets/images/profilee.jpg"),
            ),
          )
           ] ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
              ),
            ),
            SizedBox(height: 13,),
            Padding(padding: EdgeInsets.zero,
              child: Row(
                children: [
                  Text("--", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold// Text color (optional)
                  ),),
                  Text(" Result Found", style: TextStyle(
                      fontSize: 16,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 3),
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

                        Container(
                          width: width,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue// Adjust the radius value as needed
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              li[i].img,
                             width: width,
                             height: 200,
                           fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10,top: 10),
                          child: Container(
                            width: 80,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                              // Background color
                            ),
                            child: Center(
                              child: Text(
                                "For Sale",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white, // Text color (optional)
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 2,
                          right: 2,
                          child: Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,size: 13,color: Colors.white,),
                                      Text(
                                        li[i].city,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 9,),
                                      Icon(Icons.electric_meter,size: 13,color: Colors.white),
                                      Text(
                                        li[i].area.toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        " Sq/m", style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 14,),
                                      Text(
                                        li[i].review.toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        " Reviews", style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )
                            ]),
                              ],
                            ),
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

