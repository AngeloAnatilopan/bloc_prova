import 'package:bloc_prova/features/homepage/controller/bloc/increment_bloc.dart';
import 'package:bloc_prova/features/homepage/view/body.dart';
import 'package:bloc_prova/features/homepage/view/increment_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Text('App'),
          TextButton.icon(
              onPressed: () => onPressedTextIconButton(context),
              icon: const Icon(Icons.control_point, color: Colors.white,),
              label: const Text('Increment', style: TextStyle(color: Colors.white),)),
        ]),
        backgroundColor: Colors.blue,
        // centerTitle: true,
        // leading: TextButton.icon(     // button a inizio
        //     onPressed: () => onPressedTextIconButton(context),
        //     icon: const Icon(Icons.exposure_rounded),
        //     label: const Text('Increment')),
        // leadingWidth: 150,
        /***********************************************************************************/
        // actions: [
        //   TextButton.icon(
        //       onPressed: () => onPressedTextIconButton(context),
        //       icon: const Icon(Icons.exposure_rounded),
        //       label: const Text('Increment')),
        // ],
      ),
      backgroundColor: Colors.white,
      body: const Body(),
    );
  }
}

void onPressedTextIconButton(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext contextB) {
        return BlocProvider(
          create: (_) => IncrementBloc(),
          child: const IncrementDialog(),
        );
      });
}
