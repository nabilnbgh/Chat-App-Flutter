class ChatLog {
  ChatLog({
    required this.messageId,
    required this.text,
    required this.timestamp,
    required this.side,
  });
  int messageId;
  String text;
  String timestamp;
  String side;
}
