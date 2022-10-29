import 'package:codigo_qr/ui/general/colors.dart';
import 'package:codigo_qr/ui/widgets/general_widget.dart';
import 'package:codigo_qr/ui/widgets/text_fiel_normal_widget.dart';
import 'package:codigo_qr/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandSecondaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    divider20,
                    Container(
                      width: 48,
                      height: 4.5,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    divider20,
                    Text(
                      "Nuevo registro",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff1E1E1E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    divider6,
                    Text(
                      "Por favor ingresa todos los datos solicitados a continuación",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 1.6,
                        color: Color(0xff1E1E1E).withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    divider30,
                    TextFieldNormalWidget(
                      text: "Titulo",
                      icon: Assets.iconTitle,
                    ),
                    divider20,
                    TextFieldNormalWidget(
                      text: "Descripcion",
                      icon: Assets.iconDescription,
                      maxLines: 4,
                    ),
                     SizedBox(
                      width: 200,
                      height: 200,
                      child: QrImage
                      (
                        data: "https://www.youtube.com/watch?v=XUwzASyHr4Q&ab_channel=WebDevSimplified",
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.yellow,

                        embeddedImage: NetworkImage("https://images.pexels.com/photos/13313434/pexels-photo-13313434.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
