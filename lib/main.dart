import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  //runApp(MyApp());
  //List<int> elements = [21, 16, 8, 25, 10, 98, 24];
  List<int> elements = [5,36,12,4,2,58,95,100,3,58];
  BubbleSort bubbleSort = new BubbleSort();
  print(bubbleSort.sort(elements).toString());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class BubbleSort{

  List<int> sort(List<int> listElements){
    int countElements = listElements.length;
    int countOfPasses = 1;
    while(countOfPasses<countElements){
      for (int i=0; i<countElements-1; i++){
        if(listElements[i]> listElements[i+1]){
          int maxElement=listElements[i+1];
          listElements[i+1] = listElements[i];
          listElements[i]=maxElement;
        }
      }
      countOfPasses++;
    }
    return listElements;
  }
}