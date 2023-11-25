__Note: I have blatantly stolen this from [catern](https://catern.com/services.html). You can learn more about Spencer Baugh via [github](https://github.com/catern), [twitter](https://twitter.com/zcatern), and [linkedin](https://www.linkedin.com/in/spencer-baugh-09009989).__

# Write libraries instead of services, where possible

A service has constant administration costs which are paid by the service provider. A library instead moves these costs to the users of the library.

For any developer with limited resources, this means a library (where viable) can provide the same functionality to the user, at a lower cost to the developer than a service.

By library, I mean any software that can be [run by the user](https://catern.com/run.html): shared objects, modules, servers, command line utilities, and others. By service, I mean any software which the user can't run on their own; anything which depends (usually through an API) on a service provider for its functionality.

Usually, the centralization of these administration costs is cited as a benefit of services. People say, "services are easy to write because you can upgrade them centrally, so you can avoid slow-to-upgrade users making everyone's lives worse."

But this assumes that slow-to-upgrade users can have negative effects on everyone else. If one user can't have a negative impact on other users, then you don't care if some users are slow to upgrade; they're only hurting themselves.

You can prevent users from negatively impacting other users by not sharing state or resources between users; in other words, [let users run the software](https://catern.com/run.html) themselves, by writing libraries instead of services.

"Write a library", in this sense, can still mean writing a standalone server reached through a network protocol. As long as the user runs the server themselves, you're still saving the administration costs. Both standalone servers and importable code are [equally expressive](https://catern.com/schemas.html), and equally cheap for you to administrate if you're not operating a service yourself.

By avoiding the maintenance and upgrade costs of a service, a library can afford to contain more functionality. That's good for both the developer and the user.