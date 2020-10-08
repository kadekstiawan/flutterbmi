import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult(
      // ignore: non_constant_identifier_names
      {@required this.tinggi_badan,
      // ignore: non_constant_identifier_names
      @required this.berat_badan,
      // ignore: non_constant_identifier_names
      // ignore: non_constant_identifier_names
      @required this.input_nama,
      // ignore: non_constant_identifier_names
      @required this.input_umur,
      @required this.kelamin});

  // ignore: non_constant_identifier_names
  final int tinggi_badan;
  // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  // ignore: non_constant_identifier_names
  final int berat_badan;
  // ignore: non_constant_identifier_names
  final String input_nama;
  // ignore: non_constant_identifier_names
  final int input_umur;
  final String kelamin;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String hNama = input_nama;
    String hJK = kelamin;
    int hUmur = input_umur;
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              hNama,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              hJK,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              hUmur.toString(),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.red[600],
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
