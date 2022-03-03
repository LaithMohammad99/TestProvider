import 'package:flutter/cupertino.dart';

class ProviderCounter  with ChangeNotifier{
   late int c=0;

  void counter(){

    c++;
    notifyListeners();
  }
  //here
}