import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

  @override
  void dispose() {
    // Dispose of controllers and focus nodes to prevent memory leaks
    otpController1.dispose();
    otpController2.dispose();
    otpController3.dispose();
    otpController4.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildOtpTextField(otpController1, focusNode1, focusNode2),
                SizedBox(width: 10,),
                buildOtpTextField(otpController2, focusNode2, focusNode3),
                SizedBox(width: 10,),
                buildOtpTextField(otpController3, focusNode3, focusNode4),
                SizedBox(width: 10,),
                buildOtpTextField(otpController4, focusNode4, null),
              ],
            ),
            SizedBox(height: 20), // Add spacing between OTP fields and button
            ElevatedButton(
              onPressed: () {
                // Implement verify logic here
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOtpTextField(
      TextEditingController controller,
      FocusNode currentFocusNode,
      FocusNode? nextFocusNode,
      ) {
    return Container(
      width: 50.0,
      child: Center( // Center the text input
        child: TextFormField(
          controller: controller,

          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder() ,

          ),
      // Allow only one character input
          focusNode: currentFocusNode,
          onChanged: (value) {
            if (value.isNotEmpty) {
              currentFocusNode.unfocus();
              if (nextFocusNode != null) {
                nextFocusNode.requestFocus();
              }
            }
          },
        ),
      ),
    );
  }}

