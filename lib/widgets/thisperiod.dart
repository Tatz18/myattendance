import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myattendance/model/subjects.dart';
import 'colors.dart';

class ThisPeriod extends StatelessWidget {
  final Subject _subject;
  final DateTime _time;
  final DateFormat _formatter = new DateFormat.jm();
  final NumberFormat _percentformatter = new NumberFormat.percentPattern();

  ThisPeriod(this._subject, this._time);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        height: 150.0,
        decoration: new BoxDecoration(color: bigCardBackground2),
        child: new Column(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    _subject.subjectTeacher,
                    style:
                        new TextStyle(color: bigCardSmallText, fontSize: 22.0),
                  ),
                  new Text(
                    _formatter.format(_time),
                    style:
                        new TextStyle(color: bigCardSmallText, fontSize: 32.0),
                  ),
                  new Text(
                    _subject.subjectRoom,
                    style:
                        new TextStyle(color: bigCardSmallText, fontSize: 20.0),
                  ),
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Text(
                _subject.subjectName,
                style: new TextStyle(color: bigCardSmallText),
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    '${_subject.numberOfClassesAttended}/${_subject
                        .numberOfClasses}',
                    style:
                        new TextStyle(color: bigCardSmallText, fontSize: 20.0),
                  ),
                  new Text(
                    _percentformatter.format((_subject.numberOfClassesAttended /
                        _subject.numberOfClasses)),
                    style:
                        new TextStyle(color: bigCardSmallText, fontSize: 20.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
