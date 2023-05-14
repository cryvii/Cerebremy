import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        backgroundColor: Color.fromARGB(179, 12, 12, 111),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.all(16.0),
              children: [
                ChatBubble(
                  message: 'Hello, how are you?',
                  isMe: false,
                ),
                ChatBubble(
                  message: 'I\'m good, thanks for asking. How about you?',
                  isMe: true,
                ),
                ChatBubble(
                  message: 'I\'m doing great!',
                  isMe: false,
                ),
              ],
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: ChatInput(),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16.0);
    final bgColor = isMe ? Color.fromARGB(179, 12, 12, 111) : Colors.grey[300];
    final textColor = isMe ? Colors.white : Colors.black;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Align(
        alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: borderRadius,
          ),
          child: Text(
            message,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}

class ChatInput extends StatefulWidget {
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final TextEditingController _textController = TextEditingController();

  void _sendMessage() {
    final message = _textController.text.trim();

    if (message.isNotEmpty) {
      // TODO: Implement sending message to chat
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type your message here',
              ),
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: _sendMessage,
        ),
      ],
    );
  }
}
