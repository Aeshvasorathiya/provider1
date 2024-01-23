import 'package:flutter/foundation.dart';

class data1 extends ChangeNotifier
{
  String msg = "";
  String a1 = "";
  int temp = 0;
  List l=List.filled(9, "");
  int s1=0;
  bool is_win = false;
  // RxList m=List.filled(9, false).obs;
  List s=List.filled(9,false );


  get(String a)
  {
    s1=int.parse(a);
    if (temp% 2== 0) {
      l[s1]="X";
    }
    else if(temp% 2==1)
    {
      l[s1]="O";
    }
    s[s1]=true;
    temp++;
    win();
    notifyListeners();

    // if(l[s1]=="O")
    // {
    //   l[s1]="O";
    // }
    // else
    // {
    //   l[s1]="X";
    // }
    // }
    // else
    // {
    //   if(l[s1]=="X")
    //   {
    //     l[s1]="X";
    //   }
    //   else
    //   {
    //     l[s1]="O";
    //   }
    // }


    // data();
  }

  win() {
    if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[2] == "x" && l[4] == "X" && l[6] == "X") {
      msg = "player x is win";
      is_win = true;
    } else if (l[0] == "O" && l[1] == "O" && l[2] == "O" ||
        l[3] == "O" && l[4] == "O" && l[5] == "O" ||
        l[6] == "O" && l[7] == "O" && l[8] == "O" ||
        l[0] == "O" && l[3] == "O" && l[6] == "O" ||
        l[1] == "O" && l[4] == "O" && l[7] == "O" ||
        l[2] == "O" && l[5] == "O" && l[8] == "O" ||
        l[0] == "O" && l[4] == "O" && l[8] == "O" ||
        l[2] == "O" && l[4] == "O" && l[6] == "O") {
      msg= "player O is win";
      is_win= true;
    } else if (l[0] != "" &&
        l[1] != "" &&
        l[2] != "" &&
        l[3] != "" &&
        l[4] != "" &&
        l[5] != "" &&
        l[6] != "" &&
        l[7] != "" &&
        l[8] != "") {
      msg = "Match is drow";
    }
    notifyListeners();
  }

  data()
  {
    //
    // l.value = List.filled(l.length, "");
    //   is_win.value = false;
    msg = "";
    for(int i=0;i<l.length;i++)
    {
      l[i]="";
      is_win=false;
      s[i]=false;
      notifyListeners();
    }

  }
  notifyListeners();

}