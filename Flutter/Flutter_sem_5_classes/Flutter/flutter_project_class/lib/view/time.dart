import 'package:flutter/material.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key});

  @override
  State<TimeView> createState() => _TimeViewState();
}

class _TimeViewState extends State<TimeView> {
  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Time ${time!.hour}:${time!.minute}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async{
                    TimeOfDay? newTime = await showTimePicker(context: context, initialTime: time!);
                    if(newTime != null){
                      setState(() {
                        time = newTime;
                      });
                    }
                  }, 
                  child: Text('Change Time'))
              ],
            ),
            Row(
              children: [
                Text(
                  'Time ${date!.day}/${date!.month}/${date!.year}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () async{
                    DateTime? newDate = await showDatePicker(context: context, initialDate: date!,
                    firstDate: DateTime(2000),lastDate: DateTime(2050));
                    if(newDate != null){
                      setState(() {
                        date = newDate;
                      });
                    }
                  }, 
                  child: Text('Change Date'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}