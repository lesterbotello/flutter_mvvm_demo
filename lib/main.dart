import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_mvvm_demo/main_view_model.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final MainViewModel viewModel = Get.put(MainViewModel());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MVVM with GetX'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  viewModel.content.value = value;
                },
                decoration: InputDecoration(
                  labelText: 'Enter content',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: viewModel.updateLabel,
                child: Text('Submit'),
              ),
              SizedBox(height: 20),
              Obx(
                () => Text(
                  viewModel.content.value,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
