import 'package:bloc_prova/features/homepage/controller/bloc/background_color_bloc.dart';
import 'package:bloc_prova/features/homepage/controller/bloc/show_icon_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BackgroundColorBloc()),
        BlocProvider(create: (_) => ShowIconBloc())
      ],
      child: BlocBuilder<BackgroundColorBloc, BackgroundColorState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: state.color,
            body: Column(
              children: [
                Container(
                  width: double.infinity,     // per riempire sempre tutta la riga
                  color: Colors.lightBlueAccent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.white),            icon: const Icon(Icons.circle_sharp, color: Colors.white,             shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.black),            icon: const Icon(Icons.circle_sharp, color: Colors.black,             shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.indigoAccent),     icon: const Icon(Icons.circle_sharp, color: Colors.indigoAccent,      shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.blue),             icon: const Icon(Icons.circle_sharp, color: Colors.blue,              shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.blueAccent),       icon: const Icon(Icons.circle_sharp, color: Colors.blueAccent,        shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.lightBlueAccent),  icon: const Icon(Icons.circle_sharp, color: Colors.lightBlueAccent,   shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.cyanAccent),       icon: const Icon(Icons.circle_sharp, color: Colors.cyanAccent,        shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.green),            icon: const Icon(Icons.circle_sharp, color: Colors.green,             shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.lime),             icon: const Icon(Icons.circle_sharp, color: Colors.lime,              shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.lightGreenAccent), icon: const Icon(Icons.circle_sharp, color: Colors.lightGreenAccent,  shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.redAccent),        icon: const Icon(Icons.circle_sharp, color: Colors.redAccent,         shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.red),              icon: const Icon(Icons.circle_sharp, color: Colors.red,               shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.orange),           icon: const Icon(Icons.circle_sharp, color: Colors.orange,            shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.yellowAccent),     icon: const Icon(Icons.circle_sharp, color: Colors.yellowAccent,      shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.yellow),           icon: const Icon(Icons.circle_sharp, color: Colors.yellow,            shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.pinkAccent),       icon: const Icon(Icons.circle_sharp, color: Colors.pinkAccent,        shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                        IconButton(onPressed: () => onPressedBackgroundColorButton(context, Colors.tealAccent),       icon: const Icon(Icons.circle_sharp, color: Colors.tealAccent,        shadows: [BoxShadow(blurRadius: 5, blurStyle: BlurStyle.solid, color: Colors.black, spreadRadius: 10) ],)),
                      ],
                    ),
                  )
                ),

                Container(
                  width: double.infinity,
                  color: Colors.cyan.shade200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.directions_car),       child: const Text('car', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.pedal_bike),           child: const Text('bike', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.directions_bus),       child: const Text('bus', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.train),                child: const Text('train', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.local_airport),        child: const Text('airport', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.local_shipping),       child: const Text('shipping', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.local_taxi),           child: const Text('taxi', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.airport_shuttle),      child: const Text('van', style: TextStyle(color: Colors.black),)),
                        TextButton(onPressed: () => onPressedChangeButton(context, Icons.directions_boat),      child: const Text('boat', style: TextStyle(color: Colors.black),)),
                      ],
                    ),
                  ),   
                ),

                Center(
                  child: BlocBuilder<ShowIconBloc, ShowIconState>(
                    builder: (context, showIconState) {
                      return Icon(
                        showIconState.icon, // Icona dinamica
                        size: 100, // Dimensione dell'icon
                        color: Colors.black, // Colore dell'icona
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
      )
    );
  }
}

void onPressedBackgroundColorButton(BuildContext context, Color color) {
  showDialog(
    context: context,
    builder: (BuildContext contextB) {
      return BlocProvider(
        create: (_) => BackgroundColorBloc(),
        child: AlertDialog(
          backgroundColor: Colors.black,
          title: const Text('Warning', style: TextStyle(color: Colors.white),),
          content: const Text('Vuoi confermare il cambiamento di sfondo?', style: TextStyle(color: Colors.white),),
          actions: [
            TextButton(
              onPressed: () {
                context.read<BackgroundColorBloc>().add(BackgroundColorPressed(color));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sfondo cambiato'),
                    showCloseIcon: true,
                  ),
                );
                Navigator.of(contextB).pop();
              },
              child: const Text('Conferma', style: TextStyle(color: Colors.lightGreen),),
            ),
            TextButton(
              onPressed: () => Navigator.of(contextB).pop(),
              child: const Text('Annulla', style: TextStyle(color: Colors.red),),
            ),
          ],
        ),
      );
    },
  );
}


void onPressedChangeButton(BuildContext context, IconData icon) {
  showDialog(
    context: context,
    builder: (BuildContext contextB) {
      return BlocProvider(
        create: (_) => ShowIconBloc(),
        child: AlertDialog(
          backgroundColor: Colors.black,
          title: const Text('Warning', style: TextStyle(color: Colors.white),),
          content: const Text('Vuoi confermare il cambiamento di icona?', style: TextStyle(color: Colors.white),),
          actions: [
            TextButton(
              onPressed: () {
                context.read<ShowIconBloc>().add(ShowIconPressed(icon));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Icona cambiata'),
                    showCloseIcon: true,
                  ),
                );
                Navigator.of(contextB).pop();
              },
              child: const Text('Conferma', style: TextStyle(color: Colors.lightGreen),),
            ),
            TextButton(
              onPressed: () => Navigator.of(contextB).pop(),
              child: const Text('Annulla', style: TextStyle(color: Colors.red),),
            ),
          ]
        )
      );
    },
  );
}