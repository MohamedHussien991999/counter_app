// ignore_for_file: avoid_print

import 'package:counter_app/modules/counter_app/cubit/cubit.dart';
import 'package:counter_app/modules/counter_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        CounterCubit.get(context).minis();
                        print(CounterCubit.get(context).counter);
                      },
                      child: const Text(
                        "Minus",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("${CounterCubit.get(context).counter}",
                        style: const TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  TextButton(
                      onPressed: () {
                        CounterCubit.get(context).plus();
                        print(CounterCubit.get(context).counter);
                      },
                      child: const Text(
                        "PLus",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
