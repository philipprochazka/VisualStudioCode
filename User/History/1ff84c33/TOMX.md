used programming languages: PHP, MySQL, JS, Html, Scss, css
used frameworks for programming languages:
                                        # Php -laravel
                                        # JS - Vue, webpack
                                        # CSS - sass, webpack, bootstrap, fontawesome
------------------------------------------------------------------------------------------------------------------------

Your backend is handled by PHP, and its code is organized in the app/ directory. The Http/ directory within app/ contains your controllers, middleware, and other HTTP-related code. Your application providers, which are responsible for binding services to the application, are located in the Providers/ directory.

Your frontend is built with Vue.js and is located in the resources/js/ directory. The components/ directory contains Vue components, and the views/ directory contains the application's views. Utilities such as bootstrap/ and fontawesome/ are also located within the utilities/ directory.

The Sass preprocessor is used for styling and is located in the resources/scss/ directory. The base/, components/, layouts/, and pages/ directories within scss/ are used to organize your styles. The utilities/ directory contains additional utility files, such as mixins and variables, for your Sass code.

Webpack is used to bundle your JavaScript and Sass code for use in the application. The Webpack configuration is located in webpack.mix.js.

Bootstrap is a CSS framework used to style the application, and its assets are located in the resources/ directory.

Fontawesome is a set of icons and their assets are also located in the resources/ directory.

Tinyslider is a module used to implement a slider for your application. Its assets are located in the resources/ directory.

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
