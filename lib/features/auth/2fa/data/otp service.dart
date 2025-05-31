import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitfusion/features/auth/2fa/data/twilio_service.dart';

class OTPService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TwilioService _twilio = TwilioService();

  Future<void> sendOTP(String phone) async {
    final otp = _generateOTP();
    await _cacheOTP(phone, otp);
    await _twilio.sendSMS(to: phone, body: 'Your OTP: $otp');
  }

  String _generateOTP() => (100000 + Random().nextInt(900000)).toString();
}￼Enter
