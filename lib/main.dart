import 'package:flutter/material.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/bloc/selectedsong_bloc.dart';
import 'package:flutter_application_spotify/screens/playlist_screen/playlist_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedsongBloc(),
      child: MaterialApp(
          title: 'Flutter Spotify UI',
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
            scaffoldBackgroundColor: const Color(0xFF121212),
            primaryColor: Colors.black,
            hintColor: const Color(0xFF1DB954),
            iconTheme: const IconThemeData().copyWith(color: Colors.white),
            fontFamily: 'Montserrat',
            textTheme: TextTheme(
              displayMedium: const TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              headlineMedium: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[300],
                fontWeight: FontWeight.w500,
                letterSpacing: 2.0,
              ),
              bodyLarge: TextStyle(
                color: Colors.grey[300],
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
              bodyMedium: TextStyle(
                color: Colors.grey[300],
                letterSpacing: 1.0,
              ),
            ),
          ),
          home: const PlaylistScreen()),
    );
  }
}
