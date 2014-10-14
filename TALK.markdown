* What are services?

### Value ###

Value services are pretty simple - they hold a simple static value and that's it.
Useful for configuration, magic numbers, anything that's data and doesn't belong hardcoded in your views, but isn't dynamic or anything.
There's another similar service type called "constant" - we'll get to that later.

Example: version.js@basic

### Factories ###

Value is super simple, but obviously we need more.
Factories are what you'll be using almost all the time.
Give a function, factory returns result of that function.

Structure services however you want!
We're using a simple closure here to store data.
All services are **singletons**.

Example: recipebook.js@basic

### More factories ###

Common use case: "class" or model that will have many instances.
Use the factory to provide the class as a singleton, instantiate with `new`.
We can do this the standard JS way, with a function and stuff on the prototype.

Example: recipe.js@basic

### Full classes ###

CoffeeScript offers us a class syntax.
It's very easy to use these in Angular too.

Example: ingredient.coffee@basic

### Using services ###

Discuss DI, if needed
Walk through controllers and demo app.

Example: controllers/main.coffee@basic

### Service-services ###

What a terrible name.
There's not a lot of cause to use these - they're slightly different than factories but not all that advantageous.
For the sake of argument, reimplement RecipeBook as a service.

Example: recipebook.js@service-service

### Providers ###

This is the grandaddy of all the service types.
The other services just call this under the hood.
Factories are a little simpler and work 90% of the time, but if you need full control this is it.

Example: recipebook.js@provider

### Using provider for config ###

Most common use case: wanting to accept configuration options.
Talk about config/runtime split.
Let's add a silly option to RecipeBook.
Show how it's used in Ingredient.
And how we set it in the app - notice that we use the -Provider suffix here.

Example: recipebook.js@provider-config
Example: ingredient.coffee@provider-config
Example: app.coffee@provider-config

### Constant ###

Weird edge case.
Basically the same as `value`, but is available during the configuration stage as well.
The value of most services *is not* available during config.

Example: takeliberties.js@constant
