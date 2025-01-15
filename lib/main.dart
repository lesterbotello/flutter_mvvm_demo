import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main_view_model.dart';

void main() {
  runApp(ProviderScope(child: MainApp())); // Need to provide a scope for the app
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content = ref.watch(contentProvider);
    final contentViewModel = ref.read(contentProvider.notifier);
    final _messengerKey = GlobalKey<ScaffoldMessengerState>();

    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(title: Text('MVVM with Riverpod')),
        body: Center(
          child: Column(
            children: [
              TextField(
                onChanged: (text) {
                  contentViewModel.updateContent(text);
                },
                decoration: InputDecoration(labelText: 'Enter text'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  _messengerKey.currentState!.showSnackBar(
                    SnackBar(content: Text('Submitted: $content')),
                  );
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 16),
              Text('Submitted Content: $content',
                  style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
