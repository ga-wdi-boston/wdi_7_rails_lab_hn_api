$.ajax({
    // URL is where our requests should hit
    url: 'http://localhost:3000/users',
    type: 'GET'
}).done(function(response) {
    console.table(response);
});
