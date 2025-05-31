import 'package:flutter_test/flutter_test.dart';
import 'package:fitfusion/features/auth/2fa/data/otp_service.dart';

void main() {
  test('OTP generation returns 6 digits', () {
    final otp = OTPService().generateOTP();
    expect(otp.length, 6);
  });
}￼Enter
