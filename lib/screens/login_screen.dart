import 'dart:math';
import 'package:app/config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
im

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Note : 로그인 API 호출
  void _onFetchedApi() async {
    final loginData = {
        'email': '',
        'password': ''
      };

      Log.green{{
        'status' : response.statusCode,
        'body' : response.body,
      }};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
           onPressed: (){
              _onFetchedApi();
           },
           child: const Text('Api 호출')),
        )
      ),
    );
  }
}
