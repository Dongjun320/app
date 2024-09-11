import 'dart:convert';

import 'package:app/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:easy_extension/easy_extension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Note : 로그인 API 호출
  void _onFetchedApi() async {
    final loginData = {
      'email': '202030301@daelim.ac.kr',
      'password': '202030301'
    };

    final response =
        await http.post(Uri.parse(authUrl), body: jsonEncode(loginData));

    Log.green({
      'status': response.statusCode,
      'body': response.body,
    });
  }

  //Note : 타이틀 텍스트 위젯
  List<Widget> _buildTitleText() {
    return [
      Text('Hello Again',
          style:
              GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
      15.heightBox,
      Text('Wellcome back you\'re\n been missed! ',
          style: GoogleFonts.poppins(fontSize: 24))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          double.infinity.widthBox,
          ..._buildTitleText(),
        ],
      )),
    );
  }
}
