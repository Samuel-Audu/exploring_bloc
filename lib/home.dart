import 'package:counter_bloc/cubit/counter_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubitCubit, CounterCubitState>(
            builder: (context, state) {
              return Text(
                state.counterValue.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              );
            },
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                tooltip: 'decrement',
                onPressed: (){
                  BlocProvider.of<CounterCubitCubit>(context).decrement();
                },
                child: Icon(Icons.remove),),
              FloatingActionButton(
                tooltip: 'increment',
                onPressed: (){
                  BlocProvider.of<CounterCubitCubit>(context).increment();
                },
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}