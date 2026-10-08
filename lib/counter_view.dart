import 'package:bloc_demo/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<CounterCubit, int>(
    builder: (context, state) => Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('appbarTitle'),
      ),
      body: Column(
        children: [
          Text("Counter : $state"),
          OutlinedButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    ),
  );
}
