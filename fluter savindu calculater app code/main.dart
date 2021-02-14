import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Savi-Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String variable = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  void btnpressed(String btnText) {
    if (btnText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "*" ||
        btnText == "/" ||
        btnText == "%") {
      num1 = double.parse(variable);
      operand = btnText;

      _output = "0";
    } else if (btnText == ".") {
      if (_output.contains(".")) {
        print("Already contains a decimals");
        return;
      } else {
        _output = _output + btnText;
      }
    } else if (btnText == "=") {
      num2 = double.parse(variable);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + btnText;
    }
    print(_output);

    setState(() {
      variable = double.parse(_output).toStringAsFixed(2);
    });
  }

  //create a new function to same buttonn
  Widget buildButton(String bText) {
    return new Expanded(
      child: new OutlineButton(
        child: new Text(
          bText,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () => {btnpressed(bText)},
        color: Colors.black,
        padding: EdgeInsets.all(22.0),
        borderSide: BorderSide(color: Colors.black12),
        highlightedBorderColor: Colors.red,
      ),
    );
  } //end function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.centerRight,
              child: new Text(
                variable,
                style: TextStyle(
                    fontSize: 70.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //devided damma it pahala ewa pahalata yanawa serm adiyt
            new Expanded(
                child: new Divider(
              color: Colors.white,
              thickness: 5.3,
            )),

            Column(
              children: <Widget>[
                new Row(children: [
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("/")
                ]),
                new Row(children: [
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("*")
                ]),
                new Row(children: [
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("-")
                ]),
                new Row(children: [
                  buildButton("0"),
                  buildButton("00"),
                  buildButton("."),
                  buildButton("+")
                ]),
                new Row(children: [
                  buildButton("CLEAR"),
                  buildButton("="),
                ]),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
