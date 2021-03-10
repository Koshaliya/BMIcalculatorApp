import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableCard.dart';
import 'GenderCard.dart';
import 'constant.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum genderValue { male, female }

class _InputPageState extends State<InputPage> {
  
  genderValue selectedGender;

  /*void updateClr(genderValue gender){
    if(gender==genderValue.male){
      if(maleCardClr==inactiveColor){
        maleCardClr =buttonColor;
        femaleCardClr =inactiveColor;
        print('male');
      }
      
    }
    else{
      if(femaleCardClr==inactiveColor){
        femaleCardClr =buttonColor;
        maleCardClr =inactiveColor;
        print('female');
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender=genderValue.male;
                      });
                    },
                    colour: selectedGender==genderValue.male ? buttonColor : inactiveColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender=genderValue.female;
                      });
                    },
                    colour: selectedGender==genderValue.female ? buttonColor : inactiveColor,
                    cardChild: GenderCard(
                      genderIcon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: buttonColor,
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  colour: buttonColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: buttonColor,
                ),
              )
            ]),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            height: kBottomContainer,
            width: double.infinity,
          )
        ]),
      ),
    );
  }
}
