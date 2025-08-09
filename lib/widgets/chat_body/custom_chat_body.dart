import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomChatBody extends StatelessWidget {
  final String welcomeText;
  final List<Map<String, String>> messages;
  final ScrollController scrollController;
  final TextEditingController textController;
  final Function(String) onTextChange;
  final VoidCallback onSend;
  final bool isListening;
  final bool isTextEmpty;
  final VoidCallback onMicTap;
  final void Function(int) onEditTap;

  const CustomChatBody({
    super.key,
    required this.welcomeText,
    required this.messages,
    required this.scrollController,
    required this.textController,
    required this.onTextChange,
    required this.onSend,
    required this.isListening,
    required this.isTextEmpty,
    required this.onMicTap,
    required this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        // Welcome Text Box
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.all(size.width * 0.04),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.tealAccent),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(welcomeText, style: const TextStyle(fontSize: 14)),
          ),
        ),
        const SizedBox(height: 12),

        // Message List
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final message = messages[index];
              final isUser = message['type'] == 'user';

              return Align(
                alignment: isUser
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 12,
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isUser
                        ? Colors.tealAccent.shade100
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message['text'] ?? '',
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 6),
                      if (isUser)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.copy, size: 18),
                              onPressed: () {
                                Clipboard.setData(
                                  ClipboardData(text: message['text'] ?? ''),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Copied to clipboard"),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.edit, size: 18),
                              onPressed: () => onEditTap(index),
                            ),
                          ],
                        )
                      else
                        IconButton(
                          icon: const Icon(Icons.copy, size: 18),
                          onPressed: () {
                            Clipboard.setData(
                              ClipboardData(text: message['text'] ?? ''),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Copied to clipboard"),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        // Input Area
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 5,
                offset: const Offset(0, -1),
              ),
            ],
          ),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: textController,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 4,
                    onChanged: onTextChange,
                    onSubmitted: (_) => onSend(),
                    decoration: const InputDecoration(
                      hintText: "Type a message here..",
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: isTextEmpty ? onMicTap : onSend,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: isListening ? Colors.red : Colors.teal,
                  child: Icon(
                    isTextEmpty
                        ? (isListening ? Icons.mic_off : Icons.mic)
                        : Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
