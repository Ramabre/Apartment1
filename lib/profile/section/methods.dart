
import 'package:drug/profile/realty_m.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Available extends StatelessWidget {
   Available({super.key, required this.there, required this.name, required this.iconData});
  final bool there;
  final String name;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
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
          Icon(iconData ,size: 30,color: there ? Colors.white : Colors.black,),
          Text(
              name,
              style: TextStyle(
                  color: there ? Colors.white : Colors.black,fontSize: 14)
          ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({super.key,  required this.re});
        final realty re;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              re.property,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "\$"+re.price.toString(),
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
                    re.city,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 9,),
                  Icon(Icons.electric_meter,size: 13,color: Colors.white),
                  Text(
                    re.area.toString(),
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
                    re.review.toString(),
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
    );
  }
}


