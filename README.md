<h2><b>Assignment 7</b></h2>

<b>Explain what are stateless widgets and stateful widgets, and explain the difference between them.</b>

Stateless widgets are widgets that cannot be changed or modified during the runtime of the app. Since it cannot
be modified these elements are only ever built once since we know that no other variable will modify the contents of the element
hence only ever staying in one state. Stateful widgets are widgets that can change state from user action or other factors. Often this could be
buttons, text based on input and etc. For this to work a it requires a state object that will manage these interactions and
rebuild the state on every action. This means we need to build this type of widget many times.

<br>

<b>Mention the widgets that you have used for this project and its uses.</b>

I used widgets based on the tutorial and what was needed for the app to work. For example, MaterialApp was the root of the app’s structure and defined the theme.
Scaffold creates the structure such as the appbar and sections for the body. AppBar area was used as the title bar. I also used Material and InkWell to provide the card
appearance and clickable functionality. Text, Icon, and SnackBar are used to display text, icons, and user feedback messages.

<br>

<b>What is the use-case for setState()? Explain the variable that can be affected by setState()</b>

The setstate() is used to help change the state of classes that have the statefulwidget property. This will run a rebuild of that said widget and either change
the UI or any other component based off the parameters of the setstate and desired outcome. This is mostly used on widgets that will update based on user input
or some other component that will need it to change its form or display. These widgets will be dynamically updated meaning they will change in runtime.

<br>

<b>Explain the difference between const and final keyword.</b>

Both const and final are used to declare values that don’t change. const values are compile-time constants, meaning their values must be determined before the application runs. final values, however, are set at runtime, allowing them to be 
assigned once but only needing to be defined as the program runs.
While const is best suited for values that remain fixed, final is useful for values that are initialized once based on runtime data.
In some cases, these keywords might be interchangeable, but typically each has specific use cases where it’s most appropriate.

<br>

<b>Explain how you implemented the checklist above step-by-step.</b>

I first created the flutter application based off the tutorial.
```
flutter create loom_and_harvest
```

After that I chose to do it on android studio where I setup the app and followed the tutorial. The flutter came with the basic main functions so for this to work I followed the tutorial with a few differences.

```dart
 backgroundColor: Colors.green[900], // Set AppBar color to dark green
```

Here I changed the color of the appbar to better suit the theme of my loom and harvest app
I also made changes to the buttons to meet the requirements for the colorscheme.

```dart
 final List<ItemHomepage> items = [
    ItemHomepage("View Product List", Icons.view_list, Colors.blue),
    ItemHomepage("Add Product", Icons.add, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];
```

Other than this most of the creation was standard such as moving the classes to the menu.dart and formatting the code within menu.dart so that it would be readable to where each component is such as the scaffolding, grid, and etc.
The steps I followed were to first move the classes to the menu.dart. Afterwards I ensured that the classes were imported to the main.dart at the very top. Once this was all done I simply modified the template from the previous
tutorial to match the theme with the code above. I also removed the unrelated code that displayed the info cards.

<br>

<h2><b>Assignment 8</b></h2>

<br>

<b>What is the purpose of const in Flutter? Explain the advantages of using const in Flutter code. When should we use const, and when should it not be used?</b>

It makes comple time constants that will never needed to be rebuilt unnesecarily. The const keyword creates a static element, this improves performance since it consumes less resources to load an already prepared item. Thus this will only work on widgets that is affected by dynamic data and user interactions. The best time to use const is for widgets that do not update and are built only once while dynamic widgets will not use const.

<br>

<b>Explain and compare the usage of Column and Row in Flutter. Provide example implementations of each layout widget!</b>

Both are used to organize child elements in flutter. The difference between the two is the direction the elements will be formatted in. The row will align them side to side while the column will arrange them top to bottom. These will depend on how each element needs to look on the UI of the application.
 
Example for Column:

```dart
Column(
  children: [Text("Item 1"), Text("Item 2"), Icon(Icons.star)],
);
```

Example for Row:

```dart
Row(
  children: [Text("Item 1"), Icon(Icons.star), Text("Item 2")],
);
```

<br>

<b>List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!</b>

This task used TextFormField for text inputs like name, price, description, stock, and category. There are other flutter input elements such as slider, radio, switch, dropdownbutton, and etc. These elements can offer a wider variety of options for example a slider can help pick a range of values for the price and the dropdownbutton could have been used for the category. These items however are very specific to their input categories and the appiction plan has yet to decide whether to use them or not.

<br>

<b>How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?</b>

To set a theme we have to edit the materialapp class/widget we can set the themedata of the application and basically define the theme such as the key colors and the secondary colors. This will set a consistent color scheme that as long as we call will be implemented in the applciation. I did add a theme. the theme uses dark colors and better matches my website color scheme rather than the default all white background which was a contrast to my earlier design.

<br>

<b>How do you manage navigation in a multi-page Flutter application?</b>

In this app there are two methods for the user to navigate the application either through the drawer navigation or the buttons on the screen. On the backend side we treat the navigation like a stack or another FIFO data structure. We will use navigator.push from the navigator widget whenever we traverse to a new page. The navigation will route based off the designated page often time taken from the name of the widget. Once the route is established its a matter of pushing that entry into the stack. The reason why we use the navigator widget is to help track where the user is going and then adjust the history as they go. Furhtermore, it makes it easy to return to where they came from as we just need to clear the top of the stack for it to work.