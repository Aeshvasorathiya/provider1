import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: first(),
    debugShowCheckedModeBanner: false,
  ));
}
class first extends StatefulWidget {
  // const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<Map> l=[
    {
      'name':"jinal",
      'contact':4589678956,
      'marks':{
        'sub1':{'theyory':80,'practical':77},
        'sub2':{'theyory':85,'practical':78},
        'sub3':{'theyory':70,'practical':60},

      },
    },
    {
      'name':"mitali",
      'contact':7864789056,
      'marks':{
        'sub1':{'theyory':85,'practical':97},
        'sub2':{'theyory':95,'practical':70},
        'sub3':{'theyory':77,'practical':69},

      },
    },
    {
      'name':"vruti",
      'contact':8965875214,
      'marks':{
        'sub1':{'theyory':90,'practical':97},
        'sub2':{'theyory':75,'practical':78},
        'sub3':{'theyory':68,'practical':68},

      },
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemCount: l.length,
        itemBuilder: (context, index) {
        Map m=l[index]['marks'];
        return ExpansionTile(
          title: Text("${l[index]['name']}"),
          subtitle: Text("${l[index]['contact']}"),
          children:
            m.entries.map((e) => Text("${e.key}:Theyory: ${e.value['theyory']}  Practical: ${e.value['practical']}")).toList(),

        );
      },),
    );
  }
}
