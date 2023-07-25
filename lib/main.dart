import 'package:counter_bloc/cubit/counter_cubit_cubit.dart';
import 'package:counter_bloc/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterCubitCubit>(
        create: (context) => CounterCubitCubit(),
        child: HomePage(),
      ),
    );
  }
}
