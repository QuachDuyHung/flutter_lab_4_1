# flutter_lab_4_1

A new Flutter project lab 4-1.

## Getting Started

```dart
void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstView(),
      '/second': (context) => SecondView(),
      '/detail': (context) => DetailView(),
    },
  ));
}
```

![](images/image.jpg)
