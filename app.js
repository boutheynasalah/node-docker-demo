const express = require("express");
const app = express();
 app.get('/',function(req,res){
   res.send("Node app with docker ");
 });
 app.listen(8080);