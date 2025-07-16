/*Task 8: Multiple Mixins 
Create two mixins Logger and Saver. 
Create a class App that mixes both and calls methods from both mixins. */
mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}
mixin Saver {
  void save(String data) {
    print('Data saved: $data');
  }
}

class App with Logger, Saver {
  String appName;

  App(this.appName);

  void run() {
    log('Running $appName');
    save('App data for $appName');
  }
}

void main() {
  App myApp = App(' My Application');
  myApp.run();
  myApp.log('This is a log message.');
  myApp.save('This is some data to save.');
}
