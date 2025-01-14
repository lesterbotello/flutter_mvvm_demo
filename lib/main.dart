import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'main_view_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      builder: (context, model, child) => MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: model.updateContent,
                    decoration: InputDecoration(
                      labelText: 'Enter text',
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: model.submit,
                    child: Text('Submit'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    model.labelText,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
