import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _nowDate = DateTime.now();

  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() async {
    //  showDatePicker(
    //    context:context,
    //    initialDate:_nowDate,
    //    firstDate:DateTime(1980),
    //    lastDate:DateTime(2100),
    //  ).then((result){
    //     print(result);
    //  });

    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      //  locale: Locale('zh'),      //非必须
    );

    //  print(result);

    setState(() {
      if (result != null) {
        this._nowDate = result;
      }
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(context: context, initialTime: _nowTime);
    setState(() {
      if (result != null) {
        this._nowTime = result;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //  var now =DateTime.now();
    // print(now);  //2019-06-08 12:08:10.140421

    // print(now.millisecondsSinceEpoch);  //1559967090998

    /// print(DateTime.fromMillisecondsSinceEpoch(1559967090998));  //2019-06-08 12:11:30.998

    // 2019-06-08   2019/06/08   2019年06月08
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));    //2019年06月08
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showTimePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
