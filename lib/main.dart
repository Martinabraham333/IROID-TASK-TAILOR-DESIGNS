import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tailor_design_app/presentation/bloc/fashion_bloc.dart';
import 'package:tailor_design_app/presentation/screens/home_screen.dart';
import 'injection_container.dart' as di;

void main() {
  di.init();
  runApp(BlocProvider(create: (_) => di.sl<FashionBloc>(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
