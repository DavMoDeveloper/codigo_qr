import 'package:codigo_qr/ui/pages/register_page.dart';
import 'package:flutter/material.dart';

class ScannerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
        },
      ),
    );
  }
}
