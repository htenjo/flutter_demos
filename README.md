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
| Fetaure         | Description                                               |
| --------------- | --------------------------------------------------------- |
| StatelessWidged | Base component without state                              |
| MaterialApp     | Basic Apps widget with default themes and settings        |
| Scafold         | Display a basic App layout with body and AppBar           |
| AppBar          | Basic Bar Widget with app information                     |
| TextStyle       | Allows you to specify text properties (fontSize, ...      |
| TextAlign       | Allows you to set the text orientation (TextAlign.center) |
| double.infinity | MAX double value useful for max size/width                |
| EdgeInsets.all  | Useful for setting borders                                |
| Colors          | Class with static fields with predefined colors           |
| Function        | Type to specify functions as field types                  |


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