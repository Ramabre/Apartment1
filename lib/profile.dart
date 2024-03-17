
import 'package:flutter/material.dart';
import 'package:drug/realty.dart';
import 'package:drug/main.dart';
class Profile extends StatelessWidget {
   Profile({Key? key, required this.pro}) : super(key: key);

  final realty pro;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Column(
        children: [
          Image.asset(pro.img),
          Padding(padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pro.property,
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "\$${pro.price}",
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Row(
                        children: [
                          Icon(Icons.location_on,size: 15,color: Colors.grey,),
                          Text(
                            pro.city,
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,

                          ),
                          Icon(Icons.electric_meter,size: 15,color: Colors.grey,),
                          Text(
                            pro.area.toString(),
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 14,),
                          Text(
                            pro.review.toString(),
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      )
                    ]),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.grey.shade200,
                      child: 
                      Row(
                        children: [
                          Icon(Icons.bed,color: Colors.grey.shade700,),
                          Text(pro.roomNum.toString(), style: TextStyle(color: Colors.grey.shade700),),
                          Text(" Bedrooms", style: TextStyle(color: Colors.grey.shade700,),),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade200,
                      child:
                      Row(
                        children: [
                          Icon(Icons.bathtub_outlined,color: Colors.grey.shade700,),
                          Text(pro.bathNum.toString(), style: TextStyle(color: Colors.grey.shade700),),
                          Text(" Bathroom", style: TextStyle(color: Colors.grey.shade700,),),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade200,
                      child:
                      Row(
                        children: [
                          Icon(Icons.local_parking,color: Colors.grey.shade700,),
                          Text(pro.parkNum.toString(), style: TextStyle(color: Colors.grey.shade700),),
                          Text(" Parking", style: TextStyle(color: Colors.grey.shade700,),),

                        ],),),
                  ],
                ),
                SizedBox(height: 30,),
                Text("Description",style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,fontSize: 16),),
                SizedBox(height: 9,),
                Text(pro.description,style: TextStyle(fontSize: 14)),
                SizedBox(height: 50,),
                Text("Facilities",style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,fontSize: 16),),
                SizedBox(height: 9,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    available(pro.park,"parking",Icons.car_crash_outlined),
                    available(pro.cctv,"CCTV",Icons.videocam_off_outlined),
                    available(pro.security,"Security",Icons.security),
                    available(pro.ac,"AC",Icons.severe_cold_outlined)
                  ],
                )


              ],
            ),
          )
        ],
      )
    );
  }
}

Widget available (bool there,String name,IconData iconData){
  return Container(
    height: 70,
    width: 85,
      decoration: BoxDecoration(
      color: there? Colors.blue: Colors.white,
      border: Border.all(
      color: Colors.grey,
      width: 1.0,
  ),  borderRadius: BorderRadius.circular(20.0),
      ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(iconData ,size: 40,color: there ? Colors.white : Colors.black,),
    Text(
      name,
      style: TextStyle(
        color: there ? Colors.white : Colors.black,fontSize: 16)
      ),
      ],
    ),
  );
}