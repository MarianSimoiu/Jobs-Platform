const mongoose = require('mongoose');
const Schema = mongoose.Schema;

//Create Schema
const OfferSchema = new Schema({
    progLang: {
        type: String,
        required: true
    },
    date: {
        type:Date,
        default: Date.now
    }
    //user
   /* workTime: {
        type: String,
        required: true
    },
    location: {
        type:String,
        required: true
    },
    description:{
        type: String,
        required: true
    }
*/
});

module.exports=Offer=mongoose.model('offer',OfferSchema);