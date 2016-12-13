var page = require('webpage').create();
var url = 'http://www.joecolantonio.com/';
page.open(url, function (status) {
console.log(status);
phantom.exit();
});