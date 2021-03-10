import 'package:flutter/material.dart';
import 'constant.dart';


class GenderCard extends StatelessWidget {
  final IconData genderIcon; 
  final String gender;
  GenderCard({this.genderIcon,this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Icon(
          genderIcon,
          size: 80.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(
          height:15.0
        ),
        Text(
          gender,
          style: textLabel ,
          
        )
      ]
    );
  }
}