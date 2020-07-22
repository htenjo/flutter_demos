# Flutter practice exercises

This is a repository to do exercises in my flutter leaning path

## Tutorial folders
- [000. Default basic App](000_basic_default_app/basic_default_app/README.md)
- [001. Basic text component (no layout)](001_basic_text_without_layout/README.md)
- [002. Basic stateful widget](002_basic_stateful_widget/README.md)
- [003. App using multiple widgets](003_test1_multi-widget/README.md)
- [004. My Expenses](004_my-expenses/README.md)

## Basic commands
| Command                       | Description                                            |
| ----------------------------- | ------------------------------------------------------ |
| `$ open -a Simulator`         | Open the iPhone simulator on iOS                       |
| `$ flutter create <APP_NAME>` | Create a new App folder                                |
| `$ flutter run`               | Install and start the App in the simualor or device    |

## Dart hints:

```
//Example of class with named parameters
class Person {
    var name;
    var age;
    var lastName;

    Person({int age = 10, String name = 'My name', @required String lastName}) {
    }
}
```