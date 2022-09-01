import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/Home/tasks_list/task_widget.dart';

class TasksListsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 730)),
            lastDate: DateTime.now().add(Duration(days: 730)),
            onDateSelected: (date) {},
            showYears: true,
            leftMargin: 10,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: Theme.of(context).primaryColor,
            activeBackgroundDayColor: Colors.white,
            dotsColor: Theme.of(context).primaryColor,
            selectableDayPredicate: (date) => true,
            locale: 'en_ISO',
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) {
                return TaskWidget();
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
