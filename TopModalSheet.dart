import 'package:flutter/material.dart';

class TopModalSheet1 extends StatelessWidget {
  const TopModalSheet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Container()),
                MaterialButton(
                  onPressed: () => topmodalsheet(context),
                  color: Colors.white,
                  elevation: 5,
                  child: const Text("Show TopModal"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  topmodalsheet(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 500),
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, _, __) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Card(
                  child: Center(
                child: Text(
                  "Hello, there!!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              )),
            ),
          ],
        );
      },
    );
  }
}

