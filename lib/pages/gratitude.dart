import 'package:flutter/material.dart';

class Gratitude extends StatefulWidget {
  final int radioGroupValue;

  Gratitude({Key key, @required this.radioGroupValue}): super(key:key);

  @override
  _GratitudeState createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  List<String> _gratitudeList = List();
  String _selectedGratitude;
  int _radioGroupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _selectedGratitude),
          )
        ],
      ),
      body: Row(
        children: <Widget>[
          Radio(
            value: 0,
            groupValue: _radioGroupValue,
            onChanged: (index) => _radioOnChanged(index),
          ),
          Text('Family'),
          Radio(
            value: 1,
            groupValue: _radioGroupValue,
            onChanged: (index) => _radioOnChanged(index),
          ),
          Text('Friends'),
          Radio(
            value: 2,
            groupValue: _radioGroupValue,
            onChanged: (index) => _radioOnChanged(index),
          ),
          Text('Coffee')
        ],
      ),
    );
  }

  @override
  void initState() {
    _gratitudeList..add('Family')..add('Friends')..add('Coffee');
    _radioGroupValue = widget.radioGroupValue;
    super.initState();
  }

  void _radioOnChanged(int index){
    setState(() {
      _radioGroupValue = index;
      _selectedGratitude = _gratitudeList[index];
      print('_selectedRadioValue $_selectedGratitude');
    });
  }
}
