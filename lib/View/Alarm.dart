import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AlarmState();
}
  class _AlarmState extends State<Alarm> {
    TimeOfDay _time = TimeOfDay.now();

    Future<void> _selectTime(BuildContext context) async {
      final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: _time
      );

      if (picked != null) {
        setState(() {
          _time = picked;
        });
      }
    }

      @override
      Widget build(BuildContext context) {
        return Center(
          child: Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.grey,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.9,
              height: 700,
              child: TextButton(
                onPressed: () => _selectTime(context),
                child: Column(
                    children: [
                      Expanded(child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.bed, size: 20, color: Colors.black),
                            Text("${
                                _time.hour.toString().padLeft(2, "0")}:${_time
                                .minute.toString().padLeft(2, "0")}",
                                style: TextStyle(fontSize: 30)
                            )
                          ]
                      ),
                      ),
                      Expanded(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text("月"),
                              onPressed: () => print("月"),
                            )
                          ]
                      )
                      )
                    ]
                ),
              )
          ),
        );
      }
    }