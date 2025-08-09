import 'package:flutter/material.dart';

class TermsAndConditionScreen extends StatefulWidget {
  const TermsAndConditionScreen({super.key});

  @override
  State<TermsAndConditionScreen> createState() =>
      _TermsAndConditionScreenState();
}

class _TermsAndConditionScreenState extends State<TermsAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        centerTitle: true,
        title: const Text('Terms & Conditions'),
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Last updated date
              Text(
                'Last Updated: [Insert Date]',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),

              // Welcome paragraph
              const Text(
                'Welcome to Boostify! These Terms and Conditions ("Terms") govern your access to and use of the Boostify app ("App", "we", "our", or "us"). By using the app, you agree to comply with and be bound by these Terms. If you do not agree, please do not use Boostify.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),

              // Section 1
              const Text(
                '1. Acceptance of Terms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'By accessing or using Boostify, you agree to these Terms and our Privacy Policy. You must be at least 13 years old to use the app.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 2
              const Text(
                '2. Use of the App',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'You agree to use Boostify only for lawful purposes and in accordance with these Terms. You may not:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBulletPoint('Violate any laws or regulations'),
                    _buildBulletPoint(
                      'Interface with the app\'s security features',
                    ),
                    _buildBulletPoint(
                      'Attempt to reverse-engineer or tamper with the app',
                    ),
                    _buildBulletPoint(
                      'Use the app to harass, abuse, or harm others',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Section 3
              const Text(
                '3. User Accounts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'You may be required to create an account. You are responsible for maintaining the confidentiality of your login information and for all activities',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 4
              const Text(
                '4. Intellectual Property',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'All content, design elements, graphics, and trademarks within Boostify are owned by us or our licensors. You may not use any of our intellectual property without written permission.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 5
              const Text(
                '5. User Content',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'If you submit or upload content, you grant us a non-exclusive, royalty-free license to use, display, and distribute your content within the app. You are responsible for ensuring your content does not violate any laws or infringe on others\' rights.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 6
              const Text(
                '6. Termination',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'We may suspend or terminate your access to Boostify at any time, without notice, for conduct that we believe violates these Terms or is harmful to other users or the app.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 7
              const Text(
                '7. Disclaimers',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Boostify is provided "as is" and "as available." We make no warranties or guarantees about the availability, security, or accuracy of the app.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 8
              const Text(
                '8. Limitation of Liability',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'To the maximum extent permitted by law, we are not liable for any indirect, incidental, or consequential damages arising out of your use of Boostify.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 9
              const Text(
                '9. Changes to Terms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'We may update these Terms at any time. Continued use of the app after changes means you accept the new Terms. Please review them periodically.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 10
              const Text(
                '10. Governing Law',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'These Terms are governed by the laws of [Insert Country/State]. Any disputes will be resolved in the courts of [Insert Jurisdiction].',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Section 11
              const Text(
                '11. Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'If you have any questions about these Terms, please contact us at:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
