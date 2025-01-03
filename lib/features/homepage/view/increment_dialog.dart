import 'package:bloc_prova/features/homepage/controller/bloc/increment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementDialog extends StatelessWidget {
  const IncrementDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pop up increment'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<IncrementBloc, IncrementState>(
                builder: (context, state) {
                  return Text(
                    '${state.value}',
                    style: const TextStyle(fontSize: 33),
                  );
                },
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Invia l'evento IncrementPressed al bloc.
                      context
                          .read<IncrementBloc>()
                          .add(const DecrementPressed());
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: () {
                      // Invia l'evento IncrementPressed al bloc.
                      context
                          .read<IncrementBloc>()
                          .add(const IncrementPressed());
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
