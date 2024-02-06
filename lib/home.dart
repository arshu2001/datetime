import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TimeOfDay? selectedTime;
  void  PickTime() async {

    var d=await showTimePicker(context: context,
        initialTime: TimeOfDay.now());
    setState(() {
      selectedTime=d;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async{

              PickTime();
            },
            child: Text('Time')


          ),
          Text(selectedTime!=null ? selectedTime!.format(context):'')
        ],
      ),
    );
  }
}
