page = require('webpage').create()
page.open('https://vision.test.decisiv.net', function(status) {
  console.log(status)
  phantom.exit();
});