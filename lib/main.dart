import 'package:counterapp/cubits/counterCubit.dart';
import 'package:counterapp/screens/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counterCubit(),
      child: MaterialApp(
        home: Homepage(),
      ),
    );
  }
}