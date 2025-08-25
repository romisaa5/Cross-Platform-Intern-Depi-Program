import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session1/providers/cart_provider.dart';
import 'package:session1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Foodies',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5E60CE)),
          fontFamily: 'Roboto',
        ),
        home: HomeScreen(),
      ),
    );
  }
}
