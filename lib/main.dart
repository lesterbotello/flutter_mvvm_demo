import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/main_view_model.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final MainViewModel viewModel = MainViewModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListenableBuilder(
            listenable: viewModel,
            builder: (context, child) {
              return Column(
                children: [
                  TextField(
                    onChanged: (text) => viewModel.updateContent(text),
                    decoration: InputDecoration(
                      labelText: 'Enter content',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: viewModel.submitContent,
                    child: Text('Submit'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    viewModel.displayText,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
