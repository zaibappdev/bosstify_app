import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
        title: const Text('Privacy Policy'),
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
                'Last updated: December 15, 2023',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),

              // Introduction section
              const Text(
                'Introduction',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Welcome to Boostify\'s Privacy Policy.\n'
                'This document explains how we collect, use, and protect your personal information when you use our services.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // What Data We Collect section
              const Text(
                'What Data We Collect',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBulletPoint('Basic account information'),
                  _buildBulletPoint('Usage data and analytics'),
                  _buildBulletPoint('Device information'),
                  _buildBulletPoint('Location data (when permitted)'),
                  _buildBulletPoint('Communication preferences'),
                ],
              ),
              const SizedBox(height: 24),

              // How We Use Your Information section
              const Text(
                'How We Use Your Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBulletPoint('Provide and improve our services'),
                  _buildBulletPoint('Personalize your experience'),
                  _buildBulletPoint('Send important updates'),
                  _buildBulletPoint('Ensure platform security'),
                  _buildBulletPoint('Analyze usage patterns'),
                ],
              ),
              const SizedBox(height: 24),

              // Data Storage and Protection section
              const Text(
                'Data Storage and Protection',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'We implement industry-standard security measures to protect your data.\n'
                'All information is encrypted and stored securely on protected servers.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // Sharing with Third Parties section
              const Text(
                'Sharing with Third Parties',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBulletPoint('Service providers: Analytics partners'),
                  _buildBulletPoint('Legal authorities (when required)'),
                  _buildBulletPoint('Business partners (with your consent)'),
                ],
              ),
              const SizedBox(height: 24),

              // Your Rights and Choices section
              const Text(
                'Your Rights and Choices',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBulletPoint('Access your data'),
                  _buildBulletPoint('Request data deletion'),
                  _buildBulletPoint('Opt-out of communications'),
                  _buildBulletPoint('Update your preferences'),
                  _buildBulletPoint('Export your information'),
                ],
              ),
              const SizedBox(height: 24),

              // How to Contact Us section
              const Text(
                'How to Contact Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Questions about privacy?',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Icon(Icons.email, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Email: privacy@boostify.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.support, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Support: help.boostify.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.location_on, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Address: 123 Tech Street, San Francisco, CA 94005',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 40),
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
