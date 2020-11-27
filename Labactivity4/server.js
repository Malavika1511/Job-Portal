var express = require("express");
var app = express();
var fs = require("fs");
app.get('/listUsers', function (req, res) {
   fs.readFile("E:"+"/"+"REST"+"/"+"candidates.json", 'utf8', function (err, data) {
      console.log( data );
      res.end( data );
   });
})
var user = {
   "candidate4":{
      "name": "Lakshmi",
      "phone": "9129347301",
      "email": "lak@gmail.com",
      "qualification": "BTech IT"
    }
}
app.post('/addUser', function (req, res) {
   // First read existing users.
   fs.readFile("E:"+"/"+"REST"+"/"+"candidates.json", 'utf8', function (err, data) {
      data = JSON.parse( data );
      data["candidate4"] = user["candidate4"];
      console.log( data );
      res.end( JSON.stringify(data));
   });
})
var id = 2;
app.delete('/deleteUser', function (req, res) {
   // First read existing users.
   fs.readFile("E:"+"/"+"REST"+"/"+"candidates.json", 'utf8', function (err, data) {
      data = JSON.parse( data );
      delete data["candidates" + 2];
       
      console.log( data );
      res.end( JSON.stringify(data));
   });
})
app.listen(3000, () => {
 console.log("Server running on port 3000");
});
 
