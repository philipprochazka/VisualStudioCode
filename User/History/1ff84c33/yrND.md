used programming languages: PHP, MySQL, JS, Html, Scss, css
used frameworks for programming languages:
                                        # Php -laravel
                                        # JS - Vue, webpack
                                        # CSS - sass, webpack, bootstrap, fontawesome
------------------------------------------------------------------------------------------------------------------------

# Your backend is handled by PHP, 

and its code is organized in the app/ directory. The Http/ directory within app/ contains your controllers, middleware, and other HTTP-related code. Your application providers, which are responsible for binding services to the application, are located in the Providers/ directory.

# Your frontend is built with Vue.js
 and is located in the resources/js/ directory. The components/ directory contains Vue components, and the views/ directory contains the application's views. Utilities such as bootstrap/ and fontawesome/ are also located within the utilities/ directory.

# The Sass preprocessor is used for styling and wrapping css
 and is located in the resources/scss/ directory. The base/, components/, layouts/, and pages/ directories within scss/ are used to organize your styles. The utilities/ directory contains additional utility files, such as mixins and variables, for your Sass code.

# Webpack is used to bundle your JavaScript and Sass code for use in the application.
 The Webpack configuration is located in webpack.mix.js.

Bootstrap is a CSS framework used to style the application, and its assets are located in the resources/ directory.

Fontawesome is a set of icons and their assets are also located in the resources/ directory.

Tinyslider is a module used to implement a slider for your application. Its assets are located in the resources/ directory.

--------------------------------------------------------------------------------------------------------------------------
#  purposes of router << JS or PHP

The decision of whether to use JavaScript or PHP for routing depends on the specific requirements and constraints of your project.

In general, if you are building a single-page application (SPA) that heavily relies on client-side rendering and AJAX requests, using a JavaScript router such as Vue Router or React Router may be a better choice. This approach allows you to implement client-side routing and handle navigation without needing to make a round trip to the server for each page change. This can result in a faster and more seamless user experience.

On the other hand, if you are building a traditional multi-page application (MPA) or your application has more complex server-side logic, using a PHP router such as Laravel's routing system may be more appropriate. This approach allows you to handle all requests on the server side and can provide more control over the routing logic and request handling.

Ultimately, the choice of router depends on the specific requirements and constraints of your project, as well as your personal preference and experience with the available tools and technologies.
--------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------

            my-project
                |
             +--+--+
             |     |
             app  bootstrap
             |     |
        +----+----+----+
        |    |         |
      Http Providers  config  ...
     +----+            |
     |    |         database
Controllers Middleware  |
      ...              |
                      ...
                +------+-------+
                |              |
              public      resources
                |              |
        +-------+-------+      |
        |       |       |      |
       css     js     img    language
                              |
                        +-----+-----+
                        |           |
                     vendor        ...
                        |
                +-------+--------+
                |                |
             bootstrap      fontawesome
                |
           +----+----+
           |         |
         scss       js
           |         |
    +------+-------+------+
    |      |              |
  base components     utilities  ...
    |      |
  layouts pages
