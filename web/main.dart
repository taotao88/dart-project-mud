import 'dart:html';
import 'lib/mud.dart';

int x = 0, y = 0;

void main() {
  querySelector("#enter").onClick.listen(clickedOnEnter);
  updateCoordinates(0, 0);
}

Environment myEnvironment = new Environment("wood");

clickedOnEnter(e){
  InputElement input = querySelector("#commands");
  input.style.borderColor = "#55FF55";
  String output = "";
  switch (input.value) {
    case 'left':
      output = "You are going left now.";
      break;
    case 'right':
      output = "You are going right now.";
      break;
    case 'up':
      output = "You are going up now.";
      break;
    case 'down':
      output = "You are going down now.";
      break;
    default:
      output = "Use left, right, up, down...";
  }
  var outputHTML = "<div>${output}</div>";
  querySelector('#output').appendHtml(outputHTML);

  var interaction = myEnvironment.stumbleUpon();
  outputHTML = "<div>${interaction}</div>";
  querySelector('#output').appendHtml(outputHTML);
}

void updateCoordinates(int rel_x, int rel_y) {
  x += rel_x;
  y += rel_y;

  querySelector("#coordinates").innerHtml = "place: $x, $y";
}
