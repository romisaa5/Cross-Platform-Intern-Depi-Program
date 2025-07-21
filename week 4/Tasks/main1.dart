/*Create a Dart program that defines an enum called TrafficLight with values: Red,
 Yellow, Green. Print a different message based on the current light.*/
enum TrafficLight {
  Red,
  Yellow,
  Green
}

void main() {
  TrafficLight currentLight = TrafficLight.Yellow;

  switch (currentLight) {
    case TrafficLight.Red:
      print("Stop! The light is Red.");
      break;
    case TrafficLight.Yellow:
      print("Get ready! The light is Yellow.");
      break;
    case TrafficLight.Green:
      print("Go! The light is Green.");
      break;
  }
}
