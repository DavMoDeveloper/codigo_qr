import 'package:codigo_qr/ui/general/colors.dart';
import 'package:codigo_qr/ui/widgets/button_normal_widget.dart';
import 'package:codigo_qr/ui/widgets/general_widget.dart';
import 'package:codigo_qr/ui/widgets/text_fiel_normal_widget.dart';
import 'package:codigo_qr/utils/assets.dart';
import 'package:codigo_qr/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegisterPage extends StatelessWidget {

  String valueQR;

  RegisterPage({required this.valueQR,});


  final _keyForm = GlobalKey<FormState>();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dniController = TextEditingController();

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
              padding: const EdgeInsets.only(top: 22),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _keyForm,
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
                          "Por favor ingresa todos los datos solicitados a continuación ",
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
                          text: "Título",
                          icon: Assets.iconTitle,
                          controller: _titleController,
                        ),

                        divider20,

                        TextFieldNormalWidget(
                          text: "Descripción",
                          icon: Assets.iconDescription,
                          maxLines: 3,
                          controller: _descriptionController,
                        ),

                        // divider20,
                        //
                        // TextFieldNormalWidget(
                        //   text: "DNI",
                        //   icon: Assets.iconTitle,
                        //   controller: _dniController,
                        //   type: InputTypeEnum.dni,
                        // ),


                        divider30,
                        const Text(
                          "Qr Generado",
                        ),
                        divider6,
                        QrImage(
                          size: 120,
                          data: valueQR,
                        ),
                        divider14,

                        ButtonNormalWidget(
                          text: "Registrar",
                          onPressed: (){
                            if(_keyForm.currentState!.validate()){

                            }
                          },
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}