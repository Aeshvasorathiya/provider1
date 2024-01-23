import 'package:flutter/foundation.dart';

class myclass extends ChangeNotifier
{
  int sum=0;
  fun_sum(String a,String b)
  {
    sum=int.parse(a)+int.parse(b);
    notifyListeners();
  }
}