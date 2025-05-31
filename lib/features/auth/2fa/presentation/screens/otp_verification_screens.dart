import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  final String phoneNumber;
  
  const OTPVerificationScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify OTP')),
      body: Center(
        child: Column(
          children: [
            Text('Enter OTP sent to $phoneNumber'),
            const OTPInputField(),
            ElevatedButton(
              onPressed: () => _verifyOTP(context),
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}￼Enter
