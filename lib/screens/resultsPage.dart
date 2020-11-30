import 'package:flutter/material.dart';
import '../files/const.dart';
import '../files/contentContainer.dart';
import '../files/Button.dart';
import '../controller/Controller.dart';

class SecondPage extends StatelessWidget {
SecondPage({@required this.bmiResult, @required this.resultText});

  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Flutter Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results : ',
                style: kTitlestyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: contentContainer(
                couleur: kCurrentColor,
                containerChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiText,
                    ),
                 
                  ],
                ),
              )),
          BottomButton(
              onTap: () => Navigator.pop(context), title: 'Recalculate')
        ],
      ),
    );
  }
}
