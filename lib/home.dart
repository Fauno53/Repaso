import 'package:flutter/material.dart';
import 'package:repaso2/SecondPage.dart';
import 'input_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String inputData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Bienvenido",
              style: TextStyle(fontSize: 50),
            ),
            Image.asset(
              'lib/assets/DashPNG.png',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final result = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return InputDialog();
                      },
                    );

                    if (result != null) {
                      setState(() {
                        inputData = result;
                      });

                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(
                            data: result,
                            updateFunction: (String data, int random) {},
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Botón 1'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Botón 2'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'PG.1==> $inputData',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
