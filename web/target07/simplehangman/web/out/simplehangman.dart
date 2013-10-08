// Auto-generated from simplehangman.html.
// DO NOT EDIT.

library simplehangman_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';


// Original code


String answer = 'pumpernickel';

List<String> characters = answer.split("");
List<String> hyphens    = toObservable(answer.replaceAll(new RegExp('.'), '-').split(""));
List<String> wrongletters = toObservable(new List());

final __changes = new __observe.Observable();

String __$guessedletter = '';
String get guessedletter {
  if (__observe.observeReads) {
    __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'guessedletter');
  }
  return __$guessedletter;
}
set guessedletter(String value) {
  if (__observe.hasObservers(__changes)) {
    __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'guessedletter',
        __$guessedletter, value);
  }
  __$guessedletter = value;
}
bool __$dead = false;
bool get dead {
  if (__observe.observeReads) {
    __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'dead');
  }
  return __$dead;
}
set dead(bool value) {
  if (__observe.hasObservers(__changes)) {
    __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'dead',
        __$dead, value);
  }
  __$dead = value;
}
bool __$won = false;
bool get won {
  if (__observe.observeReads) {
    __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'won');
  }
  return __$won;
}
set won(bool value) {
  if (__observe.hasObservers(__changes)) {
    __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'won',
        __$won, value);
  }
  __$won = value;
}

void main() {
}

void checkit() {  
  const int maxwrong = 7;
  if (characters.contains(guessedletter)) {  // guess is correct
    revealletters();
    if (!hyphens.contains('-')) {
      won = true;
    }
  } else {                                   // guess is wrong
    wrongletters.add(guessedletter);
    if (wrongletters.length == maxwrong) {
      dead = true;
    }
  }
  guessedletter = '';
}

void revealletters() {
  for (int i = 0; i < characters.length; i++) {
    if (characters[i] == guessedletter) {
      hyphens[i] = guessedletter;
    }
  }
}
// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.webUIRoot;
  final __html0 = new autogenerated.InputElement(), __html1 = new autogenerated.Element.html('<p>\n              <template></template>\n            </p>', treeSanitizer: autogenerated.nullTreeSanitizer), __html2 = new autogenerated.Element.html('<p id="wrong">\n              <template></template>\n            </p>', treeSanitizer: autogenerated.nullTreeSanitizer);
  var __e1, __e10, __e8, __e9;
  var __t = new autogenerated.Template(__root);
  __e1 = __root.nodes[3].nodes[1];
  __t.loop(__e1, () => hyphens, ($list, $index, __t) {
    var character = $list[$index];
    var __binding0 = __t.contentBind(() => character, false);
  __t.addAll([new autogenerated.Text(' '),
      __binding0,
      new autogenerated.Text(' ')]);
  });
  __e8 = __root.nodes[5].nodes[1];
  __t.conditional(__e8, () => !dead && !won, (__t) {
    var __e2, __e3, __e4, __e6, __e7;
    __e2 = __html0.clone(true);
    __t.listen(__e2.onInput, ($event) { guessedletter = __e2.value; });
    __t.listen(__e2.onKeyUp, ($event) { $event = new autogenerated.KeyEvent($event); checkit(); });
    __t.oneWayBind(() => guessedletter, (e) { if (__e2.value != e) __e2.value = e; }, false, false);
    __e4 = __html1.clone(true);
    __e3 = __e4.nodes[1];
    __t.conditional(__e3, () => wrongletters.length != 0, (__t) {
    __t.add(new autogenerated.Text(' Sorry! The word contains no: '));
    });

    __e7 = __html2.clone(true);
    __e6 = __e7.nodes[1];
    __t.loop(__e6, () => wrongletters, ($list, $index, __t) {
      var wrongchar = $list[$index];
      var __binding5 = __t.contentBind(() => wrongchar, false);
    __t.addAll([new autogenerated.Text(' '),
        __binding5,
        new autogenerated.Text(' ')]);
    });
  __t.addAll([new autogenerated.Text('\n            Guess a letter...\n            '),
      __e2,
      new autogenerated.Text('\n            '),
      __e4,
      new autogenerated.Text('\n            '),
      __e7,
      new autogenerated.Text('\n          ')]);
  });

  __e9 = __root.nodes[5].nodes[3];
  __t.conditional(__e9, () => dead, (__t) {
  __t.add(new autogenerated.Text(' You\'re dead! '));
  });

  __e10 = __root.nodes[5].nodes[5];
  __t.conditional(__e10, () => won, (__t) {
  __t.add(new autogenerated.Text(' You Win! '));
  });

  __t.create();
  __t.insert();
}

//# sourceMappingURL=simplehangman.dart.map