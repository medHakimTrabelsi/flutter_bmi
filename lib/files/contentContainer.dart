import 'package:flutter/material.dart';

class contentContainer extends StatelessWidget {
  contentContainer(
      {@required this.couleur, this.containerChild, this.onPress});
  final Color couleur;
  final Widget containerChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: containerChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: couleur, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
