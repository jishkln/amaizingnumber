import 'package:amaigingnumbers/api/apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String resultText = "Enter the number to the text field ";
  int? enteredNumber;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.blue.shade200,
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .4,
              child: ListView(
                children: [
                  Text(
                      'Number : ${enteredNumber == null ? '' : enteredNumber.toString()}'),
                  Text(
                    resultText,
                    style: const TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: numberController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey,
                    focusColor: Colors.grey),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            ElevatedButton(
                onPressed: () async {
                  final number = int.parse(numberController.text);
                  final result = await getNumerResult(number: number);
                  // print(result.text);
                  numberController.clear();
                  setState(() {
                    resultText = result.text ?? "No data fount";
                    enteredNumber = number;
                  });
                },
                child: const Text("Enter")),
          ],
        ),
      )),
    );
  }
}
