import 'package:codigo_qr/ui/widgets/general_widget.dart';
import 'package:codigo_qr/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            )
          ]),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
                ),
                divider3,
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                  style: TextStyle(height: 1.2, color: Colors.black54),
                ),
                divider6,
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.iconCalendar,
                      height: 16.0,
                      color: Colors.black54,
                    ),
                    Text(
                      "12/12/2022",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    dividerWidth6,
                    SvgPicture.asset(
                      Assets.iconTime,
                      height: 16.0,
                      color: Colors.black54,
                    ),
                    Text(
                      "10:30 am",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SvgPicture.asset(Assets.iconLink)
        ],
      ),
    );
  }
}
