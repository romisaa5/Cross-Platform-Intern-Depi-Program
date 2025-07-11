/*Create a function sendMessage that:
Has a required parameter: String message
Has an optional named parameter bool urgent (default: false)
Print "Sending urgent message: ...", or "Sending message: ..." based on the flag.*/
void sendMessage(String message, {bool urgent = false}) {
  if (urgent) {
    print('Sending urgent message: $message');
  } else {
    print('Sending message: $message');
  }
}
void main() {
  sendMessage('Hello, World!', urgent: true);
  sendMessage('Hello, World!');
}