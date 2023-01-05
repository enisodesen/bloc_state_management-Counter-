import 'package:bloc_state_management/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cubit Example')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
              child: Text(
            '$state',
            style: Theme.of(context).textTheme.headline3,
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          context.read<CounterCubit>().decrement();
        },
      ),
    );
  }
}
