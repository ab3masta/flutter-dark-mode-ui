import 'package:flutter/material.dart';
import 'package:flutter_darkmode_ui/allStyle/text_styles.dart';

class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTabTap;

  TabText({this.text, this.isSelected, this.onTabTap});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          style: isSelected ? selectedTabStyle : defaultTabStyle,
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: isSelected ? Colors.blue[300] : null,
                borderRadius:
                    isSelected ? BorderRadius.all(Radius.circular(10)) : null),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: isSelected ? 20 : 18,
                  fontFamily: "slabo"),
            ),
          ),
        ),
      ),
    );
  }
}
