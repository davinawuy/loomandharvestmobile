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

To set a theme we have to edit the materialapp class/widget we can set the themedata of the application and basically define the theme such as the key colors and the secondary colors. This will set a consistent color scheme that as long as we call will be implemented in the applciation. I did add a theme, the theme uses dark colors and better matches my website color scheme rather than the default all white background which was a contrast to my earlier design.

<br>

<b>How do you manage navigation in a multi-page Flutter application?</b>

In this app there are two methods for the user to navigate the application either through the drawer navigation or the buttons on the screen. On the backend side we treat the navigation like a stack or another FIFO data structure. We will use navigator.push from the navigator widget whenever we traverse to a new page. The navigation will route based off the designated page often time taken from the name of the widget. Once the route is established its a matter of pushing that entry into the stack. The reason why we use the navigator widget is to help track where the user is going and then adjust the history as they go. Furthermore, it makes it easy to return to where they came from as we just need to clear the top of the stack for it to work.


<br>

<h2><b>Assignment 9</b></h2>

<br>

<b>Explain why we need to create a model to retrieve or send JSON data. Will an error occur if we don't create a model first?</b>

Creating a model in Flutter to handle JSON data ensures that the data exchanged will always be structured. A model provides a way to convert the data to a dart object improving reusability and consistency  Without a model a lack of structure can lead to bugs, difficulty in debugging, and runtime errors due to unexpected data formats. Models are particularly useful for converting JSON or any other format to objects. While in theory no error will exist later down the line there is bound to be issues.
<br>

<b>Explain the function of the http library that you implemented for this task.</b>
The http library in Flutter is used to allow exchanges between the Flutter app and a web API. It allows you to send HTTP requests, such as GET for retrieving JSON data, POST for sending data to a database or creating data objects, and DELETE. The library handles network requests asynchronously, ensuring that the UI remains responsive while waiting for the server's response. Therefore, it needs to use csrf exempt so it may work. For this tutorial for example I used GET to retrieve the JSON data and I used post to send the data to the database of the web app.

<br>

<b>Explain the function of CookieRequest and why it’s necessary to share the CookieRequest instance with all components in the Flutter app.</b>
CookieRequest is a tool for managing sessions to manage authentication in a Flutter app by storing and handling cookies provided by the Django web app. It focuses on session management, allowing login states and allowing all parts of the app to send authenticated requests without re-authenticating the user. Sharing a single instance of CookieRequest across all app components ensures consistency in handling session cookies and provides a secure method to maintain a user session. Therefore, each component in the flutter app can verify whether the user is using a valid session.

<b>Explain the mechanism of data transmission, from input to display in Flutter.</b>
The data transmission process starts with user input through Flutter widgets like TextField or any other input field. The input is validated then sent to Django through a HTTP POST methods and requests. The Django web app processes the input and responds with a JSON payload. This JSON response is parsed into a Flutter object using a method within Flutter. The parsed data is then passed to the screens so users can view the data. The widget can use many methods to do this like listview. The usual requirement based on the app is that the user must first have a valid session and that the data is all valid for the exchange to happen correctly.
<br>

<b>Explain the authentication mechanism from login, register, to logout. Start from inputting account data in Flutter to Django’s completion of the authentication process and display of the menu in Flutter.</b>
The user will put their login details into the flutter app and it will make a post request to the Django web app. Django authenticates the details, and if valid, will give a session cookie and allow the user to enter the app. Flutter stores this session state using CookieRequest and navigates the user to the authenticated part of the app. For registration, user details like username and password are sent from Flutter to Django. From here Django will check the details and if valid will create a new user. Logout involves sending a logout request to Django, which invalidates the session cookie or token. Upon successful logout, Flutter clears the session data and navigates the user back to the login page. This feature ensures secure transitions between authentication states.
<br>

<b>Explain how you implement the checklist above step by step! (not just following the tutorial).</b>

I began by first modfying my django project. I created the authenthication app so that I can make the needed authentication views method to allow the flutter app to grant session tokens and create valid django users. For this I assumed the Flutter app would be making HTTP requests such as POST to allow this to work. In turn I will be sending success messages accordingly and the needed tokens.

Once that side was finished I created the needed adding function in the views.py of the main app. To ensure it worked I based it off the model from my django app and I created in the following code.

```dart
@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':
        try:
            # Parse JSON data from the request body
            data = json.loads(request.body)

            # Create a new Product object
            new_product = Product.objects.create(
                user=request.user,
                name=data["name"],
                price=int(data["price"]),
                description=data["description"],
                stock=int(data["stock"]),
                category=data["category"]
            )

            # Save the new Product
            new_product.save()

            return JsonResponse({"status": "success"}, status=200)
        except KeyError as e:
            # Handle missing fields in the request data
            return JsonResponse({"status": "error", "message": f"Missing field: {str(e)}"}, status=400)
        except ValueError as e:
            # Handle invalid data (e.g., price or stock not convertible to int)
            return JsonResponse({"status": "error", "message": str(e)}, status=400)
    else:
        return JsonResponse({"status": "error", "message": "Invalid request method."}, status=405)
```

This will basically allow the flutter app to async add items into the database. After all this was done I finished up the functions and I ensured routing was done for all module. Then it was a matter of just ensuring that the code worked and the settings.py of the root directory was finished correctly so that the django side was done.

Once I finished all the Django setup I instantly worked on the flutter. I created a login and register dart page in the screen. I had to ensure that they displayed the correct items and were routed properly in the menu and main card page dart files. I connected them to the localhost and routed their functions to be used based off the the urls.py I prepared in the Django web app. Once login and registration was done I just jumped to Logout where it was simply allowing the button to send a logout request to django's views with the following method.

```dart
else if (item.name == "Logout") {
            final response = await request.logout(
              "http://127.0.0.1:8000/auth/logout/",
            );
            String message = response["message"];
            if (context.mounted) {
              if (response['status']) {
                String uname = response["username"];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("$message Goodbye, $uname."),
                ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                  ),
                );
              }
            }
          }
```

After this it was matter of ensuring the add, view, and display products worked. For this part I mostly followed the tutorial by first creating the custom model for Dart using the website. I came up with the following model:
```dart
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    String pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    int stock;
    String category;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.stock,
        required this.category,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        stock: json["stock"],
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "stock": stock,
        "category": category,
    };
}

```

Once the model was complete it was a matter of just creating the add product page to send a post request when the data is all valid. I connected it to the Django app and it works as expected. The list poduct also worked the same I got the JSON data and the I just displayed all the data as cards. For these two sections I followed the tutorial but adapted it to fit my code. I then made the products detail page which shows all the product details. For this part of the task I made a very simple product page and it worked as intended. To ensure the data is shown I used the JSON data and to return back to the original page I used navigator pop. After this was all done I did a test to make sure it all worked and submitted the task.