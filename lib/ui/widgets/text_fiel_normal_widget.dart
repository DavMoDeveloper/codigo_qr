import 'package:codigo_qr/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/assets.dart';
import '../general/colors.dart';

class TextFieldNormalWidget extends StatelessWidget {

  String text;
  String icon;
  int? maxLines;

  TextFieldNormalWidget({
    required this.text,
    required this.icon,
    this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(" $text"),
          ],
        ),
        divider6,
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                offset: const Offset(4, 4),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              hintText: "Ingrese ${text.toLowerCase()}",
              hintStyle: TextStyle(
                color: kBrandSecondaryColor.withOpacity(0.45),
              ),
              prefixIcon: SvgPicture.asset(
                icon,
                height: 20,
                color: kBrandSecondaryColor.withOpacity(0.45),
                fit: BoxFit.scaleDown,
              ),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}