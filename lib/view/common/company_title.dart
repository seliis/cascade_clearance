import "package:flutter/material.dart";

class CompanyTitle extends StatelessWidget {
  const CompanyTitle({
    super.key,
    this.fontSize = 16,
    this.copyrightMark = false,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
  final bool copyrightMark;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          "CASCADE",
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontSize: fontSize,
          ),
        ),
        Text(
          copyrightMark ? "CLEARANCE\u00A9" : "CLEARANCE",
          style: TextStyle(
            color: const Color(0XFFFD2F4A),
            fontWeight: FontWeight.w300,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
