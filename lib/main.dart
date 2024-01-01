import 'package:callly/screens/create_meeting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/createMeeting': (context) => const CreateMeeting(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Conference'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/createMeeting');
                },
              icon: const Icon(Icons.add),
              label: const Text('Create Meeting'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.add_ic_call),
              label: const Text('Join via code'),
            ),
          ],
        ),
      ),
    );
  }
}

