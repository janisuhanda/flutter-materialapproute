# flutter-materialapproute

An application that uses material design.

A convenience widget that wraps a number of widgets that are commonly required for material design applications. It builds upon a WidgetsApp by adding material-design specific functionality, such as AnimatedTheme and GridPaper.

The MaterialApp configures the top-level Navigator to search for routes in the following order:

1. For the / route, the home property, if non-null, is used.

2. Otherwise, the routes table is used, if it has an entry for the route.

3. Otherwise, onGenerateRoute is called, if provided. It should return a non-null value for any valid route not handled by home and routes.

4. Finally if all else fails onUnknownRoute is called.

To work with named routes, use the Navigator.pushNamed() function. This example replicates the functionality from the original recipe, demonstrating how to use named routes using the following steps:

    1. Create two screens.
    2. Define the routes.
    3. Navigate to the second screen using Navigator.pushNamed().
    4. Return to the first screen using Navigator.pop()
