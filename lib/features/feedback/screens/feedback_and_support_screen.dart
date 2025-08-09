import 'package:bosstify/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../widgets/feedback/content_card.dart';

class FeedbackAndSupportScreen extends StatefulWidget {
  const FeedbackAndSupportScreen({super.key});

  @override
  State<FeedbackAndSupportScreen> createState() =>
      _FeedbackAndSupportScreenState();
}

class _FeedbackAndSupportScreenState extends State<FeedbackAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    // Dummy dimensions for this example
    double width = MediaQuery.of(context).size.width;
    double cardWidth = (width - 40) / 2;
    bool isLargeScreen = width > 600;
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 16);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 16,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Feedback & Support',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'How can we help you today?',
                  style: TextStyle(
                    fontSize: isLargeScreen ? 22 : 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Choose an option below or send us your feedback",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Container(
                  height: 216,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://picsum.photos/600/400', // Online image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // First Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContentCard(
                      cardWidth: MediaQuery.of(context).size.width,
                      icon: Icons.headset_mic,
                      title: "Report a Problem",
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),

                    ContentCard(
                      cardWidth: MediaQuery.of(context).size.width,
                      icon: Icons.chat_bubble,
                      title: "Give Feedback",
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Second Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContentCard(
                      cardWidth: MediaQuery.of(context).size.width,
                      icon: Icons.question_mark,
                      title: "FAQS",
                      onTap: () {},
                    ),
                    const SizedBox(width: 10),

                    ContentCard(
                      cardWidth: MediaQuery.of(context).size.width,
                      icon: Icons.telegram,
                      title: "Contact Support",
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                const Text(
                  'Subject',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Subject',
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00FFD1)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00FFD1),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                const Text(
                  'Describe your issue or feedback',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                TextField(
                  maxLines: 5,
                  decoration: const InputDecoration(
                    hintText: 'Tell us more',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00FFD1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00FFD1),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Attachment row
                Row(
                  children: const [
                    Icon(Icons.attach_file, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      'Attach screenshot or file',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00FFD1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Submit Feedback',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
