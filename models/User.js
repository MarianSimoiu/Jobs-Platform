const mongoose=require('mongoose');
//const Schema=mongoose.Schema;
const bcrypt=require('bcryptjs');
const jwt=require('jsonwebtoken');
const config=require('config');

const UserSchema=new mongoose.Schema({

   name:{
       type:String,
       required:[true,"Please fill in a name"]
   },
   email:{
       type:String,
       required:[true,"Please fill in an email"],
       unique:true,
       match:[
        /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/,
        "Please fill in a valid email"
       ]
   },
   password:{
       type:String,
       required:[true,"Please fill in a password"],
       minlength:6,
       select:false
   }
  
});

module.exports=User=mongoose.model('user',UserSchema);

