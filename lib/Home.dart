import 'package:flutter/material.dart';
import 'Task Page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome To" ),
                const Text("Plan IT", style: TextStyle(fontSize: 50, fontWeight:FontWeight.w900)),
                SizedBox(
                  height: size.height*0.4,
                ),
                const Text(
                  "Your Personal task management \nand planning solution", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const TaskPage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top:20), padding: const EdgeInsets.symmetric(vertical:10, horizontal:45), decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.75), borderRadius: BorderRadius.circular(5)
                  ),
                    child: const Text("Let's get started", style: TextStyle(color:Colors.white)),
                  ),
                )
              ],
            )
        )
    );
  }
}

