import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/tic_tac_toy/data.dart';
// import 'package:provider1/jesondemo.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiProvider(providers: [

      ChangeNotifierProvider(create: (context) => data1(),),

    ],
      child: first1(),

    ),
  ));
}
class first1 extends StatelessWidget {
  // const first({super.key});

  @override
  Widget build(BuildContext context) {
    data1 d=Provider.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic tac toe"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[0]==false? d.get("0") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[0]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[1]==false ? d.get("1") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[1]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[2]==false? d.get("2") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[2]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[3]==false? d.get("3") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[3]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[4]==false ? d.get("4") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[4]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[5]==false? d.get("5") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[5]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[6]==false? d.get("6") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[6]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[7]==false ? d.get("7") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[7]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () => ("${d.is_win == false && d.s[8]==false? d.get("8") : null}"),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.all(10),
                  color: Colors.brown,
                  child:Text(
                    "${d.l[8]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text("${d.msg}"),
          ),
          Container(child: Text(""),),
          ElevatedButton(onPressed: () {
            d.data();
            // Navigator.pop(context);
          },
              child: Text("RESET")),

      // Text("${d.msg}")
        ],
      ),
      // body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //
      //   children: [
      //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //             Container(
      //               alignment: Alignment.center,
      //               color: Colors.purpleAccent,
      //               width: 100,
      //               height: 100,
      //             ),
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //       ],
      //     ),
      //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //       ],
      //     ),
      //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           color: Colors.purpleAccent,
      //           width: 100,
      //           height: 100,
      //         ),
      //       ],
      //     )
      //   ],
      //
      // ),

    );
  }
}
