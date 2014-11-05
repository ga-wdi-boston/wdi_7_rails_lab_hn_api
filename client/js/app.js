// run local web server - bash command: $ ruby -run -e httpd . -p 4000

var Router = Backbone.Router.extend({
    routes: {
        '': 'home',
        // Syntax here is:
        // 'URLpath': 'functionName'
        'home': 'home'
    },

    home: function() {
        $.ajax({
            url: 'http://localhost:3000/users',
            type: 'GET'
        }).done(function(response) {
            console.table(response);
        });
    }
});

// Router doesn't do anything by iteslf.
// Need to creates new Router instance in order
// to run the functions in the object
var router = new Router();

// Tells Backbone to start tracking history
// like reloading on a route, tracking backwards
// and forwards buttons -- absolutely necessary
// for it to work
Backbone.history.start();
