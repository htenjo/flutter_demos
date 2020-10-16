# Flutter practice exercises

This is a repository to do exercises in my flutter leaning path

## Tutorial folders
- [000. Default basic App](000_basic_default_app/basic_default_app/README.md)
- [001. Basic Quiz](001_basic_quiz/README.md)
- [002. Basic stateful widget](002_basic_stateful_widget/README.md)
- [003. App using multiple widgets](003_test1_multi-widget/README.md)
- [004. My Expenses](004_my-expenses/README.md)

## Basic commands
| Command                       | Description                                         |
| ----------------------------- | --------------------------------------------------- |
| `$ open -a Simulator`         | Open the iPhone simulator on iOS                    |
| `$ flutter create <APP_NAME>` | Create a new App folder                             |
| `$ flutter run`               | Install and start the App in the simualor or device |

## Dart features
| Command   | Description                                                        |
| --------- | ------------------------------------------------------------------ |
| @override | A decorator to be sure you are declaring a method in the right way |
| @required | To declare a parameter as a required                               |

## Flutter features
| Fetaure                   | Description                                                              |
| ------------------------- | ------------------------------------------------------------------------ |
| StatelessWidged           | Base component without state                                             |
| MaterialApp               | Basic Apps widget with default themes and settings                       |
| Scafold                   | Display a basic App layout with body and AppBar                          |
| AppBar                    | Basic Bar Widget with app information                                    |
| TextStyle                 | Allows you to specify text properties (fontSize, ...                     |
| TextAlign                 | Allows you to set the text orientation (TextAlign.center)                |
| double.infinity           | MAX double value useful for max size/width                               |
| EdgeInsets.all            | Useful for setting borders                                               |
| Colors                    | Class with static fields with predefined colors                          |
| Function                  | Type to specify functions as field types                                 |
| SingleChildScrollableView | Component to scroll a list of items (SHOULD BE A BODY TO WORK)           |
| ListView                  | Widget with default scroll (Use builder to render just the ones visible) |
| GestureDetector           | Wrapper container to identify gestures and assign actions to them        |
| showModalButtomSheet      | Context panel displayed from the bottom                                  |
| Scafold::AppBar:::Actions | Buttons in the AppBar                                                    |
| IconButton                | Useful widget to be used in the AppBar::Actions                          |
| Icon                      | Just a widget to render an icon                                          |
| Icons                     | Collections of predefined Icons                                          |
| Flexible                  | Kind of container to layout like in CSS                                  |


## Dart hints:
```
//Example of class with named parameters specified
class Person {
    var name;
    var age;
    var lastName;

    Person({int age = 10, String name = 'My name', @required String lastName}) {
    }
}
```

```
//Example of class with syntactic suggar in the contructor
class Person {
    var name;
    var age;
    var lastName;

    Person({this.age = 10, this.name, this.lastName});

    Person.veryOld() ;
}
```

```

```







# TO ORGANIZE:

SizedBox
FittedBox
Padding (Container Specific for Padding)
Expanded (Component simpler than Flexible?)
ListTile (Component to hold info inside ListViews)
Circle Avatar (Nice component to display info inside the ListTile)
SingleChildScrollView 
Switch
MediaQuery.of(context).size
CircularProgressIndicator

---------
import 'package:flutter/services.dart'

WidgetsFlutterBinding.ensureInitialized();
SystemChrome.setPreferedOrientation([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
---------

---------
import 'dart:io'

Platform
---------


with WidgetBindingObservable //To use app lifecycles

ValueKeys(id) //ListItems identifier

GridView (Layout to organize wdgets in matrix way)

InkWell: Like GestureDetector but with feeback

Navigator.of(context) = To go to a different page

ModalRoute.of(context).settings.arguments = To retrieve the information required from the parent page

ClipRRect = Force children to take the form of the rectangle 

BottomNavigationBar = TO include Tabs


…because as we know, there are known knowns; there are things we know we know. We also know there are known unknowns; that is to say we know there are some things we do not know. But there are also unknown unknowns—the ones we don’t know we don’t know.

Donald Rumsfeld
Unknown unknowns are the nemesis of software systems

UnmodifiableListView<Item> get items => UnmodifiableListView(_items);